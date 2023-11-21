<template>
    <div class="card-service">
        <img :src="layanan.file" :alt="layanan.title">
        <h4>
            {{ layanan.title }}
        </h4>
        <p>
            {{ layanan.description }}
        </p>
    </div>
</template>
<script>
export default {
    props: ['layanan']
}
</script>
<style scope>
.card-service
{
    text-align: center;
    padding: 10px;
    box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.05);
    border-radius: 20px;
    background: #110e0e;
    transition: all 0.5s ease;
    margin: 50px 40px;
}

.card-service img
{
    width: 350px;
    border-radius: 20px;
    transition: transform 0.4s ease-in-out;
    margin-bottom: 20px;
}

.card-service img:hover
{
    transform: scale(1.1);
}

.card-service h4
{
    font-weight: 600;
    font-size: 17px;
    line-height: 30px;
    color: #ff9f9f;
}
</style>