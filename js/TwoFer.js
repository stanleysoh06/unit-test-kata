function TwoFer() { }

TwoFer.prototype.say = function(input) {
	if(input != null)
		return "One for " + input + ", one for me.";

	return "One for you, one for me.";
}

module.exports = TwoFer;