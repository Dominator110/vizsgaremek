const createNav = () =>{
    let nav = document.querySelector('.navbar');

    nav.innerHTML =`

         <div class="nav"> 
                <img src="logo.png" class="brand-logo" alt="">
                <div class="nav-items" >
                    <div class="search">
                        <input type="text" class="search-box" placeholder="Keresés,márka, termékek">
                        <button class="search-btn">keresés</button>
                    </div>
                    <a href="#"><img src="userr.png" alt=""></a>
                    <a href="#"><img src="cart.png" alt=""></a>
                </div>
            </div>
            <ul class="links-container">
                <li class="link-item"><a href="#" class="link">Home</a></li>
                <li class="link-item"><a href="#" class="link">Női órák</a></li>
                <li class="link-item"><a href="#" class="link">Férfi órák</a></li>
                <li class="link-item"><a href="#" class="link">Gyerek órák</a></li>
            </ul>


    `;

}


createNav();