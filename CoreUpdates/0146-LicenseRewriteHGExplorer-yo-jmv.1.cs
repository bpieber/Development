'From Cuis 1.0 of 6 March 2009 [latest update: #5989] on 23 March 2009 at 7:43:13 pm'!
	| window listMorph |
	rootObject := anObject.
	window := (OldSystemWindow labelled: (rootObject printStringLimitedTo: 64)) model: self.
	window addMorph: (listMorph := OldSimpleHierarchicalListMorph 
						on: self
						list: #getList
						selected: #getCurrentSelection
						changeSelected: #noteNewSelection:
						menu: #genericMenu:
						keystroke: #explorerKey:from:)
		frame: (0 @ 0 corner: 1 @ 0.8).
	window 
		addMorph: ((OldPluggableTextMorph 
				on: self
				text: #trash
				accept: #trash:
				readSelection: #contentsSelection
				menu: #codePaneMenu:shifted:) askBeforeDiscardingEdits: false)
		frame: (0 @ 0.8 corner: 1 @ 1).
	listMorph autoDeselect: false.
	^window! !