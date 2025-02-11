; ModuleID = 'molio.c'
source_filename = "molio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.extbond_t = type { ptr, i32, i32, i32 }
%struct.cid_t = type { i32, i32, ptr }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"getpdb: can't open file %s\0A\00", align 1
@getmatrix.mat = internal global [4 x [4 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [36 x i8] c"getmatrix: NULL or empty file name\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"getmatrix: can't read matrix file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"getmatrix: bad row %d: got %d elements, needed 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getmatrix: missing rows: got %d rows, needed 4\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"putpdb: NULL molecule\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"putcif: NULL molecule\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"putbnd: NULL molecule\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"aoff array in putbnd\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"putdist: NULL molecule\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"can't allocate res\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"can't open dist file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%3d %-4s %-4s %3d %-4s %4s %8.3f\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"putmatrix: NULL or empty file name\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"putmatrix: can't write file %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@n_atab = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"H2'1\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-pqr\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%lf%lf\00", align 1
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal unnamed_addr global i1 false, align 4
@.str.53 = private unnamed_addr constant [36 x i8] c"init_atab: can't alloc a_atomname.\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"fputpdb: NULL file pointer\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"-nobocc\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"-brook\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"-wwpdb\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-tr\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"-nocid\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"-allcid\00", align 1
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"ATOM  %5d %-4s %-3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"ATOM  %05d %-4s %-3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"ATOM  %5d %-4s %3s %-6s   %8.3f%8.3f%8.3f\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"ATOM  %05d %-4s %3s %-6s   %8.3f%8.3f%8.3f\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"%10.5f%10.5f   \00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"%6.2f%6.2f           \00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"%.1s  \00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"TER\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"initcid: can't allocate cid\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"initcid: can't allocate c_cids\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"nextcid: NULL cid\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"DG3\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"DA3\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"DT3\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"DC3\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"RG3\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"RA3\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"RU3\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"RC3\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"DG5\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"DA5\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"DT5\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"DC5\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"RG5\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"RA5\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"RU5\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"RC5\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"HIP\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"CYX\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"ASH\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"GLH\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c" HB\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"PHE\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"TYR\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"TRP\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"H5'1\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" H5'\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"H5'2\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"H5''\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" H2'\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"H2'2\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"H2''\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c" O1P\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" OP1\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" O2P\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" OP2\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c" H5T\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"HO5'\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c" H3T\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"HO3'\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" Na+\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c" NA+\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c" Fe \00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c" FE \00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c" Cl \00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c" CL \00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" Zn \00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c" ZN \00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c" Li+\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c" LI+\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" Ca+\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" CA+\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" Mg+\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c" MG+\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" Br-\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c" BR-\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"data_%s\0A\0A\00", align 1
@.str.159 = private unnamed_addr constant [38 x i8] c"###########\0A## ENTRY ##\0A###########\0A\0A\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"_entry.id       %s\0A\0A\00", align 1
@.str.161 = private unnamed_addr constant [50 x i8] c"###############\0A## ATOM_SITE ##\0A###############\0A\0A\00", align 1
@.str.162 = private unnamed_addr constant [46 x i8] c"loop_\0A_atom_site.id\0A_atom_site.label_atom_id\0A\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"_atom_site.label_comp_id\0A_atom_site.label_asym_id\0A\00", align 1
@.str.164 = private unnamed_addr constant [43 x i8] c"_atom_site.auth_seq_id\0A_atom_site.cartn_x\0A\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"_atom_site.cartn_y\0A_atom_site.cartn_z\0A\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"_atom_site.label_entity_id\0A_atom_site.label_seq_id\0A\00", align 1
@.str.167 = private unnamed_addr constant [47 x i8] c"%5d %-4s %3s %c %4d %8.3f %8.3f %8.3f %3d %4d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @getpdb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %2
  %8 = load ptr, ptr @stdin, align 8, !tbaa !8
  br label %29

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr @stdin, align 8, !tbaa !8
  br label %29

14:                                               ; preds = %9
  %15 = tail call i32 @get_mytaskid() #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !8
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #27
  br label %23

23:                                               ; preds = %17, %20, %14
  %24 = phi ptr [ null, %20 ], [ %18, %17 ], [ null, %14 ]
  %25 = phi i32 [ -1, %20 ], [ 0, %17 ], [ 0, %14 ]
  tail call void @reducerror(i32 noundef %25) #25
  %26 = tail call i32 @get_mytaskid() #25
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr %24, ptr null
  br label %29

29:                                               ; preds = %23, %12, %7
  %30 = phi ptr [ %13, %12 ], [ %8, %7 ], [ %28, %23 ]
  %31 = tail call fastcc ptr @fgetpdb(ptr noundef %30, ptr noundef %1) #26
  %32 = load ptr, ptr @stdin, align 8, !tbaa !8
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @get_mytaskid() #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i32 @fclose(ptr noundef %30) #26
  br label %39

39:                                               ; preds = %34, %37, %29
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mytaskid() local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @reducerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fgetpdb(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [82 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 4
  %6 = alloca [10 x i8], align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #28
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8 0, ptr %14, align 16, !tbaa !5
  br label %19

17:                                               ; preds = %2
  %18 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %19

19:                                               ; preds = %17, %16
  call fastcc void @initres() #26
  call fastcc void @init_atab() #26
  %20 = call ptr @newmolecule() #25
  store i8 0, ptr %7, align 1, !tbaa !5
  store i32 0, ptr @n_atab, align 4, !tbaa !10
  %21 = call ptr @ggets(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %0) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %271, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 80
  %25 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 12
  %26 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 4
  %27 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 2
  %28 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 17
  %29 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3
  %30 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 21
  %31 = getelementptr inbounds [10 x i8], ptr %8, i64 0, i64 6
  %32 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 22
  %33 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 30
  %34 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 8
  %35 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 38
  %36 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 46
  %37 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 54
  %38 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 6
  %39 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 60
  %40 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 1
  %41 = getelementptr inbounds %struct.molecule_t, ptr %20, i64 0, i32 2
  br label %42

42:                                               ; preds = %23, %265
  %43 = phi i32 [ 0, %23 ], [ %268, %265 ]
  %44 = phi i32 [ 0, %23 ], [ %267, %265 ]
  %45 = phi i32 [ 0, %23 ], [ %266, %265 ]
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %47, 80
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = shl i64 %46, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr i8, ptr %3, i64 %51
  %53 = sub i64 79, %46
  %54 = and i64 %53, 4294967295
  %55 = add nuw nsw i64 %54, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %52, i8 32, i64 %55, i1 false), !tbaa !5
  br label %56

56:                                               ; preds = %49, %42
  store i8 0, ptr %24, align 16, !tbaa !5
  %57 = load i32, ptr %3, align 16
  %58 = icmp eq i32 %57, 1297044545
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.25, ptr noundef nonnull dereferenceable(6) %3, i64 6)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %249

62:                                               ; preds = %59, %56
  %63 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %25, i64 noundef 4) #25
  store i8 0, ptr %26, align 4, !tbaa !5
  br label %64

64:                                               ; preds = %70, %62
  %65 = phi ptr [ %5, %62 ], [ %71, %70 ]
  %66 = phi ptr [ %5, %62 ], [ %72, %70 ]
  %67 = load i8, ptr %66, align 1, !tbaa !5
  switch i8 %67, label %68 [
    i8 0, label %73
    i8 32, label %70
  ]

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %67, ptr %65, align 1, !tbaa !5
  br label %70

70:                                               ; preds = %64, %68
  %71 = phi ptr [ %69, %68 ], [ %65, %64 ]
  %72 = getelementptr inbounds i8, ptr %66, i64 1
  br label %64, !llvm.loop !12

73:                                               ; preds = %64
  store i8 0, ptr %65, align 1, !tbaa !5
  %74 = load i8, ptr %5, align 4
  %75 = add i8 %74, -49
  %76 = icmp ult i8 %75, 3
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  %79 = trunc i64 %78 to i32
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %77 ]
  %83 = add nuw nsw i64 %82, 1
  %84 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %82
  store i8 %85, ptr %86, align 1, !tbaa !5
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  %88 = shl i64 %87, 32
  %89 = add i64 %88, -4294967296
  %90 = ashr exact i64 %89, 32
  %91 = icmp slt i64 %83, %90
  br i1 %91, label %81, label %92, !llvm.loop !14

92:                                               ; preds = %81, %77
  %93 = phi i64 [ 0, %77 ], [ %83, %81 ]
  %94 = and i64 %93, 4294967295
  %95 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %94
  store i8 %74, ptr %95, align 1, !tbaa !5
  br label %96

96:                                               ; preds = %73, %92
  %97 = load i8, ptr %27, align 2, !tbaa !5
  %98 = icmp eq i8 %97, 42
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i8 39, ptr %27, align 2, !tbaa !5
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, ptr %5, align 4
  %102 = icmp eq i32 %101, 5059907
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false) #25
  br label %104

104:                                              ; preds = %103, %100
  %105 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %28, i64 noundef 3) #25
  store i8 0, ptr %29, align 1, !tbaa !5
  br label %106

106:                                              ; preds = %112, %104
  %107 = phi ptr [ %6, %104 ], [ %113, %112 ]
  %108 = phi ptr [ %6, %104 ], [ %114, %112 ]
  %109 = load i8, ptr %108, align 1, !tbaa !5
  switch i8 %109, label %110 [
    i8 0, label %115
    i8 32, label %112
  ]

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %107, i64 1
  store i8 %109, ptr %107, align 1, !tbaa !5
  br label %112

112:                                              ; preds = %106, %110
  %113 = phi ptr [ %111, %110 ], [ %107, %106 ]
  %114 = getelementptr inbounds i8, ptr %108, i64 1
  br label %106, !llvm.loop !15

115:                                              ; preds = %106
  store i8 0, ptr %107, align 1, !tbaa !5
  %116 = load i32, ptr %5, align 4
  %117 = icmp eq i32 %116, 2568783
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4
  br label %121

120:                                              ; preds = %115
  store i32 2, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4, !tbaa !16
  br label %121

121:                                              ; preds = %118, %120
  %122 = phi i32 [ %119, %118 ], [ 2, %120 ]
  %123 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.29, i64 5)
  %124 = icmp eq i32 %123, 0
  %125 = icmp eq i32 %122, 2
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 2568776, ptr %5, align 4
  br label %128

128:                                              ; preds = %127, %121
  %129 = load i16, ptr %6, align 4
  %130 = icmp eq i16 %129, 65
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 4539457, ptr %6, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i16, ptr %6, align 4
  %134 = icmp eq i16 %133, 67
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 5527875, ptr %6, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i16, ptr %6, align 4
  %138 = icmp eq i16 %137, 71
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 4281671, ptr %6, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i16, ptr %6, align 4
  %142 = icmp eq i16 %141, 84
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 5851220, ptr %6, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i16, ptr %6, align 4
  %146 = icmp eq i16 %145, 85
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 4280917, ptr %6, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %30, i64 noundef 6) #25
  store i8 0, ptr %31, align 1, !tbaa !5
  %150 = load i8, ptr %30, align 1, !tbaa !5
  %151 = sext i8 %150 to i32
  %152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %32, ptr noundef nonnull @.str.41, ptr noundef nonnull %11) #25
  %153 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %33, i64 noundef 8) #25
  store i8 0, ptr %34, align 1, !tbaa !5
  %154 = call double @atof(ptr noundef nonnull %10) #24
  %155 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %35, i64 noundef 8) #25
  store i8 0, ptr %34, align 1, !tbaa !5
  %156 = call double @atof(ptr noundef nonnull %10) #24
  %157 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %36, i64 noundef 8) #25
  store i8 0, ptr %34, align 1, !tbaa !5
  %158 = call double @atof(ptr noundef nonnull %10) #24
  %159 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.42) #24
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %148
  %162 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %37, ptr noundef nonnull @.str.43, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  br label %177

163:                                              ; preds = %148
  %164 = load i8, ptr %5, align 4
  switch i8 %164, label %171 [
    i8 72, label %165
    i8 67, label %166
    i8 78, label %167
    i8 79, label %168
    i8 83, label %169
    i8 80, label %170
  ]

165:                                              ; preds = %163
  store double 1.200000e+00, ptr %13, align 8, !tbaa !18
  br label %172

166:                                              ; preds = %163
  store double 1.700000e+00, ptr %13, align 8, !tbaa !18
  br label %172

167:                                              ; preds = %163
  store double 1.550000e+00, ptr %13, align 8, !tbaa !18
  br label %172

168:                                              ; preds = %163
  store double 1.500000e+00, ptr %13, align 8, !tbaa !18
  br label %172

169:                                              ; preds = %163
  store double 1.800000e+00, ptr %13, align 8, !tbaa !18
  br label %172

170:                                              ; preds = %163
  store double 1.850000e+00, ptr %13, align 8, !tbaa !18
  br label %172

171:                                              ; preds = %163
  store double 1.700000e+00, ptr %13, align 8, !tbaa !18
  br label %172

172:                                              ; preds = %166, %168, %170, %171, %169, %167, %165
  store double 0.000000e+00, ptr %12, align 8, !tbaa !18
  %173 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %37, i64 noundef 6) #25
  store i8 0, ptr %38, align 1, !tbaa !5
  %174 = call double @atof(ptr noundef nonnull %10) #24
  %175 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %39, i64 noundef 6) #25
  store i8 0, ptr %38, align 1, !tbaa !5
  %176 = call double @atof(ptr noundef nonnull %10) #24
  br label %177

177:                                              ; preds = %172, %161
  %178 = phi double [ 1.000000e+00, %161 ], [ %174, %172 ]
  %179 = phi double [ 0.000000e+00, %161 ], [ %176, %172 ]
  %180 = icmp eq i32 %43, %151
  br i1 %180, label %213, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr @n_atab, align 4, !tbaa !10
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %186 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(1) %7) #25
  %187 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %188 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %187, ptr noundef nonnull dereferenceable(1) %9) #25
  store i32 %45, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !22
  store i32 %182, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  call fastcc void @makebonds() #26
  %189 = call i32 @addresidue(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull @res) #25
  call fastcc void @initres() #26
  store i32 0, ptr @n_atab, align 4, !tbaa !10
  br label %190

190:                                              ; preds = %184, %181
  %191 = add nsw i32 %44, 1
  %192 = icmp eq i8 %150, 32
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %191) #25
  br label %196

195:                                              ; preds = %190
  store i8 %150, ptr %4, align 1, !tbaa !5
  store i8 0, ptr %40, align 1, !tbaa !5
  br label %196

196:                                              ; preds = %195, %193
  %197 = call i32 @addstrand(ptr noundef %20, ptr noundef nonnull %4) #25
  br label %198

198:                                              ; preds = %198, %196
  %199 = phi ptr [ %41, %196 ], [ %204, %198 ]
  %200 = load ptr, ptr %199, align 8, !tbaa !8, !nonnull !24, !noundef !24
  %201 = load ptr, ptr %200, align 8, !tbaa !25
  %202 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %201, ptr noundef nonnull dereferenceable(1) %4) #24
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr inbounds %struct.strand_t, ptr %200, i64 0, i32 4
  br i1 %203, label %205, label %198, !llvm.loop !27

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.strand_t, ptr %200, i64 0, i32 6
  store i32 10000, ptr %206, align 4, !tbaa !28
  %207 = call noalias dereferenceable_or_null(1280000) ptr @malloc(i64 noundef 1280000) #29
  %208 = getelementptr inbounds %struct.strand_t, ptr %200, i64 0, i32 7
  store ptr %207, ptr %208, align 8, !tbaa !29
  %209 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #25
  %210 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #25
  %211 = load i32, ptr %11, align 4, !tbaa !10
  %212 = load i32, ptr @n_atab, align 4, !tbaa !10
  br label %227

213:                                              ; preds = %177
  %214 = load i32, ptr %11, align 4, !tbaa !10
  %215 = call fastcc i32 @isnewres(ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %45, i32 noundef %214) #26, !range !30
  %216 = icmp eq i32 %215, 0
  %217 = load i32, ptr @n_atab, align 4, !tbaa !10
  br i1 %216, label %227, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %220 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %219, ptr noundef nonnull dereferenceable(1) %7) #25
  %221 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %222 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %221, ptr noundef nonnull dereferenceable(1) %9) #25
  store i32 %45, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !22
  store i32 %217, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  call fastcc void @makebonds() #26
  %223 = call i32 @addresidue(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull @res) #25
  call fastcc void @initres() #26
  %224 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #25
  %225 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #25
  %226 = load i32, ptr %11, align 4, !tbaa !10
  store i32 0, ptr @n_atab, align 4, !tbaa !10
  br label %227

227:                                              ; preds = %213, %218, %205
  %228 = phi i32 [ %212, %205 ], [ 0, %218 ], [ %217, %213 ]
  %229 = phi i32 [ %211, %205 ], [ %226, %218 ], [ %45, %213 ]
  %230 = phi i32 [ %191, %205 ], [ %44, %218 ], [ %44, %213 ]
  %231 = phi i32 [ %151, %205 ], [ %43, %218 ], [ %43, %213 ]
  %232 = sext i32 %228 to i64
  %233 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232
  call void @NAB_initatom(ptr noundef nonnull %233, i32 noundef 0) #25
  %234 = load ptr, ptr %233, align 16, !tbaa !31
  %235 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %234, ptr noundef nonnull dereferenceable(1) %5) #25
  %236 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 2
  store i32 0, ptr %236, align 16, !tbaa !33
  %237 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 5
  store ptr null, ptr %237, align 8, !tbaa !34
  %238 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 17
  store double %154, ptr %238, align 16, !tbaa !18
  %239 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 17, i64 1
  store double %156, ptr %239, align 8, !tbaa !18
  %240 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 17, i64 2
  store double %158, ptr %240, align 16, !tbaa !18
  %241 = load double, ptr %12, align 8, !tbaa !18
  %242 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 6
  store double %241, ptr %242, align 16, !tbaa !35
  %243 = load double, ptr %13, align 8, !tbaa !18
  %244 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 7
  store double %243, ptr %244, align 8, !tbaa !36
  %245 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 9
  store double %178, ptr %245, align 8, !tbaa !37
  %246 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %232, i32 8
  store double %179, ptr %246, align 16, !tbaa !38
  %247 = load i32, ptr @n_atab, align 4, !tbaa !10
  %248 = add nsw i32 %247, 1
  store i32 %248, ptr @n_atab, align 4, !tbaa !10
  br label %265

249:                                              ; preds = %59
  %250 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef nonnull dereferenceable(3) %3, i64 3)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load i32, ptr @n_atab, align 4, !tbaa !10
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %257 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %256, ptr noundef nonnull dereferenceable(1) %7) #25
  %258 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %259 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %258, ptr noundef nonnull dereferenceable(1) %9) #25
  store i32 %45, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !22
  store i32 %253, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  call fastcc void @makebonds() #26
  %260 = call i32 @addresidue(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull @res) #25
  call fastcc void @initres() #26
  store i32 0, ptr @n_atab, align 4, !tbaa !10
  br label %261

261:                                              ; preds = %255, %252
  store i8 0, ptr %7, align 1, !tbaa !5
  store i8 0, ptr %9, align 1, !tbaa !5
  br label %265

262:                                              ; preds = %249
  %263 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.50, ptr noundef nonnull dereferenceable(3) %3, i64 3)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %261, %262, %227
  %266 = phi i32 [ %229, %227 ], [ 0, %261 ], [ %45, %262 ]
  %267 = phi i32 [ %230, %227 ], [ %44, %261 ], [ %44, %262 ]
  %268 = phi i32 [ %231, %227 ], [ 0, %261 ], [ %43, %262 ]
  %269 = call ptr @ggets(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %0) #25
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %42

271:                                              ; preds = %265, %262, %19
  %272 = phi i32 [ 0, %19 ], [ %45, %262 ], [ %266, %265 ]
  %273 = load i32, ptr @n_atab, align 4, !tbaa !10
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %277 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %276, ptr noundef nonnull dereferenceable(1) %7) #25
  %278 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %279 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %278, ptr noundef nonnull dereferenceable(1) %9) #25
  store i32 %272, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !22
  store i32 %273, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  call fastcc void @makebonds() #26
  %280 = call i32 @addresidue(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull @res) #25
  call fastcc void @initres() #26
  br label %281

281:                                              ; preds = %275, %271
  %282 = getelementptr inbounds %struct.molecule_t, ptr %20, i64 0, i32 5
  store i32 0, ptr %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #28
  ret ptr %20
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @getmatrix(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !8
  %9 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 35, i64 1, ptr %8) #30
  br label %60

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @stdin, align 8, !tbaa !8
  br label %21

15:                                               ; preds = %10
  %16 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #27
  br label %60

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %16, %15 ], [ %14, %13 ]
  br label %23

23:                                               ; preds = %43, %21
  %24 = phi i64 [ %44, %43 ], [ 0, %21 ]
  br label %25

25:                                               ; preds = %23, %28
  %26 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 256, ptr noundef %22) #26
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr %2, align 16, !tbaa !5
  %30 = icmp eq i8 %29, 35
  br i1 %30, label %25, label %31, !llvm.loop !41

31:                                               ; preds = %28
  %32 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24
  %33 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 1
  %34 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 2
  %35 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 3
  %36 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #25
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = trunc i64 %24 to i32
  %40 = load ptr, ptr @stderr, align 8, !tbaa !8
  %41 = add nuw nsw i32 %39, 1
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %36) #27
  br label %52

43:                                               ; preds = %31
  %44 = add nuw nsw i64 %24, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %53, label %23, !llvm.loop !41

46:                                               ; preds = %25
  %47 = trunc i64 %24 to i32
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !8
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.7, i32 noundef %47) #27
  br label %52

52:                                               ; preds = %38, %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false)
  br label %53

53:                                               ; preds = %43, %52, %46
  %54 = icmp eq ptr %22, null
  %55 = load ptr, ptr @stdin, align 8
  %56 = icmp eq ptr %22, %55
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call i32 @fclose(ptr noundef nonnull %22) #26
  br label %60

60:                                               ; preds = %18, %7, %58, %53
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #28
  ret ptr @getmatrix.mat
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putpdb(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = tail call i32 @get_mytaskid() #25
  %6 = icmp eq i32 %5, 0
  br i1 %4, label %7, label %11

7:                                                ; preds = %3
  br i1 %6, label %8, label %30

8:                                                ; preds = %7
  %9 = load ptr, ptr @stderr, align 8, !tbaa !8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %9) #30
  br label %30

11:                                               ; preds = %3
  br i1 %6, label %12, label %28

12:                                               ; preds = %11
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @stdout, align 8, !tbaa !8
  br label %22

17:                                               ; preds = %12
  %18 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #25
  br label %28

22:                                               ; preds = %17, %15
  %23 = phi ptr [ %16, %15 ], [ %18, %17 ]
  tail call fastcc void @fputpdb(ptr noundef %23, ptr noundef nonnull %1, ptr noundef %2) #26
  %24 = load ptr, ptr @stdout, align 8, !tbaa !8
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @fclose(ptr noundef %23) #26
  br label %28

28:                                               ; preds = %20, %26, %22, %11
  %29 = phi i32 [ 0, %26 ], [ 0, %22 ], [ -1, %20 ], [ 0, %11 ]
  tail call void @reducerror(i32 noundef %29) #25
  br label %30

30:                                               ; preds = %7, %8, %28
  ret i32 0
}

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fputpdb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #28
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !8
  %11 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 27, i64 1, ptr %10) #30
  br label %174

12:                                               ; preds = %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %18

15:                                               ; preds = %12
  %16 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 255) #25
  %17 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 255
  store i8 0, ptr %17, align 1, !tbaa !5
  br label %18

18:                                               ; preds = %15, %14
  %19 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.42) #24
  %20 = icmp eq ptr %19, null
  %21 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.56) #24
  %22 = icmp eq ptr %21, null
  %23 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.57) #24
  %24 = icmp eq ptr %23, null
  %25 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.58) #24
  %26 = icmp eq ptr %25, null
  %27 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.59) #24
  %28 = icmp ne ptr %27, null
  %29 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.60) #24
  %30 = icmp ne ptr %29, null
  %31 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.61) #24
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i32
  %34 = xor i1 %32, true
  %35 = select i1 %34, i1 %30, i1 false
  %36 = zext i1 %35 to i32
  %37 = call fastcc ptr @initcid(i32 noundef %36, i32 noundef %33, ptr noundef %1) #26
  %38 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %173, label %41

41:                                               ; preds = %18
  %42 = select i1 %24, i1 %26, i1 false
  br label %43

43:                                               ; preds = %41, %166
  %44 = phi ptr [ %39, %41 ], [ %171, %166 ]
  %45 = phi i32 [ 0, %41 ], [ %168, %166 ]
  %46 = phi i32 [ 0, %41 ], [ %167, %166 ]
  %47 = call fastcc i32 @nextcid(ptr noundef %37, i32 noundef %36, i32 noundef %33, ptr noundef nonnull %44) #26
  %48 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !42
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %166

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 7
  %53 = shl i32 %47, 24
  %54 = ashr exact i32 %53, 24
  br label %55

55:                                               ; preds = %51, %159
  %56 = phi i64 [ 0, %51 ], [ %161, %159 ]
  %57 = phi i32 [ %45, %51 ], [ %162, %159 ]
  %58 = phi i32 [ %46, %51 ], [ %160, %159 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !29
  %60 = getelementptr inbounds ptr, ptr %59, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !8
  %62 = getelementptr inbounds %struct.residue_t, ptr %61, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr @.str.62, ptr %63
  %66 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %65) #25
  br i1 %24, label %68, label %67

67:                                               ; preds = %55
  call fastcc void @mk_brook_rname(ptr noundef nonnull %4, ptr noundef nonnull %61) #26
  br label %74

68:                                               ; preds = %55
  br i1 %26, label %70, label %69

69:                                               ; preds = %68
  call fastcc void @mk_wwpdb_rname(ptr noundef nonnull %4, ptr noundef nonnull %61) #26
  br label %74

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.residue_t, ptr %61, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !20
  %73 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %72) #25
  br label %74

74:                                               ; preds = %69, %70, %67
  %75 = getelementptr inbounds %struct.residue_t, ptr %61, i64 0, i32 15
  %76 = load i32, ptr %75, align 8, !tbaa !23
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %159

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.residue_t, ptr %61, i64 0, i32 17
  %80 = trunc i64 %56 to i32
  %81 = select i1 %28, i32 %57, i32 %80
  %82 = add nsw i32 %81, 1
  br label %83

83:                                               ; preds = %78, %153
  %84 = phi i64 [ 0, %78 ], [ %155, %153 ]
  %85 = phi i32 [ %58, %78 ], [ %86, %153 ]
  %86 = add nsw i32 %85, 1
  %87 = load ptr, ptr %79, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  br i1 %24, label %91, label %90

90:                                               ; preds = %83
  call fastcc void @mk_brook_aname(ptr noundef nonnull %5, ptr noundef %89, ptr noundef nonnull %4) #26
  br label %95

91:                                               ; preds = %83
  br i1 %26, label %93, label %92

92:                                               ; preds = %91
  call fastcc void @mk_wwpdb_aname(ptr noundef nonnull %5, ptr noundef %89) #26
  br label %95

93:                                               ; preds = %91
  %94 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %89) #25
  br label %95

95:                                               ; preds = %92, %93, %90
  %96 = load i8, ptr %6, align 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i1 true, i1 %28
  %99 = icmp slt i32 %85, 99999
  br i1 %98, label %100, label %118

100:                                              ; preds = %95
  br i1 %99, label %101, label %109

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17
  %103 = load double, ptr %102, align 8, !tbaa !18
  %104 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !18
  %106 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 2
  %107 = load double, ptr %106, align 8, !tbaa !18
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.63, i32 noundef %86, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %54, i32 noundef %82, double noundef %103, double noundef %105, double noundef %107) #26
  br label %136

109:                                              ; preds = %100
  %110 = urem i32 %86, 100000
  %111 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17
  %112 = load double, ptr %111, align 8, !tbaa !18
  %113 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 1
  %114 = load double, ptr %113, align 8, !tbaa !18
  %115 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 2
  %116 = load double, ptr %115, align 8, !tbaa !18
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, i32 noundef %110, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %54, i32 noundef %82, double noundef %112, double noundef %114, double noundef %116) #26
  br label %136

118:                                              ; preds = %95
  br i1 %99, label %119, label %127

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17
  %121 = load double, ptr %120, align 8, !tbaa !18
  %122 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 1
  %123 = load double, ptr %122, align 8, !tbaa !18
  %124 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 2
  %125 = load double, ptr %124, align 8, !tbaa !18
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, i32 noundef %86, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, double noundef %121, double noundef %123, double noundef %125) #26
  br label %136

127:                                              ; preds = %118
  %128 = urem i32 %86, 100000
  %129 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17
  %130 = load double, ptr %129, align 8, !tbaa !18
  %131 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 1
  %132 = load double, ptr %131, align 8, !tbaa !18
  %133 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 17, i64 2
  %134 = load double, ptr %133, align 8, !tbaa !18
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, i32 noundef %128, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, double noundef %130, double noundef %132, double noundef %134) #26
  br label %136

136:                                              ; preds = %119, %127, %101, %109
  br i1 %20, label %143, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 6
  %139 = load double, ptr %138, align 8, !tbaa !35
  %140 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 7
  %141 = load double, ptr %140, align 8, !tbaa !36
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.67, double noundef %139, double noundef %141) #26
  br label %153

143:                                              ; preds = %136
  br i1 %22, label %144, label %153

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 9
  %146 = load double, ptr %145, align 8, !tbaa !37
  %147 = getelementptr inbounds %struct.atom_t, ptr %87, i64 %84, i32 8
  %148 = load double, ptr %147, align 8, !tbaa !38
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.68, double noundef %146, double noundef %148) #26
  br i1 %42, label %153, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %88, align 8, !tbaa !31
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.69, ptr noundef %151) #26
  br label %153

153:                                              ; preds = %143, %137, %144, %150
  %154 = call i32 @fputc(i32 10, ptr nonnull %0)
  %155 = add nuw nsw i64 %84, 1
  %156 = load i32, ptr %75, align 8, !tbaa !23
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %83, label %159, !llvm.loop !44

159:                                              ; preds = %153, %74
  %160 = phi i32 [ %58, %74 ], [ %86, %153 ]
  %161 = add nuw nsw i64 %56, 1
  %162 = add nsw i32 %57, 1
  %163 = load i32, ptr %48, align 8, !tbaa !42
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %55, label %166, !llvm.loop !45

166:                                              ; preds = %159, %43
  %167 = phi i32 [ %46, %43 ], [ %160, %159 ]
  %168 = phi i32 [ %45, %43 ], [ %162, %159 ]
  %169 = call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %0)
  %170 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %43, !llvm.loop !46

173:                                              ; preds = %166, %18
  call fastcc void @freecid(ptr noundef %37) #26
  br label %174

174:                                              ; preds = %173, %9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putcif(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !8
  %7 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %6) #30
  br label %24

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !tbaa !8
  br label %18

13:                                               ; preds = %8
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9) #26
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #25
  tail call void @exit(i32 noundef 1) #31
  unreachable

18:                                               ; preds = %13, %11
  %19 = phi ptr [ %14, %13 ], [ %12, %11 ]
  tail call fastcc void @fputcif(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %2) #26
  %20 = load ptr, ptr @stdout, align 8, !tbaa !8
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @fclose(ptr noundef %19) #26
  br label %24

24:                                               ; preds = %18, %22, %5
  ret i32 0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @fputcif(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.158, ptr noundef %1) #26
  %7 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 37, i64 1, ptr %0)
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.160, ptr noundef %1) #26
  %9 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 49, i64 1, ptr %0)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 45, i64 1, ptr %0)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.163, i64 50, i64 1, ptr %0)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 42, i64 1, ptr %0)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 38, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.166, i64 51, i64 1, ptr %0)
  %15 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %92, label %18

18:                                               ; preds = %3
  %19 = icmp sgt i32 %5, 1
  %20 = select i1 %19, i8 65, i8 46
  br label %21

21:                                               ; preds = %18, %82
  %22 = phi ptr [ %90, %82 ], [ %16, %18 ]
  %23 = phi i32 [ %84, %82 ], [ 0, %18 ]
  %24 = phi i8 [ %88, %82 ], [ %20, %18 ]
  %25 = phi i32 [ %27, %82 ], [ 0, %18 ]
  %26 = phi i32 [ %83, %82 ], [ 0, %18 ]
  %27 = add nuw nsw i32 %25, 1
  %28 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 7
  %33 = sext i8 %24 to i32
  br label %34

34:                                               ; preds = %31, %75
  %35 = phi i32 [ %29, %31 ], [ %78, %75 ]
  %36 = phi i64 [ 0, %31 ], [ %77, %75 ]
  %37 = phi i32 [ %23, %31 ], [ %76, %75 ]
  %38 = phi i32 [ %26, %31 ], [ %79, %75 ]
  %39 = load ptr, ptr %32, align 8, !tbaa !29
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  %41 = load ptr, ptr %40, align 8, !tbaa !8
  %42 = getelementptr inbounds %struct.residue_t, ptr %41, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !23
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = add nuw nsw i64 %36, 1
  %47 = add nsw i32 %37, 1
  br label %75

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.residue_t, ptr %41, i64 0, i32 17
  %50 = getelementptr inbounds %struct.residue_t, ptr %41, i64 0, i32 4
  %51 = add nsw i32 %37, 1
  %52 = add nuw nsw i64 %36, 1
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %48, %54
  %55 = phi i64 [ 0, %48 ], [ %69, %54 ]
  %56 = phi i32 [ %38, %48 ], [ %57, %54 ]
  %57 = add nsw i32 %56, 1
  %58 = load ptr, ptr %49, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.atom_t, ptr %58, i64 %55
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = load ptr, ptr %50, align 8, !tbaa !20
  %62 = getelementptr inbounds %struct.atom_t, ptr %58, i64 %55, i32 17
  %63 = load double, ptr %62, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct.atom_t, ptr %58, i64 %55, i32 17, i64 1
  %65 = load double, ptr %64, align 8, !tbaa !18
  %66 = getelementptr inbounds %struct.atom_t, ptr %58, i64 %55, i32 17, i64 2
  %67 = load double, ptr %66, align 8, !tbaa !18
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.167, i32 noundef %57, ptr noundef %60, ptr noundef %61, i32 noundef %33, i32 noundef %51, double noundef %63, double noundef %65, double noundef %67, i32 noundef %27, i32 noundef %53) #26
  %69 = add nuw nsw i64 %55, 1
  %70 = load i32, ptr %42, align 8, !tbaa !23
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %54, label %73, !llvm.loop !48

73:                                               ; preds = %54
  %74 = load i32, ptr %28, align 8, !tbaa !42
  br label %75

75:                                               ; preds = %45, %73
  %76 = phi i32 [ %47, %45 ], [ %51, %73 ]
  %77 = phi i64 [ %46, %45 ], [ %52, %73 ]
  %78 = phi i32 [ %35, %45 ], [ %74, %73 ]
  %79 = phi i32 [ %38, %45 ], [ %57, %73 ]
  %80 = sext i32 %78 to i64
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %34, label %82, !llvm.loop !49

82:                                               ; preds = %75, %21
  %83 = phi i32 [ %26, %21 ], [ %79, %75 ]
  %84 = phi i32 [ %23, %21 ], [ %76, %75 ]
  %85 = load i32, ptr %4, align 8, !tbaa !47
  %86 = icmp sgt i32 %85, 1
  %87 = zext i1 %86 to i8
  %88 = add i8 %24, %87
  %89 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %21, !llvm.loop !50

92:                                               ; preds = %82, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putbnd(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !8
  %6 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 22, i64 1, ptr %5) #30
  br label %156

7:                                                ; preds = %2
  %8 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #25
  tail call void @exit(i32 noundef 1) #31
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !42
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !51

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %33

30:                                               ; preds = %12
  %31 = tail call noalias ptr @malloc(i64 noundef 0) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %151

33:                                               ; preds = %25
  br i1 %15, label %151, label %39

34:                                               ; preds = %30, %25
  %35 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #25
  br label %153

36:                                               ; preds = %73
  br i1 %15, label %151, label %37

37:                                               ; preds = %36
  %38 = getelementptr i32, ptr %28, i64 -1
  br label %79

39:                                               ; preds = %33, %73
  %40 = phi ptr [ %77, %73 ], [ %14, %33 ]
  %41 = phi i32 [ %75, %73 ], [ 0, %33 ]
  %42 = phi i32 [ %74, %73 ], [ 0, %33 ]
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, ptr %28, i64 %43
  store i32 %42, ptr %44, align 4, !tbaa !10
  %45 = getelementptr inbounds %struct.strand_t, ptr %40, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !42
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.strand_t, ptr %40, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = load ptr, ptr %50, align 8, !tbaa !8
  %52 = getelementptr inbounds %struct.residue_t, ptr %51, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !23
  %54 = add nsw i32 %53, %42
  %55 = icmp eq i32 %46, 1
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  %57 = zext nneg i32 %46 to i64
  %58 = getelementptr i32, ptr %28, i64 %43
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 1, %56 ], [ %68, %59 ]
  %61 = phi i32 [ %54, %56 ], [ %67, %59 ]
  %62 = getelementptr i32, ptr %58, i64 %60
  store i32 %61, ptr %62, align 4, !tbaa !10
  %63 = getelementptr inbounds ptr, ptr %50, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  %65 = getelementptr inbounds %struct.residue_t, ptr %64, i64 0, i32 15
  %66 = load i32, ptr %65, align 8, !tbaa !23
  %67 = add nsw i32 %66, %61
  %68 = add nuw nsw i64 %60, 1
  %69 = icmp eq i64 %68, %57
  br i1 %69, label %70, label %59, !llvm.loop !52

70:                                               ; preds = %59, %48
  %71 = phi i32 [ %54, %48 ], [ %67, %59 ]
  %72 = add nsw i32 %46, %41
  br label %73

73:                                               ; preds = %39, %70
  %74 = phi i32 [ %71, %70 ], [ %42, %39 ]
  %75 = phi i32 [ %72, %70 ], [ %41, %39 ]
  %76 = getelementptr inbounds %struct.strand_t, ptr %40, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %36, label %39, !llvm.loop !53

79:                                               ; preds = %37, %145
  %80 = phi ptr [ %14, %37 ], [ %149, %145 ]
  %81 = phi i32 [ 0, %37 ], [ %147, %145 ]
  %82 = getelementptr inbounds %struct.strand_t, ptr %80, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !42
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.strand_t, ptr %80, i64 0, i32 7
  %87 = sext i32 %81 to i64
  %88 = getelementptr i32, ptr %28, i64 %87
  br label %89

89:                                               ; preds = %85, %140
  %90 = phi i64 [ 0, %85 ], [ %141, %140 ]
  %91 = load ptr, ptr %86, align 8, !tbaa !29
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !8
  %94 = getelementptr i32, ptr %88, i64 %90
  %95 = load i32, ptr %94, align 4, !tbaa !10
  %96 = getelementptr inbounds %struct.residue_t, ptr %93, i64 0, i32 11
  %97 = load i32, ptr %96, align 8, !tbaa !54
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.residue_t, ptr %93, i64 0, i32 12
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi i64 [ 0, %99 ], [ %111, %101 ]
  %103 = load ptr, ptr %100, align 8, !tbaa !55
  %104 = getelementptr inbounds [2 x i32], ptr %103, i64 %102
  %105 = load i32, ptr %104, align 4, !tbaa !10
  %106 = add nsw i32 %105, %95
  %107 = getelementptr inbounds [2 x i32], ptr %103, i64 %102, i64 1
  %108 = load i32, ptr %107, align 4, !tbaa !10
  %109 = add nsw i32 %108, %95
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, i32 noundef %106, i32 noundef %109) #26
  %111 = add nuw nsw i64 %102, 1
  %112 = load i32, ptr %96, align 8, !tbaa !54
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %101, label %115, !llvm.loop !56

115:                                              ; preds = %101, %89
  %116 = getelementptr inbounds %struct.residue_t, ptr %93, i64 0, i32 10
  %117 = load ptr, ptr %116, align 8, !tbaa !8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %140, label %119

119:                                              ; preds = %115, %137
  %120 = phi ptr [ %138, %137 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.extbond_t, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !57
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %90, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = add nsw i32 %122, %81
  %127 = sext i32 %126 to i64
  %128 = getelementptr i32, ptr %38, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !10
  %130 = getelementptr inbounds %struct.extbond_t, ptr %120, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !59
  %132 = add nsw i32 %131, %95
  %133 = getelementptr inbounds %struct.extbond_t, ptr %120, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !60
  %135 = add nsw i32 %134, %129
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, i32 noundef %132, i32 noundef %135) #26
  br label %137

137:                                              ; preds = %119, %125
  %138 = load ptr, ptr %120, align 8, !tbaa !8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %119, !llvm.loop !61

140:                                              ; preds = %137, %115
  %141 = add nuw nsw i64 %90, 1
  %142 = load i32, ptr %82, align 8, !tbaa !42
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %89, label %145, !llvm.loop !62

145:                                              ; preds = %140, %79
  %146 = phi i32 [ %83, %79 ], [ %142, %140 ]
  %147 = add nsw i32 %146, %81
  %148 = getelementptr inbounds %struct.strand_t, ptr %80, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %79, !llvm.loop !63

151:                                              ; preds = %145, %30, %33, %36
  %152 = phi ptr [ %28, %36 ], [ %28, %33 ], [ %31, %30 ], [ %28, %145 ]
  tail call void @free(ptr noundef nonnull %152) #25
  br label %153

153:                                              ; preds = %34, %151
  %154 = phi i32 [ 1, %34 ], [ 0, %151 ]
  %155 = tail call i32 @fclose(ptr noundef nonnull %8) #26
  br label %156

156:                                              ; preds = %153, %4
  %157 = phi i32 [ %154, %153 ], [ 0, %4 ]
  ret i32 %157
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @putdist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !8
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %7) #30
  br label %198

9:                                                ; preds = %4
  tail call void @select_atoms(ptr noundef nonnull %1, ptr noundef %2) #25
  %10 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9, %59
  %14 = phi ptr [ %61, %59 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = and i32 %16, -3
  %18 = shl i32 %16, 1
  %19 = and i32 %18, 2
  %20 = or disjoint i32 %19, %17
  store i32 %20, ptr %15, align 4, !tbaa !64
  %21 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !42
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = zext nneg i32 %22 to i64
  br label %28

28:                                               ; preds = %24, %56
  %29 = phi i64 [ 0, %24 ], [ %57, %56 ]
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !8
  %32 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !65
  %34 = and i32 %33, -3
  %35 = shl i32 %33, 1
  %36 = and i32 %35, 2
  %37 = or disjoint i32 %36, %34
  store i32 %37, ptr %32, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !23
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %53, %44 ], [ 0, %41 ]
  %46 = phi ptr [ %54, %44 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.atom_t, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !33
  %49 = and i32 %48, -3
  %50 = shl i32 %48, 1
  %51 = and i32 %50, 2
  %52 = or disjoint i32 %51, %49
  store i32 %52, ptr %47, align 8, !tbaa !33
  %53 = add nuw nsw i32 %45, 1
  %54 = getelementptr inbounds %struct.atom_t, ptr %46, i64 1
  %55 = icmp eq i32 %53, %39
  br i1 %55, label %56, label %44, !llvm.loop !66

56:                                               ; preds = %44, %28
  %57 = add nuw nsw i64 %29, 1
  %58 = icmp eq i64 %57, %27
  br i1 %58, label %59, label %28, !llvm.loop !67

59:                                               ; preds = %56, %13
  %60 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %13, !llvm.loop !68

63:                                               ; preds = %59, %9
  tail call void @select_atoms(ptr noundef nonnull %1, ptr noundef %3) #25
  %64 = load ptr, ptr %10, align 8, !tbaa !8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %73, %66 ], [ %64, %63 ]
  %68 = phi i32 [ %71, %66 ], [ 0, %63 ]
  %69 = getelementptr inbounds %struct.strand_t, ptr %67, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !42
  %71 = add nsw i32 %70, %68
  %72 = getelementptr inbounds %struct.strand_t, ptr %67, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !69

75:                                               ; preds = %66, %63
  %76 = phi i32 [ 0, %63 ], [ %71, %66 ]
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #29
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br i1 %65, label %105, label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @stderr, align 8, !tbaa !8
  %84 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %83) #30
  br label %198

85:                                               ; preds = %81, %100
  %86 = phi ptr [ %103, %100 ], [ %64, %81 ]
  %87 = phi i32 [ %101, %100 ], [ 0, %81 ]
  %88 = getelementptr inbounds %struct.strand_t, ptr %86, i64 0, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !42
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.strand_t, ptr %86, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !29
  %94 = sext i32 %87 to i64
  %95 = shl nsw i64 %94, 3
  %96 = getelementptr i8, ptr %79, i64 %95
  %97 = zext nneg i32 %89 to i64
  %98 = shl nuw nsw i64 %97, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %96, ptr align 8 %93, i64 %98, i1 false), !tbaa !8
  %99 = add i32 %87, %89
  br label %100

100:                                              ; preds = %91, %85
  %101 = phi i32 [ %87, %85 ], [ %99, %91 ]
  %102 = getelementptr inbounds %struct.strand_t, ptr %86, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %85, !llvm.loop !70

105:                                              ; preds = %100, %81
  %106 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9) #26
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = icmp sgt i32 %76, 0
  br i1 %109, label %110, label %196

110:                                              ; preds = %108
  %111 = zext nneg i32 %76 to i64
  br label %115

112:                                              ; preds = %105
  %113 = load ptr, ptr @stderr, align 8, !tbaa !8
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.18, ptr noundef %0) #27
  br label %196

115:                                              ; preds = %110, %192
  %116 = phi i64 [ 0, %110 ], [ %193, %192 ]
  %117 = phi i32 [ 0, %110 ], [ %194, %192 ]
  %118 = getelementptr inbounds ptr, ptr %79, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !8
  %120 = getelementptr inbounds %struct.residue_t, ptr %119, i64 0, i32 15
  %121 = load i32, ptr %120, align 8, !tbaa !23
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = add nuw nsw i64 %116, 1
  br label %192

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.residue_t, ptr %119, i64 0, i32 17
  %127 = add nuw nsw i64 %116, 1
  %128 = getelementptr inbounds %struct.residue_t, ptr %119, i64 0, i32 4
  %129 = trunc i64 %127 to i32
  br label %130

130:                                              ; preds = %125, %186
  %131 = phi i32 [ %121, %125 ], [ %187, %186 ]
  %132 = phi i64 [ 0, %125 ], [ %189, %186 ]
  %133 = phi i32 [ %117, %125 ], [ %188, %186 ]
  %134 = load ptr, ptr %126, align 8, !tbaa !43
  %135 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132
  %136 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !33
  %138 = and i32 %137, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %186, label %140

140:                                              ; preds = %130, %180
  %141 = phi i64 [ %181, %180 ], [ 0, %130 ]
  %142 = phi i32 [ %182, %180 ], [ %133, %130 ]
  %143 = getelementptr inbounds ptr, ptr %79, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !8
  %145 = getelementptr inbounds %struct.residue_t, ptr %144, i64 0, i32 15
  %146 = load i32, ptr %145, align 8, !tbaa !23
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = add nuw nsw i64 %141, 1
  br label %180

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.residue_t, ptr %144, i64 0, i32 17
  %152 = add nuw nsw i64 %141, 1
  %153 = getelementptr inbounds %struct.residue_t, ptr %144, i64 0, i32 4
  %154 = trunc i64 %152 to i32
  br label %155

155:                                              ; preds = %150, %174
  %156 = phi i32 [ %146, %150 ], [ %175, %174 ]
  %157 = phi i64 [ 0, %150 ], [ %177, %174 ]
  %158 = phi i32 [ %142, %150 ], [ %176, %174 ]
  %159 = load ptr, ptr %151, align 8, !tbaa !43
  %160 = getelementptr inbounds %struct.atom_t, ptr %159, i64 %157, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !33
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.atom_t, ptr %159, i64 %157
  %166 = load ptr, ptr %128, align 8, !tbaa !20
  %167 = load ptr, ptr %135, align 8, !tbaa !31
  %168 = load ptr, ptr %153, align 8, !tbaa !20
  %169 = load ptr, ptr %165, align 8, !tbaa !31
  %170 = tail call fastcc double @dist(ptr noundef nonnull %135, ptr noundef nonnull %165) #26
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %106, ptr noundef nonnull @.str.19, i32 noundef %129, ptr noundef %166, ptr noundef %167, i32 noundef %154, ptr noundef %168, ptr noundef %169, double noundef %170) #26
  %172 = add nsw i32 %158, 1
  %173 = load i32, ptr %145, align 8, !tbaa !23
  br label %174

174:                                              ; preds = %155, %164
  %175 = phi i32 [ %173, %164 ], [ %156, %155 ]
  %176 = phi i32 [ %172, %164 ], [ %158, %155 ]
  %177 = add nuw nsw i64 %157, 1
  %178 = sext i32 %175 to i64
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %155, label %180, !llvm.loop !71

180:                                              ; preds = %174, %148
  %181 = phi i64 [ %149, %148 ], [ %152, %174 ]
  %182 = phi i32 [ %142, %148 ], [ %176, %174 ]
  %183 = icmp eq i64 %181, %111
  br i1 %183, label %184, label %140, !llvm.loop !72

184:                                              ; preds = %180
  %185 = load i32, ptr %120, align 8, !tbaa !23
  br label %186

186:                                              ; preds = %184, %130
  %187 = phi i32 [ %131, %130 ], [ %185, %184 ]
  %188 = phi i32 [ %133, %130 ], [ %182, %184 ]
  %189 = add nuw nsw i64 %132, 1
  %190 = sext i32 %187 to i64
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %130, label %192, !llvm.loop !73

192:                                              ; preds = %186, %123
  %193 = phi i64 [ %124, %123 ], [ %127, %186 ]
  %194 = phi i32 [ %117, %123 ], [ %188, %186 ]
  %195 = icmp eq i64 %193, %111
  br i1 %195, label %196, label %115, !llvm.loop !74

196:                                              ; preds = %192, %112, %108
  %197 = phi i32 [ 0, %112 ], [ 0, %108 ], [ %194, %192 ]
  tail call void @free(ptr noundef nonnull %79) #25
  br label %198

198:                                              ; preds = %82, %196, %6
  %199 = phi i32 [ 0, %6 ], [ %197, %196 ], [ 0, %82 ]
  ret i32 %199
}

; Function Attrs: optsize
declare void @select_atoms(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  %4 = load double, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.atom_t, ptr %1, i64 0, i32 17
  %6 = load double, ptr %5, align 8, !tbaa !18
  %7 = fsub double %4, %6
  %8 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.atom_t, ptr %1, i64 0, i32 17, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !18
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.atom_t, ptr %1, i64 0, i32 17, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !18
  %17 = fsub double %14, %16
  %18 = fmul double %12, %12
  %19 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %18)
  %20 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %19)
  %21 = tail call double @llvm.sqrt.f64(double %20)
  ret double %21
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @putmatrix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4, %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !8
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %8) #30
  br label %43

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @stdout, align 8, !tbaa !8
  br label %21

15:                                               ; preds = %10
  %16 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull %0) #27
  br label %43

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %16, %15 ], [ %14, %13 ]
  br label %23

23:                                               ; preds = %21, %32
  %24 = phi i64 [ 0, %21 ], [ %34, %32 ]
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  %27 = getelementptr inbounds [4 x double], ptr %1, i64 %24, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !18
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.22, double noundef %28) #26
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %25, !llvm.loop !75

32:                                               ; preds = %25
  %33 = tail call i32 @fputc(i32 10, ptr %22)
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %23, !llvm.loop !76

36:                                               ; preds = %32
  %37 = icmp eq ptr %22, null
  %38 = load ptr, ptr @stdout, align 8
  %39 = icmp eq ptr %22, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @fclose(ptr noundef nonnull %22) #26
  br label %43

43:                                               ; preds = %18, %7, %41, %36
  %44 = phi i32 [ 0, %41 ], [ 0, %36 ], [ 1, %7 ], [ 1, %18 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initres() unnamed_addr #0 {
  tail call void @NAB_initres(ptr noundef nonnull @res, i32 noundef 0) #25
  %1 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #29
  store ptr %4, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !8
  %8 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr %7) #30
  tail call void @exit(i32 noundef 1) #31
  unreachable

9:                                                ; preds = %3, %0
  %10 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #29
  store ptr %13, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @stderr, align 8, !tbaa !8
  %17 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 38, i64 1, ptr %16) #30
  tail call void @exit(i32 noundef 1) #31
  unreachable

18:                                               ; preds = %12, %9
  %19 = load i32, ptr @n_atab, align 4, !tbaa !10
  store i32 %19, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  store ptr @atab, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_atab() unnamed_addr #0 {
  %1 = load i1, ptr @init_atab.init, align 4
  br i1 %1, label %18, label %2

2:                                                ; preds = %0, %10
  %3 = phi ptr [ %15, %10 ], [ @atab, %0 ]
  %4 = phi i32 [ %14, %10 ], [ 0, %0 ]
  %5 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #29
  store ptr %5, ptr %3, align 8, !tbaa !31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !8
  %9 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 35, i64 1, ptr %8) #30
  tail call void @exit(i32 noundef 1) #31
  unreachable

10:                                               ; preds = %2
  store i8 0, ptr %5, align 1, !tbaa !5
  %11 = getelementptr inbounds %struct.atom_t, ptr %3, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.atom_t, ptr %3, i64 0, i32 10
  store ptr null, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.atom_t, ptr %3, i64 0, i32 16
  store ptr null, ptr %13, align 8, !tbaa !79
  %14 = add nuw nsw i32 %4, 1
  %15 = getelementptr inbounds %struct.atom_t, ptr %3, i64 1
  %16 = icmp eq i32 %14, 1000
  br i1 %16, label %17, label %2, !llvm.loop !80

17:                                               ; preds = %10
  store i1 true, ptr @init_atab.init, align 4
  br label %18

18:                                               ; preds = %0, %17
  ret void
}

; Function Attrs: optsize
declare ptr @newmolecule() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @makebonds() unnamed_addr #13 {
  %1 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %127

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !43
  %5 = zext nneg i32 %1 to i64
  %6 = add nuw nsw i64 %5, 3
  %7 = and i64 %6, 4294967292
  %8 = add nsw i64 %5, -1
  %9 = insertelement <4 x i64> poison, i64 %8, i64 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %33, %3
  %12 = phi i64 [ 0, %3 ], [ %34, %33 ]
  %13 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3 ], [ %35, %33 ]
  %14 = icmp ule <4 x i64> %13, %10
  %15 = extractelement <4 x i1> %14, i64 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.atom_t, ptr %4, i64 %12, i32 3
  store i32 0, ptr %17, align 4, !tbaa !81
  br label %18

18:                                               ; preds = %16, %11
  %19 = extractelement <4 x i1> %14, i64 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = or disjoint i64 %12, 1
  %22 = getelementptr inbounds %struct.atom_t, ptr %4, i64 %21, i32 3
  store i32 0, ptr %22, align 4, !tbaa !81
  br label %23

23:                                               ; preds = %20, %18
  %24 = extractelement <4 x i1> %14, i64 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = or disjoint i64 %12, 2
  %27 = getelementptr inbounds %struct.atom_t, ptr %4, i64 %26, i32 3
  store i32 0, ptr %27, align 4, !tbaa !81
  br label %28

28:                                               ; preds = %25, %23
  %29 = extractelement <4 x i1> %14, i64 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = or disjoint i64 %12, 3
  %32 = getelementptr inbounds %struct.atom_t, ptr %4, i64 %31, i32 3
  store i32 0, ptr %32, align 4, !tbaa !81
  br label %33

33:                                               ; preds = %30, %28
  %34 = add i64 %12, 4
  %35 = add <4 x i64> %13, <i64 4, i64 4, i64 4, i64 4>
  %36 = icmp eq i64 %34, %7
  br i1 %36, label %37, label %11, !llvm.loop !82

37:                                               ; preds = %33
  %38 = icmp eq i32 %1, 1
  br i1 %38, label %127, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !43
  %41 = tail call ptr @__ctype_b_loc() #32
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  br label %49

43:                                               ; preds = %122, %64
  %44 = phi i32 [ %50, %64 ], [ %124, %122 ]
  %45 = add nsw i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %68, %46
  %48 = add nuw nsw i64 %52, 1
  br i1 %47, label %49, label %127, !llvm.loop !85

49:                                               ; preds = %39, %43
  %50 = phi i32 [ %1, %39 ], [ %44, %43 ]
  %51 = phi i64 [ 0, %39 ], [ %68, %43 ]
  %52 = phi i64 [ 1, %39 ], [ %48, %43 ]
  %53 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = sext i8 %55 to i64
  %57 = getelementptr inbounds i16, ptr %42, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !86
  %59 = and i16 %58, 2048
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds i8, ptr %54, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !5
  br label %64

64:                                               ; preds = %49, %61
  %65 = phi i8 [ %63, %61 ], [ %55, %49 ]
  %66 = and i8 %65, -33
  %67 = icmp eq i8 %66, 72
  %68 = add nuw nsw i64 %51, 1
  %69 = sext i32 %50 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %43

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %51, i32 3
  %73 = trunc i64 %51 to i32
  br label %74

74:                                               ; preds = %71, %122
  %75 = phi i64 [ %52, %71 ], [ %123, %122 ]
  %76 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = sext i8 %78 to i64
  %80 = getelementptr inbounds i16, ptr %42, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !86
  %82 = and i16 %81, 2048
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds i8, ptr %77, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !5
  br label %87

87:                                               ; preds = %74, %84
  %88 = phi i8 [ %86, %84 ], [ %78, %74 ]
  %89 = and i8 %88, -33
  %90 = icmp eq i8 %89, 72
  %91 = tail call fastcc double @dist(ptr noundef nonnull %53, ptr noundef nonnull %76) #26
  %92 = or i1 %67, %90
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = fcmp ugt double %91, 1.200000e+00
  br i1 %94, label %122, label %95

95:                                               ; preds = %93
  %96 = load i32, ptr %72, align 4, !tbaa !81
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %75, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !81
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %111, label %122

102:                                              ; preds = %87
  %103 = fcmp ugt double %91, 1.850000e+00
  br i1 %103, label %122, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %72, align 4, !tbaa !81
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %75, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !81
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %122

111:                                              ; preds = %107, %98
  %112 = phi i32 [ %96, %98 ], [ %105, %107 ]
  %113 = phi ptr [ %99, %98 ], [ %108, %107 ]
  %114 = add nsw i32 %112, 1
  store i32 %114, ptr %72, align 4, !tbaa !81
  %115 = sext i32 %112 to i64
  %116 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %51, i32 4, i64 %115
  %117 = trunc i64 %75 to i32
  store i32 %117, ptr %116, align 4, !tbaa !10
  %118 = load i32, ptr %113, align 4, !tbaa !81
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %113, align 4, !tbaa !81
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %75, i32 4, i64 %120
  store i32 %73, ptr %121, align 4, !tbaa !10
  br label %122

122:                                              ; preds = %111, %95, %98, %93, %104, %107, %102
  %123 = add nuw nsw i64 %75, 1
  %124 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !23
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %74, label %43, !llvm.loop !88

127:                                              ; preds = %43, %0, %37
  ret void
}

; Function Attrs: optsize
declare i32 @addresidue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @addstrand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @isnewres(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne i32 %2, %3
  %8 = or i1 %7, %6
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: optsize
declare void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @NAB_initres(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @initcid(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %58

5:                                                ; preds = %3
  %6 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 28, i64 1, ptr %9) #30
  br label %57

11:                                               ; preds = %5
  %12 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  %13 = getelementptr inbounds %struct.cid_t, ptr %6, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !89
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !8
  %17 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 31, i64 1, ptr %16) #30
  br label %57

18:                                               ; preds = %11
  store i32 65, ptr %6, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.cid_t, ptr %6, i64 0, i32 1
  store i32 90, ptr %19, align 4, !tbaa !92
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 65, %18 ], [ %23, %20 ]
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !5
  %23 = add nuw nsw i64 %21, 1
  %24 = icmp ult i64 %21, 90
  br i1 %24, label %20, label %25, !llvm.loop !93

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27, %43
  %32 = phi ptr [ %45, %43 ], [ %29, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #24
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, ptr %33, align 1, !tbaa !5
  %38 = add i8 %37, -65
  %39 = icmp ult i8 %38, 26
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = zext nneg i8 %37 to i64
  %42 = getelementptr inbounds i8, ptr %12, i64 %41
  store i8 1, ptr %42, align 1, !tbaa !5
  br label %43

43:                                               ; preds = %31, %40, %36
  %44 = getelementptr inbounds %struct.strand_t, ptr %32, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %31, !llvm.loop !94

47:                                               ; preds = %43, %27
  br label %48

48:                                               ; preds = %47, %53
  %49 = phi i64 [ %54, %53 ], [ 65, %47 ]
  %50 = getelementptr inbounds i8, ptr %12, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = add nuw nsw i64 %49, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr %6, align 8, !tbaa !91
  %56 = icmp eq i32 %55, 91
  br i1 %56, label %58, label %48, !llvm.loop !95

57:                                               ; preds = %15, %8
  tail call fastcc void @freecid(ptr noundef %6) #26
  br label %58

58:                                               ; preds = %53, %48, %57, %25, %3
  %59 = phi ptr [ null, %3 ], [ null, %57 ], [ %6, %25 ], [ %6, %48 ], [ %6, %53 ]
  ret ptr %59
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @nextcid(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = load ptr, ptr @stderr, align 8, !tbaa !8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 18, i64 1, ptr %9) #30
  br label %50

11:                                               ; preds = %6
  %12 = load i32, ptr %0, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.cid_t, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %50, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8, !tbaa !25
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #24
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8, ptr %19, align 1, !tbaa !5
  %24 = add i8 %23, -65
  %25 = icmp ult i8 %24, 26
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = zext nneg i8 %23 to i32
  br label %50

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds %struct.cid_t, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = sext i32 %12 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  store i8 1, ptr %32, align 1, !tbaa !5
  %33 = load i32, ptr %0, align 8, !tbaa !91
  %34 = load i32, ptr %13, align 4, !tbaa !92
  %35 = sext i32 %33 to i64
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %33)
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %43, %28
  %39 = phi i64 [ %40, %43 ], [ %35, %28 ]
  %40 = add nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %0, align 8, !tbaa !91
  %42 = icmp eq i64 %39, %37
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %29, align 8, !tbaa !89
  %45 = getelementptr inbounds i8, ptr %44, i64 %40
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %38, !llvm.loop !96

48:                                               ; preds = %16
  %49 = add nsw i32 %12, 1
  store i32 %49, ptr %0, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %38, %43, %11, %4, %48, %26, %8
  %51 = phi i32 [ 32, %8 ], [ %27, %26 ], [ %12, %48 ], [ 32, %4 ], [ 32, %11 ], [ %12, %43 ], [ %12, %38 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mk_brook_rname(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.residue_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %4) #25
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.36) #24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 4661280, ptr %0, align 1
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.32) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 4268064, ptr %0, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.38) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 5513248, ptr %0, align 1
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.34) #24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 4399136, ptr %0, align 1
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.40) #24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 5578784, ptr %0, align 1
  br label %25

25:                                               ; preds = %24, %21
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.80) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4661280, ptr %0, align 1
  br label %29

29:                                               ; preds = %28, %25
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.81) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4268064, ptr %0, align 1
  br label %33

33:                                               ; preds = %32, %29
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.82) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 5513248, ptr %0, align 1
  br label %37

37:                                               ; preds = %36, %33
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.83) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4399136, ptr %0, align 1
  br label %41

41:                                               ; preds = %40, %37
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.84) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 4661280, ptr %0, align 1
  br label %45

45:                                               ; preds = %44, %41
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.85) #24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4268064, ptr %0, align 1
  br label %49

49:                                               ; preds = %48, %45
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.86) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 5578784, ptr %0, align 1
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.87) #24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 4399136, ptr %0, align 1
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.88) #24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 4661280, ptr %0, align 1
  br label %61

61:                                               ; preds = %60, %57
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.89) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 4268064, ptr %0, align 1
  br label %65

65:                                               ; preds = %64, %61
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.90) #24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 5513248, ptr %0, align 1
  br label %69

69:                                               ; preds = %68, %65
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.91) #24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 4399136, ptr %0, align 1
  br label %73

73:                                               ; preds = %72, %69
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.92) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 4661280, ptr %0, align 1
  br label %77

77:                                               ; preds = %76, %73
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.93) #24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 4268064, ptr %0, align 1
  br label %81

81:                                               ; preds = %80, %77
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.94) #24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 5578784, ptr %0, align 1
  br label %85

85:                                               ; preds = %84, %81
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.95) #24
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 4399136, ptr %0, align 1
  br label %89

89:                                               ; preds = %88, %85
  %90 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.96) #24
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 4661280, ptr %0, align 1
  br label %93

93:                                               ; preds = %92, %89
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.97) #24
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 4268064, ptr %0, align 1
  br label %97

97:                                               ; preds = %96, %93
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.98) #24
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 5513248, ptr %0, align 1
  br label %101

101:                                              ; preds = %100, %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.99) #24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 4399136, ptr %0, align 1
  br label %105

105:                                              ; preds = %104, %101
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.100) #24
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 4661280, ptr %0, align 1
  br label %109

109:                                              ; preds = %108, %105
  %110 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 4268064, ptr %0, align 1
  br label %113

113:                                              ; preds = %112, %109
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #24
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 5578784, ptr %0, align 1
  br label %117

117:                                              ; preds = %116, %113
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #24
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 4399136, ptr %0, align 1
  br label %121

121:                                              ; preds = %120, %117
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #24
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 5458248, ptr %0, align 1
  br label %125

125:                                              ; preds = %124, %121
  %126 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #24
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 5458248, ptr %0, align 1
  br label %129

129:                                              ; preds = %128, %125
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #24
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 5458248, ptr %0, align 1
  br label %133

133:                                              ; preds = %132, %129
  %134 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #24
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 5462339, ptr %0, align 1
  br label %137

137:                                              ; preds = %136, %133
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #24
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 5264193, ptr %0, align 1
  br label %141

141:                                              ; preds = %140, %137
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #24
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 5590087, ptr %0, align 1
  br label %145

145:                                              ; preds = %144, %141
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mk_wwpdb_rname(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.residue_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %4) #25
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.36) #24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 4661280, ptr %0, align 1
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.32) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 4268064, ptr %0, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.38) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 5513248, ptr %0, align 1
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.34) #24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 4399136, ptr %0, align 1
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.40) #24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 5578784, ptr %0, align 1
  br label %25

25:                                               ; preds = %24, %21
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.80) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4670496, ptr %0, align 1
  br label %29

29:                                               ; preds = %28, %25
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.81) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4277280, ptr %0, align 1
  br label %33

33:                                               ; preds = %32, %29
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.82) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 5522464, ptr %0, align 1
  br label %37

37:                                               ; preds = %36, %33
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.83) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4408352, ptr %0, align 1
  br label %41

41:                                               ; preds = %40, %37
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.84) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 4674080, ptr %0, align 1
  br label %45

45:                                               ; preds = %44, %41
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.85) #24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4280864, ptr %0, align 1
  br label %49

49:                                               ; preds = %48, %45
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.86) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 5591584, ptr %0, align 1
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.87) #24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 4411936, ptr %0, align 1
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.88) #24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 4670496, ptr %0, align 1
  br label %61

61:                                               ; preds = %60, %57
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.89) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 4277280, ptr %0, align 1
  br label %65

65:                                               ; preds = %64, %61
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.90) #24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 5522464, ptr %0, align 1
  br label %69

69:                                               ; preds = %68, %65
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.91) #24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 4408352, ptr %0, align 1
  br label %73

73:                                               ; preds = %72, %69
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.92) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 4674080, ptr %0, align 1
  br label %77

77:                                               ; preds = %76, %73
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.93) #24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 4280864, ptr %0, align 1
  br label %81

81:                                               ; preds = %80, %77
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.94) #24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 5591584, ptr %0, align 1
  br label %85

85:                                               ; preds = %84, %81
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.95) #24
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 4411936, ptr %0, align 1
  br label %89

89:                                               ; preds = %88, %85
  %90 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.96) #24
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 4670496, ptr %0, align 1
  br label %93

93:                                               ; preds = %92, %89
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.97) #24
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 4277280, ptr %0, align 1
  br label %97

97:                                               ; preds = %96, %93
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.98) #24
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 5522464, ptr %0, align 1
  br label %101

101:                                              ; preds = %100, %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.99) #24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 4408352, ptr %0, align 1
  br label %105

105:                                              ; preds = %104, %101
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.100) #24
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 4674080, ptr %0, align 1
  br label %109

109:                                              ; preds = %108, %105
  %110 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 4280864, ptr %0, align 1
  br label %113

113:                                              ; preds = %112, %109
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #24
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 5591584, ptr %0, align 1
  br label %117

117:                                              ; preds = %116, %113
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #24
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 4411936, ptr %0, align 1
  br label %121

121:                                              ; preds = %120, %117
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #24
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 5458248, ptr %0, align 1
  br label %125

125:                                              ; preds = %124, %121
  %126 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #24
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 5458248, ptr %0, align 1
  br label %129

129:                                              ; preds = %128, %125
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #24
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 5458248, ptr %0, align 1
  br label %133

133:                                              ; preds = %132, %129
  %134 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #24
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 5462339, ptr %0, align 1
  br label %137

137:                                              ; preds = %136, %133
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #24
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 5264193, ptr %0, align 1
  br label %141

141:                                              ; preds = %140, %137
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #24
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 5590087, ptr %0, align 1
  br label %145

145:                                              ; preds = %144, %141
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mk_brook_aname(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #18 {
  store i8 32, ptr %0, align 1, !tbaa !5
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %5 = icmp ugt i64 %4, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %1, i64 3
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 32
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i8 %8, ptr %0, align 1, !tbaa !5
  br label %11

11:                                               ; preds = %10, %6, %3
  %12 = load i8, ptr %1, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !5
  %17 = getelementptr inbounds i8, ptr %1, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %0, i64 3
  %20 = icmp eq i8 %18, 39
  %21 = select i1 %20, i8 42, i8 %18
  store i8 %21, ptr %19, align 1, !tbaa !5
  %22 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 0, ptr %22, align 1, !tbaa !5
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.121, i64 noundef 2) #24
  %24 = icmp eq i32 %23, 0
  %25 = add i8 %21, -49
  %26 = icmp ult i8 %25, 3
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %44

28:                                               ; preds = %11
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.122, i64 noundef 3) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.123, i64 noundef 3) #24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.124, i64 noundef 3) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.125, i64 noundef 3) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(3) @.str.126, i64 noundef 2) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %28
  store i8 %21, ptr %0, align 1, !tbaa !5
  store i8 32, ptr %19, align 1, !tbaa !5
  br label %44

44:                                               ; preds = %43, %40, %37, %34, %31, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mk_wwpdb_aname(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #18 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %4 = icmp ugt i64 %3, 3
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 32
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 5) #25
  br label %15

11:                                               ; preds = %5, %2
  store i8 32, ptr %0, align 1, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 3) #25
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 0, ptr %14, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8 32, ptr %16, align 1, !tbaa !5
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i8 [ 32, %19 ], [ %17, %15 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8 32, ptr %22, align 1, !tbaa !5
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i8 [ 32, %25 ], [ %23, %20 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8 32, ptr %28, align 1, !tbaa !5
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i8 [ 32, %31 ], [ %29, %26 ]
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.127, i64 noundef 4) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.128, i64 noundef 5, i1 false) #25
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8 [ 39, %36 ], [ %33, %32 ]
  %39 = phi i8 [ 53, %36 ], [ %27, %32 ]
  %40 = phi i8 [ 72, %36 ], [ %21, %32 ]
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.129, i64 noundef 4) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.130, i64 noundef 5, i1 false) #25
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i8 [ 39, %43 ], [ %38, %37 ]
  %46 = phi i8 [ 39, %43 ], [ %39, %37 ]
  %47 = phi i8 [ 53, %43 ], [ %40, %37 ]
  %48 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #24
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 noundef 5, i1 false) #25
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i8 [ 39, %50 ], [ %45, %44 ]
  %53 = phi i8 [ 50, %50 ], [ %46, %44 ]
  %54 = phi i8 [ 72, %50 ], [ %47, %44 ]
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.132, i64 noundef 4) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.133, i64 noundef 5, i1 false) #25
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i8 [ 39, %57 ], [ %52, %51 ]
  %60 = phi i8 [ 39, %57 ], [ %53, %51 ]
  %61 = phi i8 [ 50, %57 ], [ %54, %51 ]
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.134, i64 noundef 4) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.135, i64 noundef 5, i1 false) #25
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i8 [ 49, %64 ], [ %59, %58 ]
  %67 = phi i8 [ 80, %64 ], [ %60, %58 ]
  %68 = phi i8 [ 79, %64 ], [ %61, %58 ]
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.136, i64 noundef 4) #24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.137, i64 noundef 5, i1 false) #25
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8 [ 50, %71 ], [ %66, %65 ]
  %74 = phi i8 [ 80, %71 ], [ %67, %65 ]
  %75 = phi i8 [ 79, %71 ], [ %68, %65 ]
  %76 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.138, i64 noundef 4) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.139, i64 noundef 5, i1 false) #25
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i8 [ 39, %78 ], [ %73, %72 ]
  %81 = phi i8 [ 53, %78 ], [ %74, %72 ]
  %82 = phi i8 [ 79, %78 ], [ %75, %72 ]
  %83 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.140, i64 noundef 4) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.141, i64 noundef 5, i1 false) #25
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i8 [ 39, %85 ], [ %80, %79 ]
  %88 = phi i8 [ 51, %85 ], [ %81, %79 ]
  %89 = phi i8 [ 79, %85 ], [ %82, %79 ]
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.142, i64 noundef 4) #24
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %137, label %92

92:                                               ; preds = %86
  %93 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.143, i64 noundef 4) #24
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %137, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.144, i64 noundef 4) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.145, i64 noundef 4) #24
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %137, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.146, i64 noundef 4) #24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %137, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.147, i64 noundef 4) #24
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %137, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.148, i64 noundef 4) #24
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.149, i64 noundef 4) #24
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.150, i64 noundef 4) #24
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.151, i64 noundef 4) #24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.152, i64 noundef 4) #24
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %119
  %123 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.153, i64 noundef 4) #24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.154, i64 noundef 4) #24
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.155, i64 noundef 4) #24
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.156, i64 noundef 4) #24
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.157, i64 noundef 4) #24
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %86
  store i8 %89, ptr %0, align 1, !tbaa !5
  store i8 %88, ptr %16, align 1, !tbaa !5
  store i8 %87, ptr %22, align 1, !tbaa !5
  store i8 32, ptr %28, align 1, !tbaa !5
  br label %138

138:                                              ; preds = %137, %134
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @freecid(ptr noundef %0) unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cid_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #25
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #25
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize willreturn memory(read) }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { cold optsize }
attributes #28 = { nounwind }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { cold }
attributes #31 = { noreturn nounwind optsize }
attributes #32 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !11, i64 44}
!17 = !{!"residue_t", !9, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !9, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !11, i64 88, !9, i64 96, !11, i64 104, !9, i64 112, !9, i64 120}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !6, i64 0}
!20 = !{!17, !9, i64 24}
!21 = !{!17, !9, i64 32}
!22 = !{!17, !11, i64 8}
!23 = !{!17, !11, i64 104}
!24 = !{}
!25 = !{!26, !9, i64 0}
!26 = !{!"strand_t", !9, i64 0, !11, i64 8, !11, i64 12, !9, i64 16, !9, i64 24, !11, i64 32, !11, i64 36, !9, i64 40}
!27 = distinct !{!27, !13}
!28 = !{!26, !11, i64 36}
!29 = !{!26, !9, i64 40}
!30 = !{i32 0, i32 2}
!31 = !{!32, !9, i64 0}
!32 = !{!"atom_t", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !9, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !9, i64 96, !11, i64 104, !19, i64 112, !19, i64 120, !11, i64 128, !11, i64 132, !9, i64 136, !6, i64 144, !19, i64 168}
!33 = !{!32, !11, i64 16}
!34 = !{!32, !9, i64 56}
!35 = !{!32, !19, i64 64}
!36 = !{!32, !19, i64 72}
!37 = !{!32, !19, i64 88}
!38 = !{!32, !19, i64 80}
!39 = !{!40, !11, i64 120}
!40 = !{!"molecule_t", !6, i64 0, !11, i64 96, !9, i64 104, !11, i64 112, !11, i64 116, !11, i64 120, !9, i64 128}
!41 = distinct !{!41, !13}
!42 = !{!26, !11, i64 32}
!43 = !{!17, !9, i64 120}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = !{!40, !11, i64 96}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = !{!17, !11, i64 72}
!55 = !{!17, !9, i64 80}
!56 = distinct !{!56, !13}
!57 = !{!58, !11, i64 12}
!58 = !{!"extbond_t", !9, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!59 = !{!58, !11, i64 8}
!60 = !{!58, !11, i64 16}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = !{!26, !11, i64 12}
!65 = !{!17, !11, i64 40}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = !{!32, !9, i64 8}
!78 = !{!32, !9, i64 96}
!79 = !{!32, !9, i64 136}
!80 = distinct !{!80, !13}
!81 = !{!32, !11, i64 20}
!82 = distinct !{!82, !13, !83, !84}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = distinct !{!85, !13}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !6, i64 0}
!88 = distinct !{!88, !13}
!89 = !{!90, !9, i64 8}
!90 = !{!"cid_t", !11, i64 0, !11, i64 4, !9, i64 8}
!91 = !{!90, !11, i64 0}
!92 = !{!90, !11, i64 4}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
