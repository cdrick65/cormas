tool states
initializeMovingFigureTool
	"This method was automatically generated by the HotDraw ToolStateMachineEditor.
	To edit this method, evaluate the comment below"
	"| states transitions stateTable |
	states := ((OrderedCollection new) add: (ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Moving Figure Tool'; instVarAt: 3 put: (Text string: '[:tool :event | 
tool valueAt: #class put: MovingFigure.
tool cursor: Cursor origin]' runs: (RunArray runs: #(84) values: #(nil))); instVarAt: 4 put: (Point x: 202 y: 60); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Create Origin/Corner Figure'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Point x: 182 y: 172); instVarAt: 5 put: false; instVarAt: 6 put: true; yourself); yourself).
	stateTable := Dictionary new.
	states do: [:each | stateTable at: each name put: each].

	transitions := OrderedCollection new.
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Moving Figure Tool'); to: (stateTable at: 'Create Origin/Corner Figure'); type: (TransitionType basicNew instVarAt: 1 put: #redButtonPress; yourself); points: ((OrderedCollection new) add: (Point x: 261 y: 91); add: (Point x: 264 y: 172); yourself); yourself).
	ToolStateMachineEditor openWithStates: states connections: transitions"
	
	Tool states
		at: 'Moving Figure Tool'
		put:
			(ToolState
				name: 'Moving Figure Tool'
				command:
					[:tool :event | 
					tool valueAt: #class put: MovingFigure.
					tool cursor: Cursor origin]).
	(Tool stateFor: 'Moving Figure Tool')
		redButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Create Origin/Corner Figure');
				yourself)