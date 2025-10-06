<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="hero-wrap hero-bread" style="background-image: url('<?php echo get_theme_uri('images/DRCOM.jpg'); ?>');">
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><?php echo anchor(base_url(), 'Home'); ?></span> <span>Hubungi Kami</span></p>
          <h2 class="mb-0 bread" style="color: black;">Hubungi Kami</h2>
        </div>
      </div>
    </div>
  </div>

  <section class="ftco-section contact-section bg-light">
    <div class="container">
        <div class="row d-flex mb-5 contact-info">
        <div class="w-100"></div>
        <div class="col-md-6 d-flex">
            <div class="info bg-white p-14 text-center">
              <p><span>Alamat </span>Rukan Malibu, Jl. Boulevard Raya blok i No.62, RT.RayaRT.7/RW.14, Cengkareng Tim., Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730</p>
            </div>
        </div>
        <div class="col-md-3 d-flex">
            <div class="info bg-white p-4 text-center">
              <p><span>WA</span>0895339233468</p>
            </div>
        </div>
        <div class="col-md-3 d-flex">
            <div class="info bg-white p-4 text-center">
              <p><span>Email:</span>drcomstore@gmail.com</p>
            </div>
        </div>
        
      </div>
      <div class="row block-9">
        <div class="col-md-6 order-md-last d-flex">
          <form action="<?php echo site_url('pages/send_message'); ?>" class="bg-white p-5 contact-form" method="POST">
          <?php if ($flash) : ?>
          <div class="text-success text-center" style="margin-bottom: 25px;"><?php echo $flash; ?></div>
          <?php endif; ?>

            <div class="form-group">
              <input type="text" name="name" class="form-control" value="<?php echo set_value('name', (is_login() ? get_user_name() : '')); ?>" placeholder="Nama" required>
              <?php echo form_error('name'); ?>
            </div>
            <div class="form-group">
              <input type="email" name="email" class="form-control" value="<?php echo set_value('email', (is_login() ? $user->email : '')); ?>" placeholder="Email" required>
              <?php echo form_error('email'); ?>
            </div>
            <div class="form-group">
              <input type="text" name="subject" class="form-control" value="<?php echo set_value('subject'); ?>" placeholder="Subjek pesan" required>
              <?php echo form_error('subject'); ?>
            </div>
            <div class="form-group">
              <textarea name="message" id="" cols="30" rows="7" class="form-control" placeholder="Pesan" required><?php echo set_value('message'); ?></textarea>
              <?php echo form_error('message'); ?>
            </div>
            <div class="form-group">
              <input type="submit" value="Kirim Pesan" class="btn btn-primary py-3 px-5">
            </div>
          </form>
        
        </div>

        <div class="col-md-6 d-flex">
            <div style="width: 100%">
                <iframe width="100%" height="600" 
    src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=-6.135287,106.7333694&amp;q=Dr.%20Com%20Jakarta&amp;ie=UTF8&amp;t=&amp;z=17&amp;iwloc=B&amp;output=embed" 
    frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
</iframe>
            </div>
        </div>
      </div>
    </div>
  </section>