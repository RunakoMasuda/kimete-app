function hiragana (){
  const submit = document.getElementById("hiragana_btn");
  submit.addEventListener("click", () => {
    console.log("hello"); 
 });
};
  
window.addEventListener('load', hiragana);