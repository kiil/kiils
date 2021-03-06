---
title: Omregner til ingredienser
description: "Simpel omregner"
summary: "Simpel omregner"
date: 2019-08-28
draft: true

# show_reading_time: true

# toc: true
# katex: true



skribenter:
  - lennart-kiil

keywords:
  - widgets
  - javascript

emner:
  - widgets

tools:
  - javascript

cases:
  - GastroFun


kunder:
  - Per Asmussen

cm:
  - nlr

# thumbnail: ""
---


Hovedsageligt kopieret fra: https://codepen.io/jacobbanner/pen/oxeoqp

<div class="omregner-wrapper">
<div class="converter-wrapper">
  <h3>Omregner til ingredienser</h3>

  <form name="property_form">
    <span>
      <select class="select-property" name="the_menu" size=1 onChange="UpdateUnitMenu(this, document.form_A.unit_menu); UpdateUnitMenu(this, document.form_B.unit_menu)">
      </select>
    </span>
  </form>

  <div class="converter-side-a">
    <form name="form_A" onSubmit="return false">
      <input type="text" class="numbersonly" name="unit_input" maxlength="20" value="0" onKeyUp="CalculateUnit(document.form_A, document.form_B)">
      <span>
        <select name="unit_menu" onChange="CalculateUnit(document.form_B, document.form_A)">
        </select>
      </span>
    </form>
  </div> <!-- /converter-side-a -->

 <div class="converter-equals">
   <p>=</p>
 </div> <!-- /converter-side-a -->

  <div class="converter-side-b">
    <form name="form_B" onSubmit="return false">
      <input type="text" class="numbersonly" name="unit_input" maxlength="20" value="0" onkeyup="CalculateUnit(document.form_B, document.form_A)">
      <span>
        <select name="unit_menu" onChange="CalculateUnit(document.form_A, document.form_B)">
        </select>
      </span>
    </form>
  </div> <!-- /converter-side-b -->
</div><!-- /converter-wrapper -->
</div><!-- /omregner-wrapper -->

<style>

.omregner-wrapper {
  margin: 2rem;
}

.omregner-wrapper::after {
    display: block;
    content: "";
    clear: both;
  }


.converter-wrapper {
  margin: 0 auto;
  width: 100%;
  max-width: 600px;
  text-align: center;
  padding: 10px;
  box-sizing: border-box;
}

.converter-wrapper input {
  font-size: 1em;
  width: 100%;
  text-align: center;
  margin-top: 10px;
  height: 40px;
  box-sizing: border-box;
}

.converter-wrapper span {
  position: relative;
  display: inline-block;
  vertical-align: middle;
  width: 100%;
}

.converter-wrapper span select {
  background-color: #263648;
  color: #fff;
  font-size: inherit;
  padding: 10px;
  width: 100%;
  border: 0;
  margin: 0;
  border-radius: 0px;
  text-indent: 0.01px;
  text-overflow: '';
  -webkit-appearance: none;
}

.converter-wrapper span::before,
.converter-wrapper span::after {
  content: "";
  position: absolute;
  pointer-events: none;
}

.converter-wrapper span::after {
  content: "\25BC";
  height: 1em;
  font-size: .625em;
  line-height: 1;
  right: 1.5em;
  top: 50%;
  margin-top: -.5em;
  color: white;
}

.converter-wrapper span::before {
  width: 2.5em;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 0;
  background-color: dimgray;

}

.converter-side-a,
.converter-side-b {
  float: left;
  margin-top: 10px;
  box-sizing: border-box;
  width: 45%;
}

.converter-equals {
  float: left;
  box-sizing: border-box;
  width: 10%;
  font-size: 3rem;
  text-align: center;
}

.converter-equals p {
  line-height: 0.3;
}

.converter-side-a {
  padding-right: 10px;
}

.converter-side-b {
  padding-left: 10px;
}
</style>

<script>
//
// --- JAVASCRIPT UNIT CONVERTER

// If you study this file, you'll see that all the important data (namely, unit names and conversion factors) are explicitly defined as JavaScript arrays under the "Global Variable & Data Definitions" heading (which should be right under these comments).

// This is done, because: a) I figured it's the fastest way to do it, and b) it keeps everything in one file, making local storage and usage a snap.

// If you wanna mess with these array definitions, keep in mind the following (better study the definitions first before you read this; otherwise skip it altogether):

// 1) The unit[i][j] and factor[i][j] arrays should have the same j-length and their elements should correspond to each other in the j dimension; i.e. unit[0][2] should define the name and factor[0][2] the conversion factor of the SAME unit.  Duh!...

// 2) In every property (i.e. the i-dimension of the unit and factor arrays) there should be defined a 'primary' or 'base' unit, i.e. one with a conversion factor of 1.  The definitions of the other (secondary) units should use this formula:

// 1 [Secondary unit] = [Secondary unit conversion factor] [Primary Unit]
//                                   ^
//  This goes in the factor array ___|
//
//  e.g.: 1 ft = 0.3048 m

// ====================================
//  Global Variable & Data Definitions
// ====================================
var property = new Array();
var unit = new Array();
var factor = new Array();



property[0] = "Havregryn";
unit[0] = new Array("spsk", "tsk", "ml", "dl", "gram");
factor[0] = new Array(1, 0.333333333333333333, 0.06666666666666666666, 6.6666666666666666, 0.2);


property[1] = "Hvedemel";
unit[1] = new Array("spsk", "tsk", "ml", "dl", "gram");
factor[1] = new Array(1, 0.333333333333333333, 0.06666666666666666666, 6.6666666666666666, 0.1111111111111111111111);

property[2] = "Kartoffelmel";
unit[2] = new Array("spsk", "tsk", "ml", "dl", "gram");
factor[2] = new Array(1, 0.333333333333333333, 0.06666666666666666666, 6.6666666666666666, 0.08333333333333333333);












// ===========
//  Functions
// ===========

function UpdateUnitMenu(propMenu, unitMenu) {
  // Updates the units displayed in the unitMenu according to the selection of property in the propMenu.
  var i;
  i = propMenu.selectedIndex;
  FillMenuWithArray(unitMenu, unit[i]);
}

function FillMenuWithArray(myMenu, myArray) {
  // Fills the options of myMenu with the elements of myArray.
  // !CAUTION!: It replaces the elements, so old ones will be deleted.
  var i;
  myMenu.length = myArray.length;
  for (i = 0; i < myArray.length; i++) {
    myMenu.options[i].text = myArray[i];
  }
}

function CalculateUnit(sourceForm, targetForm) {
  // A simple wrapper function to validate input before making the conversion
  var sourceValue = sourceForm.unit_input.value;

  // First check if the user has given numbers or anything that can be made to one...
  sourceValue = parseFloat(sourceValue);
  if (!isNaN(sourceValue) || sourceValue == 0) {
    // If we can make a valid floating-point number, put it in the text box and convert!
    sourceForm.unit_input.value = sourceValue;
    ConvertFromTo(sourceForm, targetForm);
  }
}

function ConvertFromTo(sourceForm, targetForm) {
  // Converts the contents of the sourceForm input box to the units specified in the targetForm unit menu and puts the result in the targetForm input box.In other words, this is the heart of the whole script...
  var propIndex;
  var sourceIndex;
  var sourceFactor;
  var targetIndex;
  var targetFactor;
  var result;

  // Start by checking which property we are working in...
  propIndex = document.property_form.the_menu.selectedIndex;

  // Let's determine what unit are we converting FROM (i.e. source) and the factor needed to convert that unit to the base unit.
  sourceIndex = sourceForm.unit_menu.selectedIndex;
  sourceFactor = factor[propIndex][sourceIndex];

  // Cool! Let's do the same thing for the target unit - the units we are converting TO:
  targetIndex = targetForm.unit_menu.selectedIndex;
  targetFactor = factor[propIndex][targetIndex];

  // Simple, huh? let's do the math: a) convert the source TO the base unit: (The input has been checked by the CalculateUnit function).

  result = sourceForm.unit_input.value;
  // Handle Temperature increments!
  if (property[propIndex] == "Temperature") {
    result = parseFloat(result) + tempIncrement[sourceIndex];
  }
  result = result * sourceFactor;

  // not done yet... now, b) use the targetFactor to convert FROM the base unit
  // to the target unit...
  result = result / targetFactor;
  // Again, handle Temperature increments!
  if (property[propIndex] == "Temperature") {
    result = parseFloat(result) - tempIncrement[targetIndex];
  }

  // Ta-da! All that's left is to update the target input box:
  targetForm.unit_input.value = result;
}

// This fragment initializes the property dropdown menu using the data defined above in the 'Data Definitions' section
window.onload = function(e) {
  FillMenuWithArray(document.property_form.the_menu, property);
  UpdateUnitMenu(document.property_form.the_menu, document.form_A.unit_menu);
  UpdateUnitMenu(document.property_form.the_menu, document.form_B.unit_menu)
}

// Restricting textboxes to accept numbers + navigational keys only
document.getElementByClass('numbersonly').addEventListener('keydown', function(e) {
  var key = e.keyCode ? e.keyCode : e.which;

  if (!([8, 9, 13, 27, 46, 110, 190].indexOf(key) !== -1 ||
      (key == 65 && (e.ctrlKey || e.metaKey)) || // Select All
      (key == 67 && (e.ctrlKey || e.metaKey)) || // Copy
      (key == 86 && (e.ctrlKey || e.metaKey)) || // Paste
      (key >= 35 && key <= 40) || // End, Home, Arrows
      (key >= 48 && key <= 57 && !(e.shiftKey || e.altKey)) || // Numeric Keys
      (key >= 96 && key <= 105) // Numpad
      (key == 190) // Numpad
    )) e.preventDefault();
});
</script>
