--SelectSelectionSetbyMember.mcr   by Dave De Sousa (aka 10DSpace)
--this script goes through all selections sets in scene and 
--finds the selection set containing the currently selected object and 
--selects that selection set.  

macroScript SelectSelectionSetbyMember
	category:"DragAndDrop"
	toolTip:""


(--Begin Macro
if selection.count == 1 do(
	CurSel = $ --store the currently selected object for later comparison
	
	
		for s = 1 to selectionsets.count do (--begin for s loop
	
		sName = getNamedSelSetName s
			
		nItems = getNamedSelSetItemCount s
	
				for i = 1 to nItems do(-- begin for i loop
					
				o = getNamedSelSetItem s i
				
					if o.name == CurSel.name do( --begin if name match do loop
					
					print (o.name + " is in " + sName)			
					select selectionsets[sName]
					)--end if name match do loop			
				
				)--end for i loop
	
		)--end for s loop
	
)
if selection.count == 0 do(
	selectMore $COM
)



)--End Macro