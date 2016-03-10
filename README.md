# Programmatic AutoLayout with ScrollView

This always come up, this recipe needs to be in your permanent cookbook.
Do not sacrifice autolayout to build the perfect scrollView!

* Don't even try to do the interface builder version - it will waste your time and detroy you!
* the contentSize gets created by the intrinsic content size of the innermost subViews (the labels, boxView)

Awesome sample from this guy:
http://nscookbook.com/2015/06/ios-programming-recipe-36-a-fixed-width-dynamic-height-scrollview-in-autolayout/
