aspects
attributsList
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^attributsList isNil
		ifTrue: [attributsList := SelectionInList new]
		ifFalse: [attributsList]