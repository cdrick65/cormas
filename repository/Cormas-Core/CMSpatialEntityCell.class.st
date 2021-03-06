Class {
	#name : #CMSpatialEntityCell,
	#superclass : #CMSpatialEntityElement,
	#instVars : [
		'state',
		'bufferState'
	],
	#category : 'Cormas-Core-Entities'
}

{ #category : #testing }
CMSpatialEntityCell class >> isCellularAutomatonClass [
	^ true
]

{ #category : #accessing }
CMSpatialEntityCell class >> labelName [
	" Answer a <String> to be displayed as receiver's label "

	^ 'Cell'
]

{ #category : #accessing }
CMSpatialEntityCell >> bufferState [
	^ bufferState
]

{ #category : #accessing }
CMSpatialEntityCell >> bufferState: aValue [
	bufferState := aValue
]

{ #category : #'+ initialize - release' }
CMSpatialEntityCell >> initWith: aValue [
	"Purpose: assigns a given value to the 'state' attribute"
	
	self state: aValue
]

{ #category : #control }
CMSpatialEntityCell >> newState [
	"Purpose: the specific transition function of the automaton should be written here
Example: self bufferState: (test ifTrue: [value1] ifFalse: [value2])"

	self subclassResponsibility
]

{ #category : #accessing }
CMSpatialEntityCell >> state [
	^ state
]

{ #category : #accessing }
CMSpatialEntityCell >> state: aValue [
	
	state = aValue ifTrue: [^nil].
	state := aValue.
	self changed
]

{ #category : #control }
CMSpatialEntityCell >> updateState [
	"Purpose: updates 'state' attribute with the value stored in 'bufferState' attribute"

	self state ~= self bufferState
		ifTrue: [ self state: self bufferState ]
]
