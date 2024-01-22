<?php
include "navbar.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./favicon.ico" type="image/ico">

    <link href="./output.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@0.0.6/dist/full.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@400;500;600;700;800;900&family=Plus+Jakarta+Sans:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">

    <title>Map Interaktif | Way Kalam</title>

    <style>
        nav {
            background-color: white !important;
        }

        nav #nav-menu {
            color: black !important;
        }

        #navbar-default a.active {
            color: #132758;
            background-color: #00A693 !important;
        }
    </style>
</head>

<body class="bg-[#ACC4FF] overflow-x-hidden">
    <section class="flex pt-28 md:pt-14 flex-col-reverse md:flex-row">
        <div class="md:min-w-96 md:max-w-96 bg-[#D6F2FF] p-6">
            <form class="pt-6 md:pt-16" action="mapInteraktif.php", method="POST">
                <div class="flex">
                    <div class="relative w-full">
                        <input type="text" name="search" id="search-dropdown" class="block py-3 px-6 w-full z-20 text-gray-900 bg-white rounded-lg shadow-md shadow-gray-200 focus:ring-blue-500 focus:border-blue-500 font-plusJakarta" placeholder="Cari Tujuan ..." required>
                        <button type="submit" class="absolute top-0 end-0 py-3 px-6 font-medium h-full text-[#132758] rounded-r-lg overflow-hidden hover:bg-[#132758] hover:text-white focus:ring-4 focus:outline-none focus:ring-blue-300">
                            <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                            </svg>
                            <span class="sr-only">Cari</span>
                        </button>
                    </div>
                </div>
            </form>
            <div class="my-6 bg-white rounded-lg shadow-md shadow-gray-200">
                <div class="p-6 flex justify-between">
                    <a href="mapInteraktif.php" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-semua.svg" alt="">
                        <p class="font-plusJakarta">Semua</p>
                    </a>
                    <a href="filterMapInteraktif.php?kategori=Wisata" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-wisata.svg" alt="">
                        <p class="font-plusJakarta">Wisata</p>
                    </a>
                    <a href="filterMapInteraktif.php?kategori=UMKM" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-umkm.svg" alt="">
                        <p class="font-plusJakarta">UMKM</p>
                    </a>
                </div>
                <div class="p-6 flex justify-between">
                    <a href="filterMapInteraktif.php?kategori=Home Stay" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-homestay.svg" alt="">
                        <p class="font-plusJakarta">Homestay</p>
                    </a>
                    <a href="filterMapInteraktif.php?kategori=Peternakan" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-peternakan.svg" alt="">
                        <p class="font-plusJakarta">Peternakan</p>
                    </a>
                    <a href="filterMapInteraktif.php?kategori=Warung/Toko" class="max-w-12 flex items-center flex-col justify-end">
                        <img src="./images/icon-warung.svg" alt="">
                        <p class="font-plusJakarta">Warung</p>
                    </a>
                </div>
            </div>
            <?php
                $sqli = mysqli_query($mysqli, "SELECT * FROM wisata a INNER JOIN lokasi b ON a.id_wisata = b.id_wisata");
                $n = 0; 
                while($res = mysqli_fetch_array($sqli)){
                    $kat[$n] = $res['kategori'];
                    $n++;
                }
                $kategori = array_unique($kat);
                foreach($kategori as $kat){
                    ?>
            <div class="pt-6 md:pt-12">
                <h2 class="font-plusJakarta text-[16px] md:text-[16px] font-black bg-gradient-to-br from-[#00A693] via-[#00A693] to-[#132758] inline-block text-transparent bg-clip-text"><?php echo $kat?></h2>
                <div class="space-x-4 mt-3 flex overflow-auto">
                    <?php
                        $sql = mysqli_query($mysqli, "SELECT * FROM wisata a INNER JOIN lokasi b ON a.id_wisata = b.id_wisata WHERE a.kategori = '$kat'");
                        if(isset($_POST['search'])){
                            while($result = mysqli_fetch_array($sql)){
                                if(Search($_POST['search'], $result['headline'])){
                                ?>
                                <a href=<?php echo "./detailMapInteraktif.php?ket=".$result['id_wisata']?> class="bg-white rounded-lg px-8 py-4">
                                    <div class="flex flex-col justify-around items-center">
                                        <div class="overflow-hidden rounded-md h-[12rem] w-[8rem]">
                                            <img src=<?php echo "./gambar_lokasi/".$result['gambar_lokasi']?> alt="indukan" class="h-full w-full object-cover" />
                                        </div>
                                        <div class="items-center text-center">
                                            <p class="uppercase font-bigShoulders font-bold text-black md:text-[14px]"><?php echo $result['headline']?></p>
                                        </div>
                                    </div>
                                </a>
                                <?php
                                }
                            }
                        }else{
                            while($result = mysqli_fetch_array($sql)){
                                ?>
                                <a href=<?php echo "./detailMapInteraktif.php?ket=".$result['id_wisata']?> class="bg-white rounded-lg px-8 py-4">
                                    <div class="flex flex-col justify-around items-center">
                                        <div class="overflow-hidden rounded-md h-[12rem] w-[8rem]">
                                            <img src=<?php echo "./gambar_lokasi/".$result['gambar_lokasi']?> alt="indukan" class="h-full w-full object-cover" />
                                        </div>
                                        <div class="items-center text-center">
                                            <p class="uppercase font-bigShoulders font-bold text-black md:text-[14px]"><?php echo $result['headline']?></p>
                                        </div>
                                    </div>
                                </a>
                                <?php
                            }
                        }
                    ?>
                    
                </div>
            </div>
                    <?php
                }
            ?>
            

        </div>
        <div class="w-full md:pt-14">
            <img src="./images/map.svg" alt="" class="w-full">
        </div>
    </section>

   <?php include "footer.php"?>
</body>

</html>
