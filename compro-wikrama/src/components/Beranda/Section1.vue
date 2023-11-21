<template>
    <div>
        <div class="section_1">
            <div class="section1_content">
                <h1>{{ data.title }}</h1>
                <p>{{ data.description }}</p>
            </div>
            <div class="section1_img">
                <img :src="data.file" :alt="data.title">
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: ['data']
}
</script>

<style scoped>
.section_1
{

    padding: 70px 0;
    display: flex;
    align-items: center;
    margin-bottom: 191px;
}

.section1_content
{
    width: 50%;
    padding-left: 3px;
    color: #f8dfdf;
}

.section1_img
{
    width: 50%;
    padding-left: 5px;
}

.section1_img img
{
    width: 100%;
    border-radius: 20px;
    box-shadow: 0px 10px 30px rgba(27, 25, 25, 0.884);
    transition: transform 0.4s ease-in-out;
}

.section1_img img:hover
{
    transform: scale(1.1);
}

.section1_content h1
{
    font-size: 48px;
    color: #ff0000;
}

.section1_content p
{
    margin-bottom: 20px;
}

@media screen and (max-width: 600px)
{
    .section_1
    {
        flex-direction: column;
        padding: 20px 20px;

    }

    .section1_content
    {
        width: 100%;
        padding: 30px 0;
    }

    .section1_img
    {
        width: 100%;
    }
}
</style>