"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILHtml5ApplicationExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHtml5ApplicationExample guid: (GUID fromString: '{82009087-412b-4277-9394-ff68836daafb}')!
ILHtml5ApplicationExample comment: ''!
!ILHtml5ApplicationExample categoriesForClass!Iliad-More-Examples! !
!ILHtml5ApplicationExample methodsFor!

audio	^[:e |		e audio src: 'http://w3c.html5.free.fr/news/media/cod4_victoire_usa.ogg';			autoplay: true;			loop: true;			controls: true;			text: '&lt; audio&gt; non support&eacute; !!'.		e br.		e audio 			src:  'http://w3c.html5.free.fr/news/media/interessant.wav';			controls: true]!

canvas	^[:e |	    e canvas		id: 'tutoriel';		width: '700';		height: '350';		text: '&lt;canvas&gt; non support&eacute; !!'.	    e script		type: 'text/javascript';		contents:  'var context = document.getElementById("tutoriel").getContext("2d");			var lastX = context.canvas.width * Math.random();			var lastY = context.canvas.height * Math.random();			var hue = 0;			function line() {			context.save();			context.translate(context.canvas.width/2, context.canvas.height/2);			context.scale(0.9, 0.9);			context.translate(-context.canvas.width/2, -context.canvas.height/2);			context.beginPath();			context.lineWidth = 5 + Math.random() * 10;			context.moveTo(lastX, lastY);			lastX = context.canvas.width * Math.random();			lastY = context.canvas.height * Math.random();			context.bezierCurveTo(context.canvas.width * Math.random(),				context.canvas.height * Math.random(),				context.canvas.width * Math.random(),				context.canvas.height * Math.random(),				lastX, lastY);			hue = hue + 10 * Math.random();			context.strokeStyle = "hsl(" + hue + ", 50%, 50%)";			context.shadowColor = "white";			context.shadowBlur = 10;			context.stroke();			context.restore();				}			setInterval(line, 50);			function blank() {			context.fillStyle = "rgba(0,0,0,0.1)";			context.fillRect(0, 0, context.canvas.width, context.canvas.height);				}			setInterval(blank, 40);']!

examples	^[:e |		e 			h3: 'Canvas example'.		e build: self canvas.		e 			h3: 'Geolocation example'.		e build: self geolocation.		e 			h3: 'Audio example'.		e build: self audio.		e h3: 'Video example'.		e build: self video]!

geolocation	^[:e |		e div id: 'myPosition'.		e script 			type: 'text/javascript';			contents: 'function getPosition(position) {				coords  = "Latitude : "+position.coords.latitude+"<br/>";				coords += "Longitude: "+position.coords.longitude+"<br/>";				coords += "Altitude : "+position.coords.altitude+"<br/>";				document.getElementById("myPosition").innerHTML = coords;				}				if(navigator.geolocation)					navigator.geolocation.getCurrentPosition(getPosition);				else					document.getElementById("myPosition").innerHTML =					"geolocation non support&eacute; !!";']!

index	^self examples!

video	^[:e |	    	e video src: 'http://www.w3schools.com/html5/movie.ogg';			poster: 'http://www.w3schools.com/img/5.gif';			autoplay: true;			loop: true;			controls: true.	    	e br]! !
!ILHtml5ApplicationExample categoriesFor: #audio!building!public! !
!ILHtml5ApplicationExample categoriesFor: #canvas!building!public! !
!ILHtml5ApplicationExample categoriesFor: #examples!controllers!public! !
!ILHtml5ApplicationExample categoriesFor: #geolocation!building!public! !
!ILHtml5ApplicationExample categoriesFor: #index!controllers!public! !
!ILHtml5ApplicationExample categoriesFor: #video!building!public! !

!ILHtml5ApplicationExample class methodsFor!

path	^'examples/html5'! !
!ILHtml5ApplicationExample class categoriesFor: #path!accessing!public! !

