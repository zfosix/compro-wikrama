<template>
    <div class="topnav container" :class="{ responsive: navbarActive }" id="myTopnav">
        <div class="logo">
            <div><img src="@/assets/img/logojkt.jpg" alt="log" width="50" style="border-radius: 10px;"></div>
            <a class="icon" @click="navbar">
                <img src="@/assets/img/hamburger.svg" @click="navbar" alt="hamburger">
            </a>
        </div>
        <div class="menu" :class="{ responsive: navbarActive }">
            <router-link to="/">Beranda</router-link>
            <router-link to="/Portfolio">Member</router-link>
            <router-link to="/Blog">News JKT48</router-link>
            <router-link to="/Contact">Contact</router-link>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            navbarActive: false
        }
    },
    methods: {
        navbar() {
            if (this.navbarActive) {
                this.navbarActive = false;
            } else {
                this.navbarActive = true;
            }
        }
    }
}
</script>
<style scope>
.topnav
{
    margin-top: 25px;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #333;
    border-radius: 15px;
}

.topnav a
{
    float: left;
    color: #ff7575;
    text-align: center;
    padding: 16px 18px;
    text-decoration: none;
    font-size: 17px;
}

.topnav a:hover
{
    border-bottom: 2px solid rgb(255, 0, 0);
}

.topnav a:hover
{
    color: rgb(255, 0, 0);
}

.topnav a.active
{
    background-color: #04AA6D;
    color: white;
}

.topnav .icon
{
    display: none;
}

.logo
{
    margin-left: 3px;
    display: flex;
    justify-content: space-between;
    max-width: 100%;
    padding: 10px;
    transition: transform 0.5s ease-in-out;
}

.logo:hover
{
    transform: scale(1.1);
}

@media screen and (max-width: 600px)
{
    .topnav
    {
        display: block;
        padding: 0;
    }

    .topnav .menu a
    {
        display: none;
    }

    .topnav a.icon
    {
        float: right;
        display: block;
    }
}

@media screen and (max-width: 600px)
{
    .topnav.responsive
    {
        position: relative;
        display: block;
    }

    .topnav.responsive a
    {
        float: none;
        display: block;
        text-align: left;
    }
}
</style>