<div class="row">
    <div class="col-md-10">
        <center>
            <h2><strong>Result</strong></h2>
        </center>
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-12">
        <hr />
    </div>
    <div class="col-md-6">
        <div class="row"> 
            <div class="col-md-2">
                <h4>Nama</h4>
            </div>
            <div class="col-md-6">
                <input class="form-control" value="<?php echo $murid->nama_murid;?>" readonly="readonly">
            </div>
        </div>
        <div class="row"> 
            <div class="col-md-2">
                <h4>Kelas</h4>
            </div>
            <div class="col-md-6">
                <input class="form-control" value="<?php echo $murid->kelas;?>" readonly="readonly">
            </div>
        </div> 
    </div>
    <div class="col-md-6">
        <div class="row"> 
            <div class="col-md-2">
                <h4>Sekolah</h4>
            </div>
            <div class="col-md-6">
                <input class="form-control" value="<?php echo $murid->nama_sekolah;?>" readonly="readonly">
            </div>
        </div> 
    </div>
</div><br />
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Keterangan</th>
                        <th>Nilai</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($nilai->result() as $a): ?>
                        <tr>
                            <td><?php echo $a->judul ?></td>
                            <td><?php echo $a->score ?></td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>    
    </div>
    

<div style="min-height: 100px;"></div>
