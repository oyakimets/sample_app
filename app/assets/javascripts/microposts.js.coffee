updateCountdown = ->
	remaining = 140 - jQuery("#micropost_content").val().length

	jQuery(".countdown").text remaining + " characters remaining"
	jQuery(".countdown").css('color', if remaining < 0 then 'red' else '$greyLight')

jQuery ->
	updateCountdown()
	$("#micropost_content").change updateCountdown
	$("#micropost_content").keyup updateCountdown