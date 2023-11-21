<template>
    <div class="blog blog-section">
        <h3>Blog</h3>
        <div class="row-blog">
            <Card v-for="item in data" :blog="item"></Card>
        </div>
    </div>
</template>
<script>
import '@/assets/blog.css';
import Card from '@/components/Blog/Card.vue';
export default {
    components: {
        Card
    },
    props: ['data']
}
</script>

<style>
.blog h3
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
</style>

