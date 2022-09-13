#!/usr/bin/env bash

sayHello="Hello"


function welcome_msg {
	local myName=$(USER)

	echo $sayHello	$myName
}
welcome_msg && echo How are you today?

grep "[aeiou]sh"  "$HOME"/.bashrc
