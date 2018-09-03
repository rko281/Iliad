"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILFormulaTest
	instanceVariableNames: 'formula1 formula2 field1 mock1 mock2 formula3 formula4'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormulaTest guid: (GUID fromString: '{5080ab03-1789-4faf-b270-698583adc760}')!
ILFormulaTest comment: ''!
!ILFormulaTest categoriesForClass!Iliad-Tests-Formula! !
!ILFormulaTest methodsFor!

setUp	mock1 := ILMockModel new.	mock2 := ILMockModel new.	mock2 foo: 'foo'.	formula1 := ILFormula on: mock1.	formula2 := ILFormula on: mock1.	formula3 := ILFormula on: mock1.	formula4 := ILFormula on: mock2.	field1 := ILField new!

testAddField	| f1 f2 |	f1 := ILFormula new.	f2 := ILField new.	f1 addField: f2.	self deny: (f1 containers isEmpty)!

testAddFormula	| f1 f2 |	f1 := ILFormula new.	f2 := ILFormula new.	f1 addFormula: f2.	self assert: (f1 formulas includes: f2)!

testCommit	| time |	time := DateAndTime now.	formula1 inputOn: #foo.	formula1 proxy foo: 'foo'.	formula2 inputOn: #bar.	formula2 proxy bar: 'bar'.	formula2 addFormula: formula1.	formula3 checkboxOn: #checkbox.	formula3 proxy checkbox: true.	formula3 dateInputOn: #date.	formula3 proxy date: time.	formula3 numberInputOn: #number.	formula3 proxy number: 3.	formula3 passwordOn: #password.	formula3 proxy password: 'pass'.	formula3 repeatedPasswordOn: #repeatedPassword.	formula3 proxy repeatedPassword: 'pass'.	formula3 addFormula: formula2.	"Before commit"	self deny: mock1 foo = 'foo'.	self deny: mock1 bar = 'bar'.	self assert: mock1 checkbox isNil.	self deny: mock1 date = time.	self deny: mock1 number = 3.	self deny: mock1 password = 'pass'.	formula3 commit.	"After commit "	self assert: mock1 foo equals: 'foo'.	self assert: mock1 bar equals: 'bar'.	self assert: mock1 checkbox.	self assert: mock1 date equals: time.	self assert: mock1 number equals: 3.	self assert: mock1 password equals: 'pass'.	self assert: mock1 password equals: mock1 repeatedPassword!

testisEmpty	self assert: (formula1 isEmpty).	formula1 addField: field1.	self deny: (formula1 isEmpty)!

testisMultipart	self deny: (formula1 isMultipart).	formula1 addField: ILFileInputField new.	self assert: (formula1 isMultipart).!

testisSubFormula	self deny: (formula1 isSubFormula).	self deny: (formula2 formulas includes: formula1).	self deny: (formula4 formulas includes: formula2).	formula2 addFormula: formula1.	self assert: (formula1 isSubFormula).	self assert: (formula2 formulas includes: formula1).	self deny: (formula4 formulas includes: formula2).	formula4 addFormula: formula2.	self assert: (formula1 isSubFormula).	self assert: (formula2 isSubFormula).	self assert: (formula2 formulas includes: formula1).	self assert: (formula4 formulas includes: formula2)!

testisValid	self assert: (formula1 isValid).	formula1 errors add: 'Error'.	self deny: (formula1 isValid)!

testSetModel	self deny: formula1 proxy foo = 'foo'.	formula1 setModel: mock2.	self assert: formula1 proxy foo equals: 'foo'.	formula1 setModel: mock1.	self deny: formula1 proxy foo = 'foo'! !
!ILFormulaTest categoriesFor: #setUp!public!running! !
!ILFormulaTest categoriesFor: #testAddField!public!testing! !
!ILFormulaTest categoriesFor: #testAddFormula!public!testing! !
!ILFormulaTest categoriesFor: #testCommit!public!testing! !
!ILFormulaTest categoriesFor: #testisEmpty!public!testing! !
!ILFormulaTest categoriesFor: #testisMultipart!public!testing! !
!ILFormulaTest categoriesFor: #testisSubFormula!public!testing! !
!ILFormulaTest categoriesFor: #testisValid!public!testing! !
!ILFormulaTest categoriesFor: #testSetModel!public!testing! !

