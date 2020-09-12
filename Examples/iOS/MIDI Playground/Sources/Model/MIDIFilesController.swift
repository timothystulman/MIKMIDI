//
//  MIDIFilesController.swift
//  MIDI Playground
//
//  Created by Andrew Madsen on 1/9/18.
//  Copyright © 2018 Mixed In Key. All rights reserved.
//

import Foundation
import MIKMIDI

class MIDIFilesController {
	
	init() {
		scanForFiles()
	}
	
	// MARK: Public
	
	func createNewFile(named: String) throws -> MIDIFile {
		var url = documentsURL.appendingPathComponent(named)
		if url.pathExtension != "mid" && url.pathExtension != "midi" {
			url.appendPathExtension("mid")
		}
		
		let sequence = MIKMIDISequence()
		try sequence.write(to: url)
		return MIDIFile(fileURL: url, midiSequence: sequence)
	}
	
	// MARK: Private
	
	private func scanForFiles() {
		let docsFolderURL = documentsURL
		let fm = FileManager.default
		guard let enumerator = fm.enumerator(atPath: docsFolderURL.path) else { return }
		var midiFileURLs = [URL]()
		for filename in enumerator {
			guard let filename = filename as? String else { continue }
			let url = docsFolderURL.appendingPathComponent(filename)
			if url.pathExtension == "mid" || url.pathExtension == "midi" {
				midiFileURLs.append(url)
			}
		}
		files = midiFileURLs.compactMap { MIDIFile(fileURL: $0) }
	}
	
	private var documentsURL: URL {
		let fm = FileManager.default
		return fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
	}
	
	// MARK: Properties
	
	private(set) var files = [MIDIFile]()
	
}