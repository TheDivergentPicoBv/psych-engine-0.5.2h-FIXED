function onCountdownStarted()
	for i= 0, 3 do
		setPropertyFromGroup('playerStrums', i, 'texture', 'Corruption_NOTE_assets')
    end
    for b = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', b, 'mustPress') then
			setPropertyFromGroup('playerStrums', b, 'texture', 'Corruption_NOTE_assets')
		end
	end
end

function onUpdatePost(elapsed)
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Corruption_NOTE_assets');
		end
	end
end