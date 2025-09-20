document.addEventListener("DOMContentLoaded", () => {
    const buttons = document.querySelectorAll(".btn");

    buttons.forEach(btn => {
        btn.addEventListener("mouseover", () => {
            btn.style.backgroundColor = "#00b300"; // Darker lime
            btn.style.color = "white";
        });
        btn.addEventListener("mouseout", () => {
            btn.style.backgroundColor = "lime";
            btn.style.color = "black";
        });
    });
});
