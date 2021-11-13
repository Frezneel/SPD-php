<?php

require("koneksi.php");
$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    //Data
    $nim = $_POST["nim"];
    $password = $_POST["password"];
    $password = md5($password);
    
    //cek username didalam database
    $perintah = "SELECT * FROM mahasiswa where nim = '$nim'";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek      = mysqli_affected_rows($konek);
    $eksekusiDB = mysqli_fetch_object($eksekusi);

    if ($cek > 0) {
        $passwordDB = $eksekusiDB->password;
        if ($password == $passwordDB) {
            $response["kode"] = 1;
            $response["pesan"] = "Berhasil Login";
            $response['data'] = [
               'id' => $F['id'] = $eksekusiDB ->id,
               'nim' => $F['nim'] = $eksekusiDB->nim,
               'nama' => $F['nama'] = $eksekusiDB->nama,
               'jurusan' => $F['jurusan'] = $eksekusiDB->jurusan,
               'prodi' => $F['prodi'] = $eksekusiDB->prodi,
               'kelas' => $F['kelas'] = $eksekusiDB->kelas
            ];     
        }
        else{
            $response["kode"] = 0;
            $response["pesan"] = "Password Salah";
        }
        
    } else {
        //ambil password di db
        $response["kode"] = 0;
        $response["pesan"] = "NIM tidak terdaftar";
    }
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Tidak ada Post data";
}
    //jadikan data json
    echo json_encode($response);
    //menutup koneksi ke mysql
    mysqli_close($konek);
