<template>
     <div class="container">
          <div class="form-card">
               <div class="contact-img">
                    <img src="@/assets/img/logocontact.jpg" alt="contact">
               </div>
               <div class="form-contact">
                    <h2>Contact JKT48</h2>
                    <form @submit.prevent="submit">
                         <div class="input-form">
                              <label for="name">Name</label>
                              <input type="text" id="name" v-model="form.name" class="input" placeholder="Enter Name">
                         </div>
                         <div class="input-form">
                              <label for="email">Email</label>
                              <input type="text" id="email" v-model="form.email" class="input" placeholder="Enter Email">
                         </div>
                         <div class="input-form">
                              <label for="phone">Phone</label>
                              <input type="text" id="phone" v-model="form.phone" class="input" placeholder="Enter Phone">
                         </div>
                         <div class="input-form">
                              <label for="message">Message</label>
                              <textarea id="message" v-model="form.message" class="input"
                                   placeholder="Enter Message"></textarea>
                         </div>
                         <div class="input-form">
                              <button type="submit" class="btn-service">Submit</button>
                         </div>
                    </form>
               </div>
          </div>
     </div>
</template>
   
<script>

export default {
     data() {
          return {
               form: {
                    name: '',
                    email: '',
                    phone: '',
                    message: ''
               }
          }
     },
     methods: {
          async submit() {
               const response = await Post('contact', this.form);
               if (response.status == 200) {
                    this.form = {
                         name: '',
                         email: '',
                         phone: '',
                         message: ''
                    }
                    alert('Data berhasil ditambahkan!');
               }
          }
     }
}

</script>
<style scoped>
.form-card
{
     display: flex;
     background-color: #222020;
     border-radius: 20px;
     box-shadow: 0px 10px 30px rgba(27, 25, 25, 0.884);
     overflow: hidden;
}

.contact-img
{
     width: 50%;
}

.form-contact
{
     width: 100%;
     padding: 50px;
     margin-left: 300px;
     display: flex;
     flex-direction: column;
     color: #ffffff;
}

.contact-img img
{
     width: 210%;
     height: 100%;
     border-radius: 10px;
     transition: transform 0.5s ease-in-out;
}

.contact-img img:hover
{
     transform: scale(1.1);
}

.input-form
{
     margin-bottom: 20px;
}

.input-form label
{
     margin-bottom: 10px;
     font-weight: bold;
}

.input
{
     width: 100%;
     padding: 12px;
     font-size: 15px;
     border: none;
     border-radius: 10px;
     color: #000000;
     transition: border-color 0.2s;
}

.input:focus
{
     outline: none;
     border-color: #007BFF;
}

.btn-service
{
     text-decoration: none;
     color: white;
     font-size: 1.2rem;
     border-radius: 10px;
     background-color: red;
     border: 0;
     padding: 10px 15px;
     cursor: pointer;
}

.btn-service:hover
{
     background-color: #FF0000;
}

.container
{
     display: flex;
     justify-content: center;
     align-items: center;
     min-height: 80vh;
}
</style>
