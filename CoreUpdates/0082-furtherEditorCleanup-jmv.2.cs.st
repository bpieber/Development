'From Squeak3.7 of ''4 September 2004'' [latest update: #5989] on 6 November 2008 at 9:24:44 am'!
	^NewParagraph! !
	container ifNil: [^NewParagraph].
	^container paragraphClass! !
	"Answer the menu to be presented when the yellow button is pressed while the shift key is down"

	^ SelectionMenu fromArray: {
		{'set font... (k)' translated.					#offerFontMenu}.
		{'set style... (K)' translated.					#changeStyle}.
		{'set alignment...' translated.				#chooseAlignment}.
		#-.
		{'explain' translated.						#explain}.
		{'pretty print' translated.					#prettyPrint}.
		{'pretty print with color' translated.			#prettyPrintWithColor}.
		{'file it in (G)' translated.					#fileItIn}.
		{'spawn (o)' translated.						#spawn}.
		#-.
		{'browse it (b)' translated.					#browseIt}.
		{'senders of it (n)' translated.				#sendersOfIt}.
		{'implementors of it (m)' translated.		#implementorsOfIt}.
		{'references to it (N)' translated.			#referencesToIt}.
		#-.
		{'selectors containing it (W)' translated.	#methodNamesContainingIt}.
		{'method strings with it (E)' translated.	#methodStringsContainingit}.
		{'method source with it' translated.		#methodSourceContainingIt}.
		{'class names containing it' translated.	#classNamesContainingIt}.
		{'class comments with it' translated.		#classCommentsContainingIt}.
		{'change sets with it' translated.			#browseChangeSetsWithSelector}.
		#-.
		{'save contents to file...' translated.		#saveContentsInFile}.
		#-.
		{'special menu...' translated.				#presentSpecialMenu}.
		{'more...' translated.							#yellowButtonActivity}.
	}! !