<!-- Bootstrap core JavaScript-->
<script src="template/vendor/jquery/jquery.min.js"></script>
    <script src="template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="template/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="template/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="template/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="template/js/demo/chart-area-demo.js"></script>
    <script src="template/js/demo/chart-pie-demo.js"></script>
    <script>
        function checkxoa(){
            if(confirm('Ban co muon xoa ?'))
                location.href="<?=href('nguoidung','xoa',['maqt'=>$value->maqt])?>";
        }
    </script>
    <script>
        function checkxoasp(){
            if(confirm('Ban co muon xoa ?'))
                location.href="<?=href('sanpham','xoa',['masp'=>$value->masp])?>";
        }
    </script>