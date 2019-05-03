function sizeSettings() {
    let  section_width = document.getElementById("urun_list").clientWidth;

    let blank_width = (section_width % 330);

    let div1_width = (section_width-blank_width)+"px";

    (blank_width /=2 )+"px";

    document.getElementById("div1").style.width = div1_width;
    let elements = document.getElementsByClassName("blank_aside");

    elements[0].style.width = blank_width;
    elements[1].style.width = blank_width;

}


window.onload = function () {
    sizeSettings();
}