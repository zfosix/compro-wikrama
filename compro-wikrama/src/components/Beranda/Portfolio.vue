<template>
    <div class="portofolio">
        <h3>Member JKT48</h3>
        <p>Seputar member yang saya jadikan sebagai member favorite</p>
        <div class="row-portofolio">
            <Card v-for="item in data" :portfolio="item"></Card>
        </div>
    </div>
</template>
<script>
import Card from '@/components/Portfolio/Card.vue';
export default {
    components: {
        Card
    },
    props: ['data']
}
</script>
<style scope>
.portofolio
{
    margin-top: 80px;

}

.portofolio h3
{
    margin: auto;
    font-family: "Poppins", sans-serif;
    font-weight: 600;
    font-size: 48px;
    line-height: 70px;
    color: #ff0000;
    margin-bottom: 15px;
    text-align: center;
}

.portofolio p
{

    font-size: 14px;
    line-height: 20px;
    color: #4F556A;
    max-width: 680px;
    margin: auto;
    margin-top: 15px;
    margin-bottom: 25px;
    text-align: center;
}

.portofolio p span
{
    color: gray;
}

.row-portofolio
{
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 5px;
}

@media screen and (max-width: 600px)
{
    .row-portfolio
    {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        grid-gap: 10px;
    }
}


@media screen and (max-width: 600px)
{
    .row-portofolio
    {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        grid-gap: 10px;
    }
}
</style>