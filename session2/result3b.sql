SELECT p.pid FROM  Person p, Acts a WHERE a.pid = p.pid
	AND EXISTS (
		SELECT * FROM Movie m -- the movies exists and a plays in it
		WHERE m.mid = a.mid
		AND m.name = 'Back to the Future'
	)
);

-- Shunting rule gebruikt 1x