<template>
    <div class="service">
        <h3>Setlist JKT48</h3>
        <p>Setlist JKT48 adalah konsep pada sebuah pertunjukan yang biasanya sedang atau akan dibawakan oleh member Jkt48.
        </p>
        <div class="row-service">
            <Card v-for="item in data" :layanan="item"></Card>
        </div>
    </div>
</template>
<script>
import Card from '../Service/Card.vue';
export default {
    components: {
        Card
    },
    props: ['data']
}
</script>
<style scope>
.service
{
    margin-top: 80px;


}

.service h3
{
    text-align: center;
    margin: auto;
    font-family: "Poppins", sans-serif;
    font-weight: 600;
    font-size: 48px;
    line-height: 70px;
    color: #ff0000;
    margin-bottom: 15px;
}

.service p
{
    font-weight: 400;
    font-size: 14px;
    line-height: 20px;
    color: #ffffff;
    max-width: 680px;
    margin: auto;
    margin-top: 14px;
    margin-bottom: 25px;
    text-align: center;
}

.service p span
{
    color: gray;
}

.row-service
{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 10px;
}

.service
{
    margin-top: 80px;
}


.row-ser.service
{
    display: grid;
    grid-template-columns: repeat(3, 2fr);
    grid-gap: 10px;
}

@media screen and (max-width: 600px)
{
    .row-ser.service
    {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        grid-gap: 10px;
    }
}


@media screen and (max-width: 600px)
{
    .row-service
    {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        grid-gap: 10px;
    }
}
</style>