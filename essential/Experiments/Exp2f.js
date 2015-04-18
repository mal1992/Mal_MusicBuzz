


msg = new Array("I am new to computing and have never learned typing",
"God is Everywhere, so start typing",
"Why is Web development so interesting",
"This is a easy sentence to type out")
word = 10
function medium() {
    msg = new Array("I am new to computing and have never learned typing",
    "God is Everywhere, so start typing",
    "Why is Web development so interesting",
    "This is a easy sentence to type out")
    word = 10
}
function expert() {
    msg = new Array("How quickly daft jumping zebras vex.",
"I beleive in you that you can finish typing this sentence before, say 10 seconds",
"I believe you're a good web developer so you must know how to type as well ",
"We can go canoeing on the lake, so finish typing as fast as you can ")
    word = 15
}
function beginner() {
    msg = new Array("Computers are the medium of the future.",
    "this is an excellent exerise , don't you think so ?",
    "Who do you think will win the super bowl ?",
    "Do you think quora is a good place to hangout than facebook ? ")
    word = 7
}
function beginIt() {
    randNum = Math.floor((Math.random() * 10)) % 4
    msgType = msg[randNum]
    day = new Date();
    startType = day.getTime();
    // to randomly display a message Phrase
    document.theForm.given.value = msgType
    document.theForm.typed.focus();
    document.theForm.typed.select();
}




function Checktyped() {
    //like i had mentioned in documentation this is what happens to find the time
    dayTwo = new Date();
    endType = dayTwo.getTime();
    totalTime = ((endType - startType) / 1000)
    spd = Math.round((word/totalTime) * 60)
    if (document.theForm.typed.value == document.theForm.given.value) {
        alert("\nYou have typed " + word + " words from the senetnce in "
        + totalTime + " seconds, a speed of about " + spd + " words per minute!Wooohooo :D")
    }
    else {
        alert("There's a error in your typed content, but good job :D, you have typed at a speed of " + spd + " words per minute.You should be proud ! Why dont you give another go")
    }
}

function copy() {
    alert("Dont Try to copy :P ! ");
    document.theForm.typed.focus();
}

