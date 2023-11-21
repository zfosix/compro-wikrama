<template>
    <div class="card-portfolio">
        <img :src="portfolio.file" :alt="portfolio.title">
        <div class="card-portfolio-description">
            <h4>
                {{ portfolio.title }}
            </h4>
            <p><span>Name :</span> {{ portfolio.name }}</p>
        </div>
    </div>
</template>
<script>
export default {
    props: ['portfolio']
}
</script>
<style scoped>
.card-portfolio
{
    max-width: 447px;
    padding-top: 10px;
    text-align: center;
    box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.05);
    border-radius: 20px;
    background: #110e0e;
    transition: all 0.5s ease;
}

.card-portfolio img
{
    border-radius: 15px;
    max-width: 94%;
    height: auto;
    transition: transform 0.5s ease-in-out;
    margin-bottom: 20px;
}

.card-portfolio img:hover
{
    transform: scale(1.1);
}

.card-portfolio-description
{
    padding: 0 20px 20px 20px;
}

.card-portfolio h4
{
    margin-top: 10px;
    font-weight: 900;
    font-size: 30px;
    line-height: 35px;
    margin-bottom: 0;
    color: rgb(155, 115, 115);
}
</style>