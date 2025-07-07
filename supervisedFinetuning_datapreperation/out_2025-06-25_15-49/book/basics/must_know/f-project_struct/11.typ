
    // template.typ
    #let my_global_var = 100
    

    // main.typ
    #import "template.typ": *
    // ... rest of your main.typ content ...
    #include("chapters/chapter_A.typ")
    #include("chapters/chapter_B.typ")
    

    // chapters/chapter_A.typ
    #import "../template.typ": *
    
    The value of my_global_var in Chapter A is: #my_global_var.
    

    // chapters/chapter_B.typ
    #import "../template.typ": *

    The value of my_global_var in Chapter B is: #my_global_var.
    