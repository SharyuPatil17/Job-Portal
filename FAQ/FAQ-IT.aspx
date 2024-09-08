<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="FAQ-IT.aspx.cs" Inherits="company_info_FAQ_IT" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            color: #0033CC;
            font-weight: bold;
            text-align: justify;
        }
        .style14
        {
            text-align: justify;
        }
        .style19
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-weight: 700;
            text-align: justify;
        }
        .style20
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-weight: 700;
            color: #0033CC;
            text-align: justify;
            text-decoration: underline;
        }
        .style22
        {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style24
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
        }
        .style25
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style26
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <table align="center" class="style15" 
        style="padding: 3px; margin: 3px; border-style: solid;" width="50%">
         <tr>
            <td class="style20">
                Frequently Asked Questions For IT Interview:</td>
        </tr>
        <tr>
            <td class="style19">
                <p class="MsoNormal">
                    1<span style="color:#333333" class="style24">.How do you print an address ?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">Use %p in printf to print the address.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style24">2.What are macros? what are its 
                    advantages and disadvantages?&nbsp;</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">Macros are processor directive which will be replaced at compile time.<br />
                    The disadvantage with macros is that they just replace the code they are not 
                    function calls. similarly the advantage is they can reduce time for replacing 
                    the same values.<br />
                    </span><span style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;
color:#333333">&nbsp;<o:p></o:p></span></p>
                <p class="style26">
                    3<span style="color:#333333" class="style25">.</span><span 
                        style="color:#333333" class="style24">Difference between pass by reference and pass by value?&nbsp;</span><span 
                        style="color:#333333"><br class="style25" />
                    </span>
                    <span style="color:#333333" class="style25">Pass by value just passes the value from caller to calling function so the 
                    called function cannot modify the values in caller function. But Pass by 
                    reference will pass the address to the caller function instead of value if 
                    called function requires to modify any value it can directly modify.</span><span 
                        style="color:#333333" class="style22"><br />
                    <br />
                    </span>4<span 
                        style="color:#333333" class="style25">.</span><span 
                        style="color:#333333" class="style24">What 
                    is an object?</span><span style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;
color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">Object is a software bundle of variables and related methods. Objects have state and 
                    behavior</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    5<span style="color:#333333" class="style24">.What is a class?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">Class is a user-defined data type in C++. It can be created to solve a particular 
                    kind of problem. After creation the user need not know the specifics of the 
                    working of a class.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">&nbsp;</span>6<span 
                        style="color:#333333" class="style24">.What is the difference between class and structure?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">Structure: Initially (in C) a structure was used to bundle different type of data 
                    types together to perform a particular functionality. But C++ extended the 
                    structure to contain functions also.&nbsp;<br />
                    The major difference is that all declarations inside a structure are by default 
                    public.<br />
                    Class: Class is a successor of Structure. By default all the members inside the 
                    class are private.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    7<span style="color:#333333" class="style24">. What is ponter?</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <b><u>
                    <span style="color:black" class="style25">Pointer</span></u><span 
                        style="color:#333333" class="style25">&nbsp;</span></b><span 
                        style="color:#333333" class="style25">is a variable in a program is something with a name, the value of which can vary. The 
                    way the compiler and linker handles this is that it assigns&nbsp;<br />
                    a specific block of memory within the computer to hold the value of that 
                    variable.</span><span style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;
color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">&nbsp;8</span><span 
                        style="color:#333333" class="style24">.What is the difference between null and void pointer?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">A Null pointer has the value 0. void pointer is a generic pointer introduced by ANSI. 
                    Generic pointer can hold the address of any data type.&nbsp;</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    9<span style="color:#333333" class="style24">.what is function overloading&nbsp;</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:black" class="style25">&nbsp;&nbsp;</span><u><span 
                        style="color:#333333" class="style25">&nbsp;</span></u><b><u><span 
                        style="color:black" class="style25">Function overloading</span><span 
                        style="color:#333333" class="style25">&nbsp;</span></u></b><span 
                        style="color:#333333" class="style25">is a feature of C++ that allows us to create 
                    multiple functions with the same name, so long as they have different 
                    parameters.Consider the following function:<br />
&nbsp;&nbsp; int Add(int nX, int nY)<br />
&nbsp;&nbsp;&nbsp; {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return nX + nY;<br />
&nbsp;&nbsp;&nbsp; }</span><span style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;
color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">&nbsp;</span><span 
                        style="color:#333333" class="style24">10.What is function overloading and operator overloading?</span><span 
                        style="color:#333333" class="style25"><br />
                    <br />
                    Function overloading: C++ enables several functions of the same name to be 
                    defined, as long as these functions have different sets of parameters (at least 
                    as far as their types are concerned). This capability is called function 
                    overloading. When an overloaded function is called, the C++ compiler selects the 
                    proper function by examining the number, types and order of the arguments in the 
                    call. Function overloading is commonly used to create several functions of the 
                    same name that perform similar tasks but on different data types.<br />
                    Operator overloading allows existing C++ operators to be redefined so that they 
                    work on objects of user-defined classes. Overloaded operators are syntactic 
                    sugar for equivalent function calls. They form a pleasant facade that doesn&#39;t 
                    add anything fundamental to the language (but they can improve understandability 
                    and reduce maintenance costs).</span><span style="font-size:
11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">&nbsp;</span><span 
                        style="color:#333333" class="style24">11.what is friend function?</span><span style="font-size:
11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <u>
                    <span style="color:black" class="style24">A friend function&nbsp;</span></u><span 
                        style="color:#333333" class="style25">for a class is used in object-oriented 
                    programming to allow access to public, private, or protected data in the class 
                    from the outside.<br />
                    Normally, a function that is not a member of a class cannot access such 
                    information; neither can an external class. Occasionally, such access will be 
                    advantageous for the programmer. Under these circumstances, the function or 
                    external class can be declared as a friend of the class using the friend 
                    keyword.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style24">12.What do you mean by inline function?</span><span 
                        style="color:#333333"><br class="style25" />
                    </span>
                    <span 
                        style="color:#333333" class="style25">The idea behind inline functions is to insert the code of a called function at 
                    the point where the function is called. If done carefully, this can improve the 
                    application&#39;s performance in exchange for increased compile time and possibly 
                    (but not always) an increase in the size of the generated binary executables.</span><span 
                        style="color:#333333" class="style22"><br />
                    <br />
                    </span>
                    <span style="color:#333333" class="style25">
                    13.&nbsp;<b>Tell me something about abstract classes?</b></span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">An abstract class is a class which 
                    does not fully represent an object. Instead, it represents a broad range of 
                    different classes of objects. However, this representation extends only to the 
                    features that those classes of objects have in common. Thus, an abstract class 
                    provides only a partial description of its objects.</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style24">14</span><span 
                        style="font-size:13.5pt;color:#333333" class="style25">.</span><span 
                        style="color:#333333" class="style24">What 
                    is the difference between realloc() and free()?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">The free subroutine frees a block 
                    of memory previously allocated by the malloc subroutine. Undefined results occur 
                    if the Pointer parameter is not a valid pointer. If the Pointer parameter is a 
                    null value, no action will occur. The realloc subroutine changes the size of the 
                    block of memory pointed to by the Pointer parameter to the number of bytes 
                    specified by the Size parameter and returns a new pointer to the block. The 
                    pointer specified by the Pointer parameter must have been created with the 
                    malloc, calloc, or realloc subroutines and not been deallocated with the free or 
                    realloc subroutines. Undefined results occur if the Pointer parameter is not a 
                    valid pointer.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    <span class="style25">15</span><span style="color:#333333" class="style24">.What is the difference between an array and a list?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">Array is collection of homogeneous 
                    elements. List is collection of heterogeneous elements.<br />
                    For Array memory allocated is static and continuous. For List memory allocated 
                    is dynamic and Random.<br />
                    Array: User need not have to keep in track of next memory allocation.<br />
                    List: User has to keep in Track of next location where memory is allocated.<br />
                    Array uses direct access of stored members, list uses sequential access for 
                    members.</span><span style="font-size:11.0pt;
font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333">&nbsp;<o:p></o:p></span></p>
                <p>
                    <span class="style25">16.</span><span style="color:#333333" class="style24">What are the differences between structures and arrays?</span><span 
                        style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p>
                    <span style="color:#333333" class="style25">Arrays is a group of similar data types but Structures can be group of different data 
                    types</span><span style="font-size:11.0pt;font-family:
&quot;Cambria&quot;,&quot;serif&quot;;color:#333333"><o:p></o:p></span></p>
                <p class="style26">
                    <span style="color:#333333" class="style25">
                    <br />
                    </span><span class="style25">17</span><span 
                        style="color:#333333" class="style25">.</span><span 
                        style="color:#333333" class="style24">What 
                    is data structure?</span><span style="color:#333333"><br class="style25" />
                    </span>
                    <span style="color:#333333" class="style25">A data structure is a way of organizing data that considers not only the items 
                    stored, but also their relationship to each other. Advance knowledge about the 
                    relationship between data items allows designing of efficient algorithms for the 
                    manipulation of data.</span><span style="font-size:11.0pt;font-family:&quot;Cambria&quot;,&quot;serif&quot;;
color:#333333"><o:p></o:p></span></p>
            </td>
        </tr>
    </table>
</asp:Content>

