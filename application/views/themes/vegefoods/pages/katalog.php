<div class="container py-5">
  <h2 class="mb-5 text-center fw-bold text-uppercase">Katalog Produk Kami</h2>

  <!-- Menu Kategori -->
  <div class="d-flex justify-content-center flex-wrap mb-4">
    <button class="btn btn-outline-primary mx-1 active category-btn" data-cat="all">Semua</button>
    <?php foreach ($categories as $category): ?>
      <button class="btn btn-outline-primary mx-1 category-btn" data-cat="<?= $category->id ?>">
        <?= htmlspecialchars($category->name) ?>
      </button>
    <?php endforeach; ?>
  </div>

  <!-- Daftar Produk (horizontal scroll) -->
  <div id="productContainer" class="d-flex flex-row flex-nowrap overflow-auto gap-3 pb-3">
    <?php foreach ($categories as $cat): ?>
      <?php foreach ($cat->products as $product): ?>
        <div class="card product-card text-center shadow-sm border-0 mx-2" 
             data-cat="<?= $cat->id ?>" 
             style="width: 220px; flex: 0 0 auto;">
          <img src="<?= base_url('assets/uploads/products/' . $product->picture_name) ?>" 
               alt="<?= htmlspecialchars($product->name) ?>" 
               class="card-img-top p-3" 
               style="height: 160px; object-fit: contain;">
          <div class="card-body">
            <h6 class="card-title mb-2"><?= htmlspecialchars($product->name) ?></h6>
            <p class="text-muted small mb-2">
              Rp <?= number_format($product->price, 0, ',', '.') ?>
            </p>
            <a href="<?= site_url('shop/product/' . $product->id) ?>" 
               class="btn btn-sm btn-outline-primary rounded-pill px-3">Detail</a>
          </div>
        </div>
      <?php endforeach; ?>
    <?php endforeach; ?>
  </div>
</div>

<!-- Script untuk filter kategori -->
<script>
$(document).ready(function() {
  $('.category-btn').on('click', function() {
    var catId = $(this).data('cat');

    // ubah tombol aktif
    $('.category-btn').removeClass('active');
    $(this).addClass('active');

    // filter produk
    if (catId === 'all') {
      $('.product-card').show();
    } else {
      $('.product-card').hide();
      $('.product-card[data-cat="' + catId + '"]').fadeIn(200);
    }
  });
});
</script>

<!-- Styling -->
<style>
  .category-btn.active {
    background-color: #001f3f;
    color: #fff;
  }
  #productContainer::-webkit-scrollbar {
    height: 8px;
  }
  #productContainer::-webkit-scrollbar-thumb {
    background: #aaa;
    border-radius: 4px;
  }
  #productContainer::-webkit-scrollbar-thumb:hover {
    background: #666;
  }
  .product-card {
    transition: transform 0.3s;
  }
  .product-card:hover {
    transform: translateY(-5px);
  }
</style>
