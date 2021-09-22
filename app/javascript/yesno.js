function yesno (){
  const submit = document.getElementById("yes_no_btn");
  submit.addEventListener("click", () => {
    const imagelist = new Array(
      "/assets/no.jpeg",
      "/assets/yes.jpeg"
       );
      let img = new Image();
      const imageNo = Math.floor(Math.random() * imagelist .length);
      img.src = imagelist[imageNo];
      //console.log(img.src);
      document.write("<img src =" + img.src + ">");
 });
};
  
window.addEventListener('load', yesno);