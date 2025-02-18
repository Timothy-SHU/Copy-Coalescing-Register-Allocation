; ModuleID = 'molio.c'
source_filename = "molio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.cid_t = type { i32, i32, ptr }
%struct.extbond_t = type { ptr, i32, i32, i32 }

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
@.str.121 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c" HB\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"PHE\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"TYR\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"TRP\00", align 1
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

; Function Attrs: nounwind uwtable
define dso_local ptr @getpdb(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !60 {
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
  %15 = icmp eq ptr %0, null
  br i1 %15, label %19, label %16, !prof !61

16:                                               ; preds = %2
  %17 = load i8, ptr %0, align 1, !tbaa !62
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21, !prof !61

19:                                               ; preds = %16, %2
  %20 = load ptr, ptr @stdin, align 8, !tbaa !65
  br label %41

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26, !prof !61

24:                                               ; preds = %21
  %25 = load ptr, ptr @stdin, align 8, !tbaa !65
  br label %41

26:                                               ; preds = %21
  %27 = tail call i32 @get_mytaskid() #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35, !prof !67

29:                                               ; preds = %26
  %30 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35, !prof !61

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !65
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #23
  br label %35

35:                                               ; preds = %29, %32, %26
  %36 = phi ptr [ null, %32 ], [ %30, %29 ], [ null, %26 ]
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], [ 0, %26 ]
  tail call void @reducerror(i32 noundef %37) #22
  %38 = tail call i32 @get_mytaskid() #22
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr %36, ptr null, !prof !67
  br label %41

41:                                               ; preds = %35, %24, %19
  %42 = phi ptr [ %25, %24 ], [ %20, %19 ], [ %40, %35 ]
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #22
  %43 = icmp eq ptr %1, null
  br i1 %43, label %44, label %45, !prof !67

44:                                               ; preds = %41
  store i8 0, ptr %14, align 16, !tbaa !62
  br label %47

45:                                               ; preds = %41
  %46 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #22
  br label %47

47:                                               ; preds = %45, %44
  call fastcc void @initres()
  %48 = load i1, ptr @init_atab.init, align 4
  br i1 %48, label %65, label %49, !prof !61

49:                                               ; preds = %47, %57
  %50 = phi ptr [ %62, %57 ], [ @atab, %47 ]
  %51 = phi i32 [ %61, %57 ], [ 0, %47 ]
  %52 = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24
  store ptr %52, ptr %50, align 8, !tbaa !68
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57, !prof !72

54:                                               ; preds = %49
  %55 = load ptr, ptr @stderr, align 8, !tbaa !65
  %56 = call i64 @fwrite(ptr nonnull @.str.53, i64 35, i64 1, ptr %55) #23
  call void @exit(i32 noundef 1) #25
  unreachable

57:                                               ; preds = %49
  store i8 0, ptr %52, align 1, !tbaa !62
  %58 = getelementptr inbounds %struct.atom_t, ptr %50, i64 0, i32 1
  store ptr null, ptr %58, align 8, !tbaa !73
  %59 = getelementptr inbounds %struct.atom_t, ptr %50, i64 0, i32 10
  store ptr null, ptr %59, align 8, !tbaa !74
  %60 = getelementptr inbounds %struct.atom_t, ptr %50, i64 0, i32 16
  store ptr null, ptr %60, align 8, !tbaa !75
  %61 = add nuw nsw i32 %51, 1
  %62 = getelementptr inbounds %struct.atom_t, ptr %50, i64 1
  %63 = icmp eq i32 %61, 1000
  br i1 %63, label %64, label %49, !prof !76, !llvm.loop !77

64:                                               ; preds = %57
  store i1 true, ptr @init_atab.init, align 4
  br label %65

65:                                               ; preds = %64, %47
  %66 = call ptr @newmolecule() #22
  store i8 0, ptr %7, align 1, !tbaa !62
  store i32 0, ptr @n_atab, align 4, !tbaa !80
  %67 = call ptr @ggets(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %42) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %317, label %69, !prof !81

69:                                               ; preds = %65
  %70 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 80
  %71 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 12
  %72 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 4
  %73 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 2
  %74 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 17
  %75 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3
  %76 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 21
  %77 = getelementptr inbounds [10 x i8], ptr %8, i64 0, i64 6
  %78 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 22
  %79 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 30
  %80 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 8
  %81 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 38
  %82 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 46
  %83 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 54
  %84 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 6
  %85 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 60
  %86 = getelementptr inbounds %struct.molecule_t, ptr %66, i64 0, i32 2
  br label %87

87:                                               ; preds = %69, %311
  %88 = phi i32 [ 0, %69 ], [ %314, %311 ]
  %89 = phi i32 [ 0, %69 ], [ %313, %311 ]
  %90 = phi i32 [ 0, %69 ], [ %312, %311 ]
  %91 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %92 = trunc i64 %91 to i32
  %93 = icmp slt i32 %92, 80
  br i1 %93, label %94, label %101, !prof !82

94:                                               ; preds = %87
  %95 = shl i64 %91, 32
  %96 = ashr exact i64 %95, 32
  %97 = getelementptr i8, ptr %3, i64 %96
  %98 = sub i64 79, %91
  %99 = and i64 %98, 4294967295
  %100 = add nuw nsw i64 %99, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %97, i8 32, i64 %100, i1 false), !tbaa !62
  br label %101

101:                                              ; preds = %94, %87
  store i8 0, ptr %70, align 16, !tbaa !62
  %102 = load i32, ptr %3, align 16
  %103 = icmp eq i32 %102, 1297044545
  br i1 %103, label %107, label %104, !prof !83

104:                                              ; preds = %101
  %105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.25, ptr noundef nonnull dereferenceable(6) %3, i64 6)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %295, !prof !84

107:                                              ; preds = %104, %101
  %108 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %71, i64 noundef 4) #22
  store i8 0, ptr %72, align 4, !tbaa !62
  br label %109

109:                                              ; preds = %115, %107
  %110 = phi ptr [ %5, %107 ], [ %116, %115 ]
  %111 = phi ptr [ %5, %107 ], [ %117, %115 ]
  %112 = load i8, ptr %111, align 1, !tbaa !62
  switch i8 %112, label %113 [
    i8 0, label %118
    i8 32, label %115
  ], !prof !85

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %110, i64 1
  store i8 %112, ptr %110, align 1, !tbaa !62
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi ptr [ %114, %113 ], [ %110, %109 ]
  %117 = getelementptr inbounds i8, ptr %111, i64 1
  br label %109, !llvm.loop !86

118:                                              ; preds = %109
  store i8 0, ptr %110, align 1, !tbaa !62
  %119 = load i8, ptr %5, align 4
  %120 = add i8 %119, -49
  %121 = icmp ult i8 %120, 3
  br i1 %121, label %122, label %141, !prof !87

122:                                              ; preds = %118
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #21
  %124 = trunc i64 %123 to i32
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %137

126:                                              ; preds = %122, %126
  %127 = phi i64 [ %128, %126 ], [ 0, %122 ]
  %128 = add nuw nsw i64 %127, 1
  %129 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !62
  %131 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %127
  store i8 %130, ptr %131, align 1, !tbaa !62
  %132 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #21
  %133 = shl i64 %132, 32
  %134 = add i64 %133, -4294967296
  %135 = ashr exact i64 %134, 32
  %136 = icmp slt i64 %128, %135
  br i1 %136, label %126, label %137, !llvm.loop !88

137:                                              ; preds = %126, %122
  %138 = phi i64 [ 0, %122 ], [ %128, %126 ]
  %139 = and i64 %138, 4294967295
  %140 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %139
  store i8 %119, ptr %140, align 1, !tbaa !62
  br label %141

141:                                              ; preds = %137, %118
  %142 = load i8, ptr %73, align 2, !tbaa !62
  %143 = icmp eq i8 %142, 42
  br i1 %143, label %144, label %145, !prof !87

144:                                              ; preds = %141
  store i8 39, ptr %73, align 2, !tbaa !62
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, ptr %5, align 4
  %147 = icmp eq i32 %146, 5059907
  br i1 %147, label %148, label %149, !prof !87

148:                                              ; preds = %145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @.str.27, i64 3, i1 false) #22
  br label %149

149:                                              ; preds = %148, %145
  %150 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %74, i64 noundef 3) #22
  store i8 0, ptr %75, align 1, !tbaa !62
  br label %151

151:                                              ; preds = %157, %149
  %152 = phi ptr [ %6, %149 ], [ %158, %157 ]
  %153 = phi ptr [ %6, %149 ], [ %159, %157 ]
  %154 = load i8, ptr %153, align 1, !tbaa !62
  switch i8 %154, label %155 [
    i8 0, label %160
    i8 32, label %157
  ], !prof !89

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %154, ptr %152, align 1, !tbaa !62
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi ptr [ %156, %155 ], [ %152, %151 ]
  %159 = getelementptr inbounds i8, ptr %153, i64 1
  br label %151, !llvm.loop !90

160:                                              ; preds = %151
  store i8 0, ptr %152, align 1, !tbaa !62
  %161 = load i32, ptr %5, align 4
  %162 = icmp eq i32 %161, 2568783
  br i1 %162, label %163, label %164, !prof !87

163:                                              ; preds = %160
  store i32 2, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4, !tbaa !91
  br label %164

164:                                              ; preds = %163, %160
  %165 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %5, ptr noundef nonnull dereferenceable(5) @.str.29, i64 5)
  %166 = icmp eq i32 %165, 0
  %167 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 7), align 4
  %168 = icmp eq i32 %167, 2
  %169 = select i1 %166, i1 %168, i1 false, !prof !87
  br i1 %169, label %170, label %171, !prof !87

170:                                              ; preds = %164
  store i32 2568776, ptr %5, align 4
  br label %171

171:                                              ; preds = %170, %164
  %172 = load i16, ptr %6, align 4
  %173 = icmp eq i16 %172, 65
  br i1 %173, label %174, label %175, !prof !87

174:                                              ; preds = %171
  store i32 4539457, ptr %6, align 4
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i16, ptr %6, align 4
  %177 = icmp eq i16 %176, 67
  br i1 %177, label %178, label %179, !prof !87

178:                                              ; preds = %175
  store i32 5527875, ptr %6, align 4
  br label %179

179:                                              ; preds = %178, %175
  %180 = load i16, ptr %6, align 4
  %181 = icmp eq i16 %180, 71
  br i1 %181, label %182, label %183, !prof !87

182:                                              ; preds = %179
  store i32 4281671, ptr %6, align 4
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i16, ptr %6, align 4
  %185 = icmp eq i16 %184, 84
  br i1 %185, label %186, label %187, !prof !87

186:                                              ; preds = %183
  store i32 5851220, ptr %6, align 4
  br label %187

187:                                              ; preds = %186, %183
  %188 = load i16, ptr %6, align 4
  %189 = icmp eq i16 %188, 85
  br i1 %189, label %190, label %191, !prof !87

190:                                              ; preds = %187
  store i32 4280917, ptr %6, align 4
  br label %191

191:                                              ; preds = %190, %187
  %192 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %76, i64 noundef 6) #22
  store i8 0, ptr %77, align 1, !tbaa !62
  %193 = load i8, ptr %76, align 1, !tbaa !62
  %194 = sext i8 %193 to i32
  %195 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %78, ptr noundef nonnull @.str.41, ptr noundef nonnull %11) #22
  %196 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %79, i64 noundef 8) #22
  store i8 0, ptr %80, align 1, !tbaa !62
  %197 = call double @strtod(ptr nocapture noundef nonnull %10, ptr noundef null) #22
  %198 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %81, i64 noundef 8) #22
  store i8 0, ptr %80, align 1, !tbaa !62
  %199 = call double @strtod(ptr nocapture noundef nonnull %10, ptr noundef null) #22
  %200 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %82, i64 noundef 8) #22
  store i8 0, ptr %80, align 1, !tbaa !62
  %201 = call double @strtod(ptr nocapture noundef nonnull %10, ptr noundef null) #22
  %202 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.42) #21
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204, !prof !93

204:                                              ; preds = %191
  %205 = getelementptr inbounds [82 x i8], ptr %3, i64 0, i64 54
  %206 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %205, ptr noundef nonnull @.str.43, ptr noundef nonnull %12, ptr noundef nonnull %13) #22
  br label %221

207:                                              ; preds = %191
  %208 = load i8, ptr %5, align 4
  switch i8 %208, label %215 [
    i8 72, label %209
    i8 67, label %210
    i8 78, label %211
    i8 79, label %212
    i8 83, label %213
    i8 80, label %214
  ], !prof !94

209:                                              ; preds = %207
  store double 1.200000e+00, ptr %13, align 8, !tbaa !95
  br label %216

210:                                              ; preds = %207
  store double 1.700000e+00, ptr %13, align 8, !tbaa !95
  br label %216

211:                                              ; preds = %207
  store double 1.550000e+00, ptr %13, align 8, !tbaa !95
  br label %216

212:                                              ; preds = %207
  store double 1.500000e+00, ptr %13, align 8, !tbaa !95
  br label %216

213:                                              ; preds = %207
  store double 1.800000e+00, ptr %13, align 8, !tbaa !95
  br label %216

214:                                              ; preds = %207
  store double 1.850000e+00, ptr %13, align 8, !tbaa !95
  br label %216

215:                                              ; preds = %207
  store double 1.700000e+00, ptr %13, align 8, !tbaa !95
  br label %216

216:                                              ; preds = %215, %214, %213, %212, %211, %210, %209
  store double 0.000000e+00, ptr %12, align 8, !tbaa !95
  %217 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %83, i64 noundef 6) #22
  store i8 0, ptr %84, align 1, !tbaa !62
  %218 = call double @strtod(ptr nocapture noundef nonnull %10, ptr noundef null) #22
  %219 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %85, i64 noundef 6) #22
  store i8 0, ptr %84, align 1, !tbaa !62
  %220 = call double @strtod(ptr nocapture noundef nonnull %10, ptr noundef null) #22
  br label %221

221:                                              ; preds = %216, %204
  %222 = phi double [ 1.000000e+00, %204 ], [ %218, %216 ]
  %223 = phi double [ 0.000000e+00, %204 ], [ %220, %216 ]
  %224 = icmp eq i32 %88, %194
  br i1 %224, label %257, label %225, !prof !96

225:                                              ; preds = %221
  %226 = load i32, ptr @n_atab, align 4, !tbaa !80
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %234, !prof !84

228:                                              ; preds = %225
  %229 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %230 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %229, ptr noundef nonnull dereferenceable(1) %7) #22
  %231 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %232 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %231, ptr noundef nonnull dereferenceable(1) %9) #22
  store i32 %90, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !99
  store i32 %226, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  call fastcc void @makebonds()
  %233 = call i32 @addresidue(ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull @res) #22
  call fastcc void @initres()
  store i32 0, ptr @n_atab, align 4, !tbaa !80
  br label %234

234:                                              ; preds = %228, %225
  %235 = add nsw i32 %89, 1
  %236 = icmp eq i8 %193, 32
  br i1 %236, label %237, label %239, !prof !101

237:                                              ; preds = %234
  %238 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %235) #22
  br label %241

239:                                              ; preds = %234
  %240 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 1
  store i8 %193, ptr %4, align 1, !tbaa !62
  store i8 0, ptr %240, align 1, !tbaa !62
  br label %241

241:                                              ; preds = %239, %237
  %242 = call i32 @addstrand(ptr noundef %66, ptr noundef nonnull %4) #22
  br label %243

243:                                              ; preds = %243, %241
  %244 = phi ptr [ %86, %241 ], [ %249, %243 ]
  %245 = load ptr, ptr %244, align 8, !tbaa !65, !nonnull !102, !noundef !102
  %246 = load ptr, ptr %245, align 8, !tbaa !103
  %247 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %246, ptr noundef nonnull dereferenceable(1) %4) #21
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds %struct.strand_t, ptr %245, i64 0, i32 4
  br i1 %248, label %250, label %243, !prof !105, !llvm.loop !106

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.strand_t, ptr %245, i64 0, i32 6
  store i32 10000, ptr %251, align 4, !tbaa !107
  %252 = call noalias dereferenceable_or_null(1280000) ptr @malloc(i64 noundef 1280000) #24
  %253 = getelementptr inbounds %struct.strand_t, ptr %245, i64 0, i32 7
  store ptr %252, ptr %253, align 8, !tbaa !108
  %254 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #22
  %255 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #22
  %256 = load i32, ptr %11, align 4, !tbaa !80
  br label %273

257:                                              ; preds = %221
  %258 = load i32, ptr %11, align 4, !tbaa !80
  %259 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #21
  %260 = icmp eq i32 %259, 0
  %261 = icmp eq i32 %90, %258
  %262 = and i1 %261, %260
  br i1 %262, label %273, label %263, !prof !109

263:                                              ; preds = %257
  %264 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %265 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(1) %7) #22
  %266 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %267 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %266, ptr noundef nonnull dereferenceable(1) %9) #22
  store i32 %90, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !99
  %268 = load i32, ptr @n_atab, align 4, !tbaa !80
  store i32 %268, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  call fastcc void @makebonds()
  %269 = call i32 @addresidue(ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull @res) #22
  call fastcc void @initres()
  %270 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #22
  %271 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #22
  %272 = load i32, ptr %11, align 4, !tbaa !80
  store i32 0, ptr @n_atab, align 4, !tbaa !80
  br label %273

273:                                              ; preds = %263, %257, %250
  %274 = phi i32 [ %256, %250 ], [ %272, %263 ], [ %90, %257 ]
  %275 = phi i32 [ %235, %250 ], [ %89, %263 ], [ %89, %257 ]
  %276 = phi i32 [ %194, %250 ], [ %88, %263 ], [ %88, %257 ]
  %277 = load i32, ptr @n_atab, align 4, !tbaa !80
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278
  call void @NAB_initatom(ptr noundef nonnull %279, i32 noundef 0) #22
  %280 = load ptr, ptr %279, align 16, !tbaa !68
  %281 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(1) %5) #22
  %282 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 2
  store i32 0, ptr %282, align 16, !tbaa !110
  %283 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 5
  store ptr null, ptr %283, align 8, !tbaa !111
  %284 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 17
  store double %197, ptr %284, align 16, !tbaa !95
  %285 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 17, i64 1
  store double %199, ptr %285, align 8, !tbaa !95
  %286 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 17, i64 2
  store double %201, ptr %286, align 16, !tbaa !95
  %287 = load double, ptr %12, align 8, !tbaa !95
  %288 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 6
  store double %287, ptr %288, align 16, !tbaa !112
  %289 = load double, ptr %13, align 8, !tbaa !95
  %290 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 7
  store double %289, ptr %290, align 8, !tbaa !113
  %291 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 9
  store double %222, ptr %291, align 8, !tbaa !114
  %292 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atab, i64 0, i64 %278, i32 8
  store double %223, ptr %292, align 16, !tbaa !115
  %293 = load i32, ptr @n_atab, align 4, !tbaa !80
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr @n_atab, align 4, !tbaa !80
  br label %311

295:                                              ; preds = %104
  %296 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef nonnull dereferenceable(3) %3, i64 3)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %308, !prof !101

298:                                              ; preds = %295
  %299 = load i32, ptr @n_atab, align 4, !tbaa !80
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %307, !prof !101

301:                                              ; preds = %298
  %302 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %303 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %302, ptr noundef nonnull dereferenceable(1) %7) #22
  %304 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %305 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %304, ptr noundef nonnull dereferenceable(1) %9) #22
  store i32 %90, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !99
  store i32 %299, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  call fastcc void @makebonds()
  %306 = call i32 @addresidue(ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull @res) #22
  call fastcc void @initres()
  store i32 0, ptr @n_atab, align 4, !tbaa !80
  br label %307

307:                                              ; preds = %301, %298
  store i8 0, ptr %7, align 1, !tbaa !62
  store i8 0, ptr %9, align 1, !tbaa !62
  br label %311

308:                                              ; preds = %295
  %309 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.50, ptr noundef nonnull dereferenceable(3) %3, i64 3)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %308, %307, %273
  %312 = phi i32 [ %274, %273 ], [ 0, %307 ], [ %90, %308 ]
  %313 = phi i32 [ %275, %273 ], [ %89, %307 ], [ %89, %308 ]
  %314 = phi i32 [ %276, %273 ], [ 0, %307 ], [ %88, %308 ]
  %315 = call ptr @ggets(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %42) #22
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %87, !prof !116, !llvm.loop !117

317:                                              ; preds = %311, %308, %65
  %318 = phi i32 [ 0, %65 ], [ %312, %311 ], [ %90, %308 ]
  %319 = load i32, ptr @n_atab, align 4, !tbaa !80
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %327, !prof !61

321:                                              ; preds = %317
  %322 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %323 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %322, ptr noundef nonnull dereferenceable(1) %7) #22
  %324 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %325 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %324, ptr noundef nonnull dereferenceable(1) %9) #22
  store i32 %318, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 1), align 8, !tbaa !99
  store i32 %319, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  call fastcc void @makebonds()
  %326 = call i32 @addresidue(ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull @res) #22
  call fastcc void @initres()
  br label %327

327:                                              ; preds = %317, %321
  %328 = getelementptr inbounds %struct.molecule_t, ptr %66, i64 0, i32 5
  store i32 0, ptr %328, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #22
  %329 = load ptr, ptr @stdin, align 8, !tbaa !65
  %330 = icmp eq ptr %42, %329
  br i1 %330, label %336, label %331, !prof !61

331:                                              ; preds = %327
  %332 = call i32 @get_mytaskid() #22
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %336, !prof !67

334:                                              ; preds = %331
  %335 = call i32 @fclose(ptr noundef %42)
  br label %336

336:                                              ; preds = %331, %334, %327
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

declare i32 @get_mytaskid() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @reducerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef nonnull ptr @getmatrix(ptr noundef %0) local_unnamed_addr #5 !prof !120 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !62
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 35, i64 1, ptr %8) #23
  br label %54

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @stdin, align 8, !tbaa !65
  br label %21

15:                                               ; preds = %10
  %16 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !65
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #23
  br label %54

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %16, %15 ], [ %14, %13 ]
  br label %23

23:                                               ; preds = %43, %21
  %24 = phi i64 [ %44, %43 ], [ 0, %21 ]
  br label %25

25:                                               ; preds = %23, %28
  %26 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 256, ptr noundef %22)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr %2, align 16, !tbaa !62
  %30 = icmp eq i8 %29, 35
  br i1 %30, label %25, label %31, !llvm.loop !121

31:                                               ; preds = %28
  %32 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24
  %33 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 1
  %34 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 2
  %35 = getelementptr inbounds [4 x [4 x double]], ptr @getmatrix.mat, i64 0, i64 %24, i64 3
  %36 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #22
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = trunc i64 %24 to i32
  %40 = load ptr, ptr @stderr, align 8, !tbaa !65
  %41 = add nuw nsw i32 %39, 1
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %36) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false)
  br label %54

43:                                               ; preds = %31
  %44 = add nuw nsw i64 %24, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %48, label %23, !llvm.loop !121

46:                                               ; preds = %25
  %47 = trunc i64 %24 to i32
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi i32 [ %47, %46 ], [ 4, %43 ]
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @stderr, align 8, !tbaa !65
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.7, i32 noundef %49) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @getmatrix.mat, i8 0, i64 128, i1 false)
  br label %54

54:                                               ; preds = %48, %51, %38, %18, %7
  %55 = phi ptr [ null, %7 ], [ null, %18 ], [ %22, %38 ], [ %22, %51 ], [ %22, %48 ]
  %56 = icmp eq ptr %55, null
  %57 = load ptr, ptr @stdin, align 8
  %58 = icmp eq ptr %55, %57
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = call i32 @fclose(ptr noundef nonnull %55)
  br label %62

62:                                               ; preds = %60, %54
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #22
  ret ptr @getmatrix.mat
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putpdb(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #7 !prof !120 {
  %4 = alloca [8 x i8], align 4
  %5 = alloca [8 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [256 x i8], align 16
  %8 = icmp eq ptr %1, null
  %9 = tail call i32 @get_mytaskid() #22
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %15

11:                                               ; preds = %3
  br i1 %10, label %12, label %755

12:                                               ; preds = %11
  %13 = load ptr, ptr @stderr, align 8, !tbaa !65
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %13) #23
  br label %755

15:                                               ; preds = %3
  br i1 %10, label %16, label %753

16:                                               ; preds = %15
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !tbaa !65
  br label %26

21:                                               ; preds = %16
  %22 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #22
  br label %26

26:                                               ; preds = %21, %24, %19
  %27 = phi ptr [ null, %24 ], [ %22, %21 ], [ %20, %19 ]
  %28 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %19 ]
  br i1 %28, label %29, label %753

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #22
  %30 = icmp eq ptr %27, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load ptr, ptr @stderr, align 8, !tbaa !65
  %33 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 27, i64 1, ptr %32) #23
  br label %748

34:                                               ; preds = %29
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i8 0, ptr %7, align 16, !tbaa !62
  br label %40

37:                                               ; preds = %34
  %38 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 255) #22
  %39 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 255
  store i8 0, ptr %39, align 1, !tbaa !62
  br label %40

40:                                               ; preds = %37, %36
  %41 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.42) #21
  %42 = icmp ne ptr %41, null
  %43 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.56) #21
  %44 = icmp ne ptr %43, null
  %45 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.57) #21
  %46 = icmp eq ptr %45, null
  %47 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.58) #21
  %48 = icmp eq ptr %47, null
  %49 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.59) #21
  %50 = icmp ne ptr %49, null
  %51 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.60) #21
  %52 = icmp eq ptr %51, null
  %53 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.61) #21
  %54 = icmp ne ptr %53, null
  %55 = select i1 %54, i1 true, i1 %52
  br i1 %55, label %56, label %126

56:                                               ; preds = %40
  %57 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load ptr, ptr @stderr, align 8, !tbaa !65
  %61 = call i64 @fwrite(ptr nonnull @.str.71, i64 28, i64 1, ptr %60) #23
  br label %119

62:                                               ; preds = %56
  %63 = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #24
  %64 = getelementptr inbounds %struct.cid_t, ptr %57, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !122
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load ptr, ptr @stderr, align 8, !tbaa !65
  %68 = call i64 @fwrite(ptr nonnull @.str.72, i64 31, i64 1, ptr %67) #23
  br label %119

69:                                               ; preds = %62
  store i32 65, ptr %57, align 8, !tbaa !124
  %70 = getelementptr inbounds %struct.cid_t, ptr %57, i64 0, i32 1
  store i32 90, ptr %70, align 4, !tbaa !125
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 65, %69 ], [ %75, %71 ]
  %73 = load ptr, ptr %64, align 8, !tbaa !122
  %74 = getelementptr inbounds i8, ptr %73, i64 %72
  store i8 0, ptr %74, align 1, !tbaa !62
  %75 = add nuw nsw i64 %72, 1
  %76 = load i32, ptr %70, align 4, !tbaa !125
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %72, %77
  br i1 %78, label %71, label %79, !llvm.loop !126

79:                                               ; preds = %71
  br i1 %54, label %80, label %126

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !65
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %105, %80
  %85 = load i32, ptr %70, align 4, !tbaa !125
  %86 = load i32, ptr %57, align 8, !tbaa !124
  %87 = icmp sgt i32 %86, %85
  br i1 %87, label %126, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %64, align 8, !tbaa !122
  %90 = sext i32 %86 to i64
  %91 = add i32 %85, 1
  br label %109

92:                                               ; preds = %80, %105
  %93 = phi ptr [ %107, %105 ], [ %82, %80 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !103
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %94) #21
  %96 = icmp eq i64 %95, 1
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i8, ptr %94, align 1, !tbaa !62
  %99 = add i8 %98, -65
  %100 = icmp ult i8 %99, 26
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = zext nneg i8 %98 to i64
  %103 = load ptr, ptr %64, align 8, !tbaa !122
  %104 = getelementptr inbounds i8, ptr %103, i64 %102
  store i8 1, ptr %104, align 1, !tbaa !62
  br label %105

105:                                              ; preds = %101, %97, %92
  %106 = getelementptr inbounds %struct.strand_t, ptr %93, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !65
  %108 = icmp eq ptr %107, null
  br i1 %108, label %84, label %92, !llvm.loop !127

109:                                              ; preds = %88, %114
  %110 = phi i64 [ %90, %88 ], [ %115, %114 ]
  %111 = getelementptr inbounds i8, ptr %89, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !62
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %109
  %115 = add nsw i64 %110, 1
  %116 = trunc i64 %115 to i32
  store i32 %116, ptr %57, align 8, !tbaa !124
  %117 = trunc i64 %115 to i32
  %118 = icmp eq i32 %91, %117
  br i1 %118, label %126, label %109, !llvm.loop !128

119:                                              ; preds = %66, %59
  br i1 %58, label %126, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.cid_t, ptr %57, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !122
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @free(ptr noundef %122) #22
  br label %125

125:                                              ; preds = %124, %120
  call void @free(ptr noundef %57) #22
  br label %126

126:                                              ; preds = %114, %109, %84, %125, %119, %79, %40
  %127 = phi ptr [ null, %40 ], [ %57, %79 ], [ null, %119 ], [ null, %125 ], [ %57, %84 ], [ %57, %109 ], [ %57, %114 ]
  %128 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !65
  %130 = icmp eq ptr %129, null
  br i1 %130, label %740, label %131

131:                                              ; preds = %126
  %132 = icmp eq ptr %127, null
  %133 = getelementptr inbounds %struct.cid_t, ptr %127, i64 0, i32 1
  %134 = getelementptr inbounds %struct.cid_t, ptr %127, i64 0, i32 2
  %135 = getelementptr inbounds i8, ptr %5, i64 1
  %136 = getelementptr inbounds i8, ptr %5, i64 2
  %137 = getelementptr inbounds i8, ptr %5, i64 3
  %138 = getelementptr inbounds i8, ptr %5, i64 4
  %139 = getelementptr inbounds i8, ptr %5, i64 1
  %140 = getelementptr inbounds i8, ptr %5, i64 4
  %141 = getelementptr inbounds i8, ptr %5, i64 1
  %142 = getelementptr inbounds i8, ptr %5, i64 2
  %143 = getelementptr inbounds i8, ptr %5, i64 3
  %144 = select i1 %46, i1 %48, i1 false
  %145 = select i1 %144, i1 true, i1 %42
  %146 = select i1 %145, i1 true, i1 %44
  br label %147

147:                                              ; preds = %131, %733
  %148 = phi ptr [ %129, %131 ], [ %738, %733 ]
  %149 = phi i32 [ 0, %131 ], [ %735, %733 ]
  %150 = phi i32 [ 0, %131 ], [ %734, %733 ]
  br i1 %55, label %151, label %191

151:                                              ; preds = %147
  br i1 %132, label %152, label %155

152:                                              ; preds = %151
  %153 = load ptr, ptr @stderr, align 8, !tbaa !65
  %154 = call i64 @fwrite(ptr nonnull @.str.74, i64 18, i64 1, ptr %153) #23
  br label %191

155:                                              ; preds = %151
  %156 = load i32, ptr %127, align 8, !tbaa !124
  %157 = load i32, ptr %133, align 4, !tbaa !125
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %191, label %159

159:                                              ; preds = %155
  br i1 %54, label %160, label %189

160:                                              ; preds = %159
  %161 = load ptr, ptr %148, align 8, !tbaa !103
  %162 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #21
  %163 = icmp eq i64 %162, 1
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i8, ptr %161, align 1, !tbaa !62
  %166 = add i8 %165, -65
  %167 = icmp ult i8 %166, 26
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = zext nneg i8 %165 to i32
  br label %191

170:                                              ; preds = %164, %160
  %171 = load ptr, ptr %134, align 8, !tbaa !122
  %172 = sext i32 %156 to i64
  %173 = getelementptr inbounds i8, ptr %171, i64 %172
  store i8 1, ptr %173, align 1, !tbaa !62
  %174 = load i32, ptr %127, align 8, !tbaa !124
  %175 = load i32, ptr %133, align 4, !tbaa !125
  %176 = sext i32 %174 to i64
  %177 = call i32 @llvm.smax.i32(i32 %174, i32 %175)
  %178 = sext i32 %177 to i64
  br label %179

179:                                              ; preds = %184, %170
  %180 = phi i64 [ %181, %184 ], [ %176, %170 ]
  %181 = add nsw i64 %180, 1
  %182 = trunc i64 %181 to i32
  store i32 %182, ptr %127, align 8, !tbaa !124
  %183 = icmp eq i64 %180, %178
  br i1 %183, label %191, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr %134, align 8, !tbaa !122
  %186 = getelementptr inbounds i8, ptr %185, i64 %181
  %187 = load i8, ptr %186, align 1, !tbaa !62
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %191, label %179, !llvm.loop !129

189:                                              ; preds = %159
  %190 = add nsw i32 %156, 1
  store i32 %190, ptr %127, align 8, !tbaa !124
  br label %191

191:                                              ; preds = %184, %179, %189, %168, %155, %152, %147
  %192 = phi i32 [ 32, %152 ], [ %169, %168 ], [ %156, %189 ], [ 32, %147 ], [ 32, %155 ], [ %156, %179 ], [ %156, %184 ]
  %193 = getelementptr inbounds %struct.strand_t, ptr %148, i64 0, i32 5
  %194 = load i32, ptr %193, align 8, !tbaa !130
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %733

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.strand_t, ptr %148, i64 0, i32 7
  %198 = shl i32 %192, 24
  %199 = ashr exact i32 %198, 24
  %200 = shl i32 %192, 24
  %201 = ashr exact i32 %200, 24
  br label %202

202:                                              ; preds = %196, %726
  %203 = phi i64 [ 0, %196 ], [ %728, %726 ]
  %204 = phi i32 [ %149, %196 ], [ %729, %726 ]
  %205 = phi i32 [ %150, %196 ], [ %727, %726 ]
  %206 = load ptr, ptr %197, align 8, !tbaa !108
  %207 = getelementptr inbounds ptr, ptr %206, i64 %203
  %208 = load ptr, ptr %207, align 8, !tbaa !65
  %209 = getelementptr inbounds %struct.residue_t, ptr %208, i64 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !98
  %211 = icmp eq ptr %210, null
  %212 = select i1 %211, ptr @.str.62, ptr %210
  %213 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %212) #22
  %214 = getelementptr inbounds %struct.residue_t, ptr %208, i64 0, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !97
  %216 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %215) #22
  br i1 %46, label %357, label %217

217:                                              ; preds = %202
  %218 = load i32, ptr %4, align 4
  %219 = icmp eq i32 %218, 4281671
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 4661280, ptr %4, align 4
  br label %221

221:                                              ; preds = %220, %217
  %222 = load i32, ptr %4, align 4
  %223 = icmp eq i32 %222, 4539457
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 4268064, ptr %4, align 4
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, ptr %4, align 4
  %227 = icmp eq i32 %226, 5851220
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 5513248, ptr %4, align 4
  br label %229

229:                                              ; preds = %228, %225
  %230 = load i32, ptr %4, align 4
  %231 = icmp eq i32 %230, 5527875
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 4399136, ptr %4, align 4
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, ptr %4, align 4
  %235 = icmp eq i32 %234, 4280917
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 5578784, ptr %4, align 4
  br label %237

237:                                              ; preds = %236, %233
  %238 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.80, i64 3)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 4661280, ptr %4, align 4
  br label %241

241:                                              ; preds = %240, %237
  %242 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.81, i64 3)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 4268064, ptr %4, align 4
  br label %245

245:                                              ; preds = %244, %241
  %246 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.82, i64 3)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 5513248, ptr %4, align 4
  br label %249

249:                                              ; preds = %248, %245
  %250 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.83, i64 3)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 4399136, ptr %4, align 4
  br label %253

253:                                              ; preds = %252, %249
  %254 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.84, i64 3)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 4661280, ptr %4, align 4
  br label %257

257:                                              ; preds = %256, %253
  %258 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.85, i64 3)
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i32 4268064, ptr %4, align 4
  br label %261

261:                                              ; preds = %260, %257
  %262 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.86, i64 3)
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 5578784, ptr %4, align 4
  br label %265

265:                                              ; preds = %264, %261
  %266 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.87, i64 3)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store i32 4399136, ptr %4, align 4
  br label %269

269:                                              ; preds = %268, %265
  %270 = load i32, ptr %4, align 4
  %271 = icmp eq i32 %270, 3360580
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i32 4661280, ptr %4, align 4
  br label %273

273:                                              ; preds = %272, %269
  %274 = load i32, ptr %4, align 4
  %275 = icmp eq i32 %274, 3359044
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i32 4268064, ptr %4, align 4
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i32, ptr %4, align 4
  %279 = icmp eq i32 %278, 3363908
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 5513248, ptr %4, align 4
  br label %281

281:                                              ; preds = %280, %277
  %282 = load i32, ptr %4, align 4
  %283 = icmp eq i32 %282, 3359556
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 4399136, ptr %4, align 4
  br label %285

285:                                              ; preds = %284, %281
  %286 = load i32, ptr %4, align 4
  %287 = icmp eq i32 %286, 3360594
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  store i32 4661280, ptr %4, align 4
  br label %289

289:                                              ; preds = %288, %285
  %290 = load i32, ptr %4, align 4
  %291 = icmp eq i32 %290, 3359058
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  store i32 4268064, ptr %4, align 4
  br label %293

293:                                              ; preds = %292, %289
  %294 = load i32, ptr %4, align 4
  %295 = icmp eq i32 %294, 3364178
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 5578784, ptr %4, align 4
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i32, ptr %4, align 4
  %299 = icmp eq i32 %298, 3359570
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 4399136, ptr %4, align 4
  br label %301

301:                                              ; preds = %300, %297
  %302 = load i32, ptr %4, align 4
  %303 = icmp eq i32 %302, 3491652
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store i32 4661280, ptr %4, align 4
  br label %305

305:                                              ; preds = %304, %301
  %306 = load i32, ptr %4, align 4
  %307 = icmp eq i32 %306, 3490116
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 4268064, ptr %4, align 4
  br label %309

309:                                              ; preds = %308, %305
  %310 = load i32, ptr %4, align 4
  %311 = icmp eq i32 %310, 3494980
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i32 5513248, ptr %4, align 4
  br label %313

313:                                              ; preds = %312, %309
  %314 = load i32, ptr %4, align 4
  %315 = icmp eq i32 %314, 3490628
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  store i32 4399136, ptr %4, align 4
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i32, ptr %4, align 4
  %319 = icmp eq i32 %318, 3491666
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  store i32 4661280, ptr %4, align 4
  br label %321

321:                                              ; preds = %320, %317
  %322 = load i32, ptr %4, align 4
  %323 = icmp eq i32 %322, 3490130
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  store i32 4268064, ptr %4, align 4
  br label %325

325:                                              ; preds = %324, %321
  %326 = load i32, ptr %4, align 4
  %327 = icmp eq i32 %326, 3495250
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i32 5578784, ptr %4, align 4
  br label %329

329:                                              ; preds = %328, %325
  %330 = load i32, ptr %4, align 4
  %331 = icmp eq i32 %330, 3490642
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 4399136, ptr %4, align 4
  br label %333

333:                                              ; preds = %332, %329
  %334 = load i32, ptr %4, align 4
  %335 = icmp eq i32 %334, 4475208
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  store i32 5458248, ptr %4, align 4
  br label %337

337:                                              ; preds = %336, %333
  %338 = load i32, ptr %4, align 4
  %339 = icmp eq i32 %338, 4475208
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  store i32 5458248, ptr %4, align 4
  br label %341

341:                                              ; preds = %340, %337
  %342 = load i32, ptr %4, align 4
  %343 = icmp eq i32 %342, 5261640
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  store i32 5458248, ptr %4, align 4
  br label %345

345:                                              ; preds = %344, %341
  %346 = load i32, ptr %4, align 4
  %347 = icmp eq i32 %346, 5790019
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  store i32 5462339, ptr %4, align 4
  br label %349

349:                                              ; preds = %348, %345
  %350 = load i32, ptr %4, align 4
  %351 = icmp eq i32 %350, 4739905
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i32 5264193, ptr %4, align 4
  br label %353

353:                                              ; preds = %352, %349
  %354 = load i32, ptr %4, align 4
  %355 = icmp eq i32 %354, 4738119
  br i1 %355, label %356, label %498

356:                                              ; preds = %353
  store i32 5590087, ptr %4, align 4
  br label %498

357:                                              ; preds = %202
  br i1 %48, label %498, label %358

358:                                              ; preds = %357
  %359 = load i32, ptr %4, align 4
  %360 = icmp eq i32 %359, 4281671
  br i1 %360, label %361, label %362

361:                                              ; preds = %358
  store i32 4661280, ptr %4, align 4
  br label %362

362:                                              ; preds = %361, %358
  %363 = load i32, ptr %4, align 4
  %364 = icmp eq i32 %363, 4539457
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  store i32 4268064, ptr %4, align 4
  br label %366

366:                                              ; preds = %365, %362
  %367 = load i32, ptr %4, align 4
  %368 = icmp eq i32 %367, 5851220
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  store i32 5513248, ptr %4, align 4
  br label %370

370:                                              ; preds = %369, %366
  %371 = load i32, ptr %4, align 4
  %372 = icmp eq i32 %371, 5527875
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store i32 4399136, ptr %4, align 4
  br label %374

374:                                              ; preds = %373, %370
  %375 = load i32, ptr %4, align 4
  %376 = icmp eq i32 %375, 4280917
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  store i32 5578784, ptr %4, align 4
  br label %378

378:                                              ; preds = %377, %374
  %379 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.80, i64 3)
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  store i32 4670496, ptr %4, align 4
  br label %382

382:                                              ; preds = %381, %378
  %383 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.81, i64 3)
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  store i32 4277280, ptr %4, align 4
  br label %386

386:                                              ; preds = %385, %382
  %387 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.82, i64 3)
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  store i32 5522464, ptr %4, align 4
  br label %390

390:                                              ; preds = %389, %386
  %391 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.83, i64 3)
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  store i32 4408352, ptr %4, align 4
  br label %394

394:                                              ; preds = %393, %390
  %395 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.84, i64 3)
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  store i32 4674080, ptr %4, align 4
  br label %398

398:                                              ; preds = %397, %394
  %399 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.85, i64 3)
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  store i32 4280864, ptr %4, align 4
  br label %402

402:                                              ; preds = %401, %398
  %403 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.86, i64 3)
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  store i32 5591584, ptr %4, align 4
  br label %406

406:                                              ; preds = %405, %402
  %407 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.87, i64 3)
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  store i32 4411936, ptr %4, align 4
  br label %410

410:                                              ; preds = %409, %406
  %411 = load i32, ptr %4, align 4
  %412 = icmp eq i32 %411, 3360580
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 4670496, ptr %4, align 4
  br label %414

414:                                              ; preds = %413, %410
  %415 = load i32, ptr %4, align 4
  %416 = icmp eq i32 %415, 3359044
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  store i32 4277280, ptr %4, align 4
  br label %418

418:                                              ; preds = %417, %414
  %419 = load i32, ptr %4, align 4
  %420 = icmp eq i32 %419, 3363908
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  store i32 5522464, ptr %4, align 4
  br label %422

422:                                              ; preds = %421, %418
  %423 = load i32, ptr %4, align 4
  %424 = icmp eq i32 %423, 3359556
  br i1 %424, label %425, label %426

425:                                              ; preds = %422
  store i32 4408352, ptr %4, align 4
  br label %426

426:                                              ; preds = %425, %422
  %427 = load i32, ptr %4, align 4
  %428 = icmp eq i32 %427, 3360594
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  store i32 4674080, ptr %4, align 4
  br label %430

430:                                              ; preds = %429, %426
  %431 = load i32, ptr %4, align 4
  %432 = icmp eq i32 %431, 3359058
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 4280864, ptr %4, align 4
  br label %434

434:                                              ; preds = %433, %430
  %435 = load i32, ptr %4, align 4
  %436 = icmp eq i32 %435, 3364178
  br i1 %436, label %437, label %438

437:                                              ; preds = %434
  store i32 5591584, ptr %4, align 4
  br label %438

438:                                              ; preds = %437, %434
  %439 = load i32, ptr %4, align 4
  %440 = icmp eq i32 %439, 3359570
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  store i32 4411936, ptr %4, align 4
  br label %442

442:                                              ; preds = %441, %438
  %443 = load i32, ptr %4, align 4
  %444 = icmp eq i32 %443, 3491652
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  store i32 4670496, ptr %4, align 4
  br label %446

446:                                              ; preds = %445, %442
  %447 = load i32, ptr %4, align 4
  %448 = icmp eq i32 %447, 3490116
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  store i32 4277280, ptr %4, align 4
  br label %450

450:                                              ; preds = %449, %446
  %451 = load i32, ptr %4, align 4
  %452 = icmp eq i32 %451, 3494980
  br i1 %452, label %453, label %454

453:                                              ; preds = %450
  store i32 5522464, ptr %4, align 4
  br label %454

454:                                              ; preds = %453, %450
  %455 = load i32, ptr %4, align 4
  %456 = icmp eq i32 %455, 3490628
  br i1 %456, label %457, label %458

457:                                              ; preds = %454
  store i32 4408352, ptr %4, align 4
  br label %458

458:                                              ; preds = %457, %454
  %459 = load i32, ptr %4, align 4
  %460 = icmp eq i32 %459, 3491666
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  store i32 4674080, ptr %4, align 4
  br label %462

462:                                              ; preds = %461, %458
  %463 = load i32, ptr %4, align 4
  %464 = icmp eq i32 %463, 3490130
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  store i32 4280864, ptr %4, align 4
  br label %466

466:                                              ; preds = %465, %462
  %467 = load i32, ptr %4, align 4
  %468 = icmp eq i32 %467, 3495250
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  store i32 5591584, ptr %4, align 4
  br label %470

470:                                              ; preds = %469, %466
  %471 = load i32, ptr %4, align 4
  %472 = icmp eq i32 %471, 3490642
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  store i32 4411936, ptr %4, align 4
  br label %474

474:                                              ; preds = %473, %470
  %475 = load i32, ptr %4, align 4
  %476 = icmp eq i32 %475, 4475208
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store i32 5458248, ptr %4, align 4
  br label %478

478:                                              ; preds = %477, %474
  %479 = load i32, ptr %4, align 4
  %480 = icmp eq i32 %479, 4475208
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  store i32 5458248, ptr %4, align 4
  br label %482

482:                                              ; preds = %481, %478
  %483 = load i32, ptr %4, align 4
  %484 = icmp eq i32 %483, 5261640
  br i1 %484, label %485, label %486

485:                                              ; preds = %482
  store i32 5458248, ptr %4, align 4
  br label %486

486:                                              ; preds = %485, %482
  %487 = load i32, ptr %4, align 4
  %488 = icmp eq i32 %487, 5790019
  br i1 %488, label %489, label %490

489:                                              ; preds = %486
  store i32 5462339, ptr %4, align 4
  br label %490

490:                                              ; preds = %489, %486
  %491 = load i32, ptr %4, align 4
  %492 = icmp eq i32 %491, 4739905
  br i1 %492, label %493, label %494

493:                                              ; preds = %490
  store i32 5264193, ptr %4, align 4
  br label %494

494:                                              ; preds = %493, %490
  %495 = load i32, ptr %4, align 4
  %496 = icmp eq i32 %495, 4738119
  br i1 %496, label %497, label %498

497:                                              ; preds = %494
  store i32 5590087, ptr %4, align 4
  br label %498

498:                                              ; preds = %357, %497, %494, %356, %353
  %499 = getelementptr inbounds %struct.residue_t, ptr %208, i64 0, i32 15
  %500 = load i32, ptr %499, align 8, !tbaa !100
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %502, label %726

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.residue_t, ptr %208, i64 0, i32 17
  %504 = trunc i64 %203 to i32
  %505 = select i1 %50, i32 %204, i32 %504
  %506 = add nsw i32 %505, 1
  br label %507

507:                                              ; preds = %502, %720
  %508 = phi i64 [ 0, %502 ], [ %722, %720 ]
  %509 = phi i32 [ %205, %502 ], [ %510, %720 ]
  %510 = add nsw i32 %509, 1
  %511 = load ptr, ptr %503, align 8, !tbaa !131
  %512 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508
  %513 = load ptr, ptr %512, align 8, !tbaa !68
  br i1 %46, label %551, label %514

514:                                              ; preds = %507
  store i8 32, ptr %5, align 1, !tbaa !62
  %515 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %513) #21
  %516 = icmp ugt i64 %515, 3
  br i1 %516, label %517, label %522

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %513, i64 3
  %519 = load i8, ptr %518, align 1, !tbaa !62
  %520 = icmp eq i8 %519, 32
  br i1 %520, label %522, label %521

521:                                              ; preds = %517
  store i8 %519, ptr %5, align 1, !tbaa !62
  br label %522

522:                                              ; preds = %521, %517, %514
  %523 = load i8, ptr %513, align 1, !tbaa !62
  store i8 %523, ptr %135, align 1, !tbaa !62
  %524 = getelementptr inbounds i8, ptr %513, i64 1
  %525 = load i8, ptr %524, align 1, !tbaa !62
  store i8 %525, ptr %136, align 1, !tbaa !62
  %526 = getelementptr inbounds i8, ptr %513, i64 2
  %527 = load i8, ptr %526, align 1, !tbaa !62
  %528 = icmp eq i8 %527, 39
  %529 = select i1 %528, i8 42, i8 %527
  store i8 %529, ptr %137, align 1, !tbaa !62
  store i8 0, ptr %138, align 1, !tbaa !62
  %530 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %5, ptr noundef nonnull dereferenceable(2) @.str.121, i64 2)
  %531 = icmp eq i32 %530, 0
  %532 = add i8 %529, -49
  %533 = icmp ult i8 %532, 3
  %534 = select i1 %531, i1 %533, i1 false
  br i1 %534, label %535, label %661

535:                                              ; preds = %522
  %536 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %5, ptr noundef nonnull dereferenceable(3) @.str.122, i64 3)
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %550, label %538

538:                                              ; preds = %535
  %539 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.123, i64 3)
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %661, label %541

541:                                              ; preds = %538
  %542 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.124, i64 3)
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %661, label %544

544:                                              ; preds = %541
  %545 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.125, i64 3)
  %546 = icmp eq i32 %545, 0
  %547 = load i16, ptr %4, align 4
  %548 = icmp eq i16 %547, 18760
  %549 = select i1 %546, i1 true, i1 %548
  br i1 %549, label %661, label %550

550:                                              ; preds = %544, %535
  store i8 %529, ptr %5, align 1, !tbaa !62
  store i8 32, ptr %137, align 1, !tbaa !62
  br label %661

551:                                              ; preds = %507
  br i1 %48, label %659, label %552

552:                                              ; preds = %551
  %553 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %513) #21
  %554 = icmp ugt i64 %553, 3
  br i1 %554, label %555, label %561

555:                                              ; preds = %552
  %556 = getelementptr inbounds i8, ptr %513, i64 3
  %557 = load i8, ptr %556, align 1, !tbaa !62
  %558 = icmp eq i8 %557, 32
  br i1 %558, label %561, label %559

559:                                              ; preds = %555
  %560 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %513, i64 noundef 5) #22
  br label %563

561:                                              ; preds = %555, %552
  store i8 32, ptr %5, align 1, !tbaa !62
  %562 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %139, ptr noundef nonnull dereferenceable(1) %513, i64 noundef 3) #22
  store i8 0, ptr %140, align 1, !tbaa !62
  br label %563

563:                                              ; preds = %561, %559
  %564 = load i8, ptr %141, align 1, !tbaa !62
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  store i8 32, ptr %141, align 1, !tbaa !62
  br label %567

567:                                              ; preds = %566, %563
  %568 = load i8, ptr %142, align 1, !tbaa !62
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %567
  store i8 32, ptr %142, align 1, !tbaa !62
  br label %571

571:                                              ; preds = %570, %567
  %572 = load i8, ptr %143, align 1, !tbaa !62
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  store i8 32, ptr %143, align 1, !tbaa !62
  br label %575

575:                                              ; preds = %574, %571
  %576 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.127, i64 4)
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.128, i64 noundef 5, i1 false) #22
  br label %579

579:                                              ; preds = %578, %575
  %580 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.129, i64 4)
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.130, i64 noundef 5, i1 false) #22
  br label %583

583:                                              ; preds = %582, %579
  %584 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.29, i64 4)
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 noundef 5, i1 false) #22
  br label %587

587:                                              ; preds = %586, %583
  %588 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.132, i64 4)
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.133, i64 noundef 5, i1 false) #22
  br label %591

591:                                              ; preds = %590, %587
  %592 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.134, i64 4)
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.135, i64 noundef 5, i1 false) #22
  br label %595

595:                                              ; preds = %594, %591
  %596 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.136, i64 4)
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.137, i64 noundef 5, i1 false) #22
  br label %599

599:                                              ; preds = %598, %595
  %600 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.138, i64 4)
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.139, i64 noundef 5, i1 false) #22
  br label %603

603:                                              ; preds = %602, %599
  %604 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.140, i64 4)
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 1 dereferenceable(5) @.str.141, i64 noundef 5, i1 false) #22
  br label %607

607:                                              ; preds = %606, %603
  %608 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.142, i64 4)
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %655, label %610

610:                                              ; preds = %607
  %611 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.143, i64 4)
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %655, label %613

613:                                              ; preds = %610
  %614 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.144, i64 4)
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %655, label %616

616:                                              ; preds = %613
  %617 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.145, i64 4)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %655, label %619

619:                                              ; preds = %616
  %620 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.146, i64 4)
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %655, label %622

622:                                              ; preds = %619
  %623 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.147, i64 4)
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %655, label %625

625:                                              ; preds = %622
  %626 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.148, i64 4)
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %655, label %628

628:                                              ; preds = %625
  %629 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.149, i64 4)
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %655, label %631

631:                                              ; preds = %628
  %632 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.150, i64 4)
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %655, label %634

634:                                              ; preds = %631
  %635 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.151, i64 4)
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %655, label %637

637:                                              ; preds = %634
  %638 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.152, i64 4)
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %655, label %640

640:                                              ; preds = %637
  %641 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.153, i64 4)
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %655, label %643

643:                                              ; preds = %640
  %644 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.154, i64 4)
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %655, label %646

646:                                              ; preds = %643
  %647 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.155, i64 4)
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %655, label %649

649:                                              ; preds = %646
  %650 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.156, i64 4)
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %655, label %652

652:                                              ; preds = %649
  %653 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.157, i64 4)
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %661

655:                                              ; preds = %652, %649, %646, %643, %640, %637, %634, %631, %628, %625, %622, %619, %616, %613, %610, %607
  %656 = load i8, ptr %141, align 1, !tbaa !62
  store i8 %656, ptr %5, align 1, !tbaa !62
  %657 = load i8, ptr %142, align 1, !tbaa !62
  store i8 %657, ptr %141, align 1, !tbaa !62
  %658 = load i8, ptr %143, align 1, !tbaa !62
  store i8 %658, ptr %142, align 1, !tbaa !62
  store i8 32, ptr %143, align 1, !tbaa !62
  br label %661

659:                                              ; preds = %551
  %660 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %513) #22
  br label %661

661:                                              ; preds = %659, %655, %652, %550, %544, %541, %538, %522
  %662 = load i8, ptr %6, align 1
  %663 = icmp eq i8 %662, 0
  %664 = select i1 %663, i1 true, i1 %50
  %665 = icmp slt i32 %509, 99999
  br i1 %664, label %666, label %684

666:                                              ; preds = %661
  br i1 %665, label %667, label %675

667:                                              ; preds = %666
  %668 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17
  %669 = load double, ptr %668, align 8, !tbaa !95
  %670 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 1
  %671 = load double, ptr %670, align 8, !tbaa !95
  %672 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 2
  %673 = load double, ptr %672, align 8, !tbaa !95
  %674 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.63, i32 noundef %510, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %201, i32 noundef %506, double noundef %669, double noundef %671, double noundef %673)
  br label %702

675:                                              ; preds = %666
  %676 = urem i32 %510, 100000
  %677 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17
  %678 = load double, ptr %677, align 8, !tbaa !95
  %679 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 1
  %680 = load double, ptr %679, align 8, !tbaa !95
  %681 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 2
  %682 = load double, ptr %681, align 8, !tbaa !95
  %683 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.64, i32 noundef %676, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %199, i32 noundef %506, double noundef %678, double noundef %680, double noundef %682)
  br label %702

684:                                              ; preds = %661
  br i1 %665, label %685, label %693

685:                                              ; preds = %684
  %686 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17
  %687 = load double, ptr %686, align 8, !tbaa !95
  %688 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 1
  %689 = load double, ptr %688, align 8, !tbaa !95
  %690 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 2
  %691 = load double, ptr %690, align 8, !tbaa !95
  %692 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.65, i32 noundef %510, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, double noundef %687, double noundef %689, double noundef %691)
  br label %702

693:                                              ; preds = %684
  %694 = urem i32 %510, 100000
  %695 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17
  %696 = load double, ptr %695, align 8, !tbaa !95
  %697 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 1
  %698 = load double, ptr %697, align 8, !tbaa !95
  %699 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 17, i64 2
  %700 = load double, ptr %699, align 8, !tbaa !95
  %701 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.66, i32 noundef %694, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, double noundef %696, double noundef %698, double noundef %700)
  br label %702

702:                                              ; preds = %693, %685, %675, %667
  br i1 %42, label %703, label %709

703:                                              ; preds = %702
  %704 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 6
  %705 = load double, ptr %704, align 8, !tbaa !112
  %706 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 7
  %707 = load double, ptr %706, align 8, !tbaa !113
  %708 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.67, double noundef %705, double noundef %707)
  br label %716

709:                                              ; preds = %702
  br i1 %44, label %716, label %710

710:                                              ; preds = %709
  %711 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 9
  %712 = load double, ptr %711, align 8, !tbaa !114
  %713 = getelementptr inbounds %struct.atom_t, ptr %511, i64 %508, i32 8
  %714 = load double, ptr %713, align 8, !tbaa !115
  %715 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.68, double noundef %712, double noundef %714)
  br label %716

716:                                              ; preds = %710, %709, %703
  br i1 %146, label %720, label %717

717:                                              ; preds = %716
  %718 = load ptr, ptr %512, align 8, !tbaa !68
  %719 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.69, ptr noundef %718)
  br label %720

720:                                              ; preds = %717, %716
  %721 = call i32 @fputc(i32 10, ptr nonnull %27)
  %722 = add nuw nsw i64 %508, 1
  %723 = load i32, ptr %499, align 8, !tbaa !100
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %722, %724
  br i1 %725, label %507, label %726, !llvm.loop !132

726:                                              ; preds = %720, %498
  %727 = phi i32 [ %205, %498 ], [ %510, %720 ]
  %728 = add nuw nsw i64 %203, 1
  %729 = add nsw i32 %204, 1
  %730 = load i32, ptr %193, align 8, !tbaa !130
  %731 = sext i32 %730 to i64
  %732 = icmp slt i64 %728, %731
  br i1 %732, label %202, label %733, !llvm.loop !133

733:                                              ; preds = %726, %191
  %734 = phi i32 [ %150, %191 ], [ %727, %726 ]
  %735 = phi i32 [ %149, %191 ], [ %729, %726 ]
  %736 = call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %27)
  %737 = getelementptr inbounds %struct.strand_t, ptr %148, i64 0, i32 4
  %738 = load ptr, ptr %737, align 8, !tbaa !65
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %147, !llvm.loop !134

740:                                              ; preds = %733, %126
  %741 = icmp eq ptr %127, null
  br i1 %741, label %748, label %742

742:                                              ; preds = %740
  %743 = getelementptr inbounds %struct.cid_t, ptr %127, i64 0, i32 2
  %744 = load ptr, ptr %743, align 8, !tbaa !122
  %745 = icmp eq ptr %744, null
  br i1 %745, label %747, label %746

746:                                              ; preds = %742
  call void @free(ptr noundef %744) #22
  br label %747

747:                                              ; preds = %746, %742
  call void @free(ptr noundef %127) #22
  br label %748

748:                                              ; preds = %31, %740, %747
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %749 = load ptr, ptr @stdout, align 8, !tbaa !65
  %750 = icmp eq ptr %27, %749
  br i1 %750, label %753, label %751

751:                                              ; preds = %748
  %752 = call i32 @fclose(ptr noundef %27)
  br label %753

753:                                              ; preds = %26, %751, %748, %15
  %754 = phi i32 [ 0, %751 ], [ 0, %748 ], [ -1, %26 ], [ 0, %15 ]
  call void @reducerror(i32 noundef %754) #22
  br label %755

755:                                              ; preds = %11, %12, %753
  ret i32 0
}

declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putcif(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #7 !prof !120 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr %6) #23
  br label %107

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !tbaa !65
  br label %18

13:                                               ; preds = %8
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #22
  tail call void @exit(i32 noundef 1) #25
  unreachable

18:                                               ; preds = %13, %11
  %19 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !135
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.158, ptr noundef %1)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.159, i64 37, i64 1, ptr %19)
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.160, ptr noundef %1)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 49, i64 1, ptr %19)
  %26 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 45, i64 1, ptr %19)
  %27 = tail call i64 @fwrite(ptr nonnull @.str.163, i64 50, i64 1, ptr %19)
  %28 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 42, i64 1, ptr %19)
  %29 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 38, i64 1, ptr %19)
  %30 = tail call i64 @fwrite(ptr nonnull @.str.166, i64 51, i64 1, ptr %19)
  %31 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = icmp eq ptr %32, null
  br i1 %33, label %102, label %34

34:                                               ; preds = %18
  %35 = icmp sgt i32 %21, 1
  %36 = select i1 %35, i8 65, i8 46
  br label %37

37:                                               ; preds = %34, %92
  %38 = phi ptr [ %100, %92 ], [ %32, %34 ]
  %39 = phi i32 [ %94, %92 ], [ 0, %34 ]
  %40 = phi i8 [ %98, %92 ], [ %36, %34 ]
  %41 = phi i32 [ %43, %92 ], [ 0, %34 ]
  %42 = phi i32 [ %93, %92 ], [ 0, %34 ]
  %43 = add nuw nsw i32 %41, 1
  %44 = getelementptr inbounds %struct.strand_t, ptr %38, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !130
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.strand_t, ptr %38, i64 0, i32 7
  %49 = sext i8 %40 to i32
  br label %50

50:                                               ; preds = %47, %85
  %51 = phi i64 [ 0, %47 ], [ %87, %85 ]
  %52 = phi i32 [ %39, %47 ], [ %88, %85 ]
  %53 = phi i32 [ %42, %47 ], [ %86, %85 ]
  %54 = load ptr, ptr %48, align 8, !tbaa !108
  %55 = getelementptr inbounds ptr, ptr %54, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.residue_t, ptr %56, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !100
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.residue_t, ptr %56, i64 0, i32 17
  %62 = getelementptr inbounds %struct.residue_t, ptr %56, i64 0, i32 4
  %63 = add nsw i32 %52, 1
  %64 = trunc i64 %51 to i32
  %65 = add i32 %64, 1
  br label %66

66:                                               ; preds = %60, %66
  %67 = phi i64 [ 0, %60 ], [ %81, %66 ]
  %68 = phi i32 [ %53, %60 ], [ %69, %66 ]
  %69 = add nsw i32 %68, 1
  %70 = load ptr, ptr %61, align 8, !tbaa !131
  %71 = getelementptr inbounds %struct.atom_t, ptr %70, i64 %67
  %72 = load ptr, ptr %71, align 8, !tbaa !68
  %73 = load ptr, ptr %62, align 8, !tbaa !97
  %74 = getelementptr inbounds %struct.atom_t, ptr %70, i64 %67, i32 17
  %75 = load double, ptr %74, align 8, !tbaa !95
  %76 = getelementptr inbounds %struct.atom_t, ptr %70, i64 %67, i32 17, i64 1
  %77 = load double, ptr %76, align 8, !tbaa !95
  %78 = getelementptr inbounds %struct.atom_t, ptr %70, i64 %67, i32 17, i64 2
  %79 = load double, ptr %78, align 8, !tbaa !95
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.167, i32 noundef %69, ptr noundef %72, ptr noundef %73, i32 noundef %49, i32 noundef %63, double noundef %75, double noundef %77, double noundef %79, i32 noundef %43, i32 noundef %65)
  %81 = add nuw nsw i64 %67, 1
  %82 = load i32, ptr %57, align 8, !tbaa !100
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %66, label %85, !llvm.loop !136

85:                                               ; preds = %66, %50
  %86 = phi i32 [ %53, %50 ], [ %69, %66 ]
  %87 = add nuw nsw i64 %51, 1
  %88 = add nsw i32 %52, 1
  %89 = load i32, ptr %44, align 8, !tbaa !130
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %50, label %92, !llvm.loop !137

92:                                               ; preds = %85, %37
  %93 = phi i32 [ %42, %37 ], [ %86, %85 ]
  %94 = phi i32 [ %39, %37 ], [ %88, %85 ]
  %95 = load i32, ptr %20, align 8, !tbaa !135
  %96 = icmp sgt i32 %95, 1
  %97 = zext i1 %96 to i8
  %98 = add i8 %40, %97
  %99 = getelementptr inbounds %struct.strand_t, ptr %38, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !65
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %37, !llvm.loop !138

102:                                              ; preds = %92, %18
  %103 = load ptr, ptr @stdout, align 8, !tbaa !65
  %104 = icmp eq ptr %19, %103
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call i32 @fclose(ptr noundef %19)
  br label %107

107:                                              ; preds = %102, %105, %5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @putbnd(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 !prof !120 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !65
  %6 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 22, i64 1, ptr %5) #23
  br label %160

7:                                                ; preds = %2
  %8 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %0) #22
  tail call void @exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !130
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !139

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64
  %27 = shl nsw i64 %26, 2
  br label %28

28:                                               ; preds = %25, %12
  %29 = phi i64 [ 0, %12 ], [ %27, %25 ]
  %30 = tail call noalias ptr @malloc(i64 noundef %29) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %13, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %42

35:                                               ; preds = %28
  %36 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #22
  br label %155

37:                                               ; preds = %77, %32
  %38 = load ptr, ptr %13, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %155, label %40

40:                                               ; preds = %37
  %41 = getelementptr i32, ptr %30, i64 -1
  br label %83

42:                                               ; preds = %32, %77
  %43 = phi ptr [ %81, %77 ], [ %33, %32 ]
  %44 = phi i32 [ %79, %77 ], [ 0, %32 ]
  %45 = phi i32 [ %78, %77 ], [ 0, %32 ]
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, ptr %30, i64 %46
  store i32 %45, ptr %47, align 4, !tbaa !80
  %48 = getelementptr inbounds %struct.strand_t, ptr %43, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !130
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.strand_t, ptr %43, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.residue_t, ptr %54, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !100
  %57 = add nsw i32 %56, %45
  %58 = icmp eq i32 %49, 1
  br i1 %58, label %74, label %59

59:                                               ; preds = %51
  %60 = sext i32 %44 to i64
  %61 = zext nneg i32 %49 to i64
  %62 = getelementptr i32, ptr %30, i64 %60
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 1, %59 ], [ %72, %63 ]
  %65 = phi i32 [ %57, %59 ], [ %71, %63 ]
  %66 = getelementptr i32, ptr %62, i64 %64
  store i32 %65, ptr %66, align 4, !tbaa !80
  %67 = getelementptr inbounds ptr, ptr %53, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.residue_t, ptr %68, i64 0, i32 15
  %70 = load i32, ptr %69, align 8, !tbaa !100
  %71 = add nsw i32 %70, %65
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, %61
  br i1 %73, label %74, label %63, !llvm.loop !140

74:                                               ; preds = %63, %51
  %75 = phi i32 [ %57, %51 ], [ %71, %63 ]
  %76 = add nsw i32 %49, %44
  br label %77

77:                                               ; preds = %42, %74
  %78 = phi i32 [ %75, %74 ], [ %45, %42 ]
  %79 = phi i32 [ %76, %74 ], [ %44, %42 ]
  %80 = getelementptr inbounds %struct.strand_t, ptr %43, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = icmp eq ptr %81, null
  br i1 %82, label %37, label %42, !llvm.loop !141

83:                                               ; preds = %40, %149
  %84 = phi ptr [ %38, %40 ], [ %153, %149 ]
  %85 = phi i32 [ 0, %40 ], [ %151, %149 ]
  %86 = getelementptr inbounds %struct.strand_t, ptr %84, i64 0, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !130
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %149

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.strand_t, ptr %84, i64 0, i32 7
  %91 = sext i32 %85 to i64
  %92 = getelementptr i32, ptr %30, i64 %91
  br label %93

93:                                               ; preds = %89, %144
  %94 = phi i64 [ 0, %89 ], [ %145, %144 ]
  %95 = load ptr, ptr %90, align 8, !tbaa !108
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !65
  %98 = getelementptr i32, ptr %92, i64 %94
  %99 = load i32, ptr %98, align 4, !tbaa !80
  %100 = getelementptr inbounds %struct.residue_t, ptr %97, i64 0, i32 11
  %101 = load i32, ptr %100, align 8, !tbaa !142
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.residue_t, ptr %97, i64 0, i32 12
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i64 [ 0, %103 ], [ %115, %105 ]
  %107 = load ptr, ptr %104, align 8, !tbaa !143
  %108 = getelementptr inbounds [2 x i32], ptr %107, i64 %106
  %109 = load i32, ptr %108, align 4, !tbaa !80
  %110 = add nsw i32 %109, %99
  %111 = getelementptr inbounds [2 x i32], ptr %107, i64 %106, i64 1
  %112 = load i32, ptr %111, align 4, !tbaa !80
  %113 = add nsw i32 %112, %99
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, i32 noundef %110, i32 noundef %113)
  %115 = add nuw nsw i64 %106, 1
  %116 = load i32, ptr %100, align 8, !tbaa !142
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %105, label %119, !llvm.loop !144

119:                                              ; preds = %105, %93
  %120 = getelementptr inbounds %struct.residue_t, ptr %97, i64 0, i32 10
  %121 = load ptr, ptr %120, align 8, !tbaa !65
  %122 = icmp eq ptr %121, null
  br i1 %122, label %144, label %123

123:                                              ; preds = %119, %141
  %124 = phi ptr [ %142, %141 ], [ %121, %119 ]
  %125 = getelementptr inbounds %struct.extbond_t, ptr %124, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !145
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %94, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = add nsw i32 %126, %85
  %131 = sext i32 %130 to i64
  %132 = getelementptr i32, ptr %41, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !80
  %134 = getelementptr inbounds %struct.extbond_t, ptr %124, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !147
  %136 = add nsw i32 %135, %99
  %137 = getelementptr inbounds %struct.extbond_t, ptr %124, i64 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !148
  %139 = add nsw i32 %138, %133
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, i32 noundef %136, i32 noundef %139)
  br label %141

141:                                              ; preds = %123, %129
  %142 = load ptr, ptr %124, align 8, !tbaa !65
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %123, !llvm.loop !149

144:                                              ; preds = %141, %119
  %145 = add nuw nsw i64 %94, 1
  %146 = load i32, ptr %86, align 8, !tbaa !130
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %93, label %149, !llvm.loop !150

149:                                              ; preds = %144, %83
  %150 = phi i32 [ %87, %83 ], [ %146, %144 ]
  %151 = add nsw i32 %150, %85
  %152 = getelementptr inbounds %struct.strand_t, ptr %84, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !65
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %83, !llvm.loop !151

155:                                              ; preds = %149, %37, %35
  %156 = phi i32 [ 1, %35 ], [ 0, %37 ], [ 0, %149 ]
  br i1 %31, label %158, label %157

157:                                              ; preds = %155
  tail call void @free(ptr noundef %30) #22
  br label %158

158:                                              ; preds = %157, %155
  %159 = tail call i32 @fclose(ptr noundef nonnull %8)
  br label %160

160:                                              ; preds = %158, %4
  %161 = phi i32 [ %156, %158 ], [ 0, %4 ]
  ret i32 %161
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local i32 @putdist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 !prof !120 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %7) #23
  br label %212

9:                                                ; preds = %4
  tail call void @select_atoms(ptr noundef nonnull %1, ptr noundef %2) #22
  %10 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9, %59
  %14 = phi ptr [ %61, %59 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !152
  %17 = and i32 %16, -3
  %18 = shl i32 %16, 1
  %19 = and i32 %18, 2
  %20 = or disjoint i32 %19, %17
  store i32 %20, ptr %15, align 4, !tbaa !152
  %21 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !130
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !108
  %27 = zext nneg i32 %22 to i64
  br label %28

28:                                               ; preds = %24, %56
  %29 = phi i64 [ 0, %24 ], [ %57, %56 ]
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !153
  %34 = and i32 %33, -3
  %35 = shl i32 %33, 1
  %36 = and i32 %35, 2
  %37 = or disjoint i32 %36, %34
  store i32 %37, ptr %32, align 8, !tbaa !153
  %38 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !100
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %53, %44 ], [ 0, %41 ]
  %46 = phi ptr [ %54, %44 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.atom_t, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !110
  %49 = and i32 %48, -3
  %50 = shl i32 %48, 1
  %51 = and i32 %50, 2
  %52 = or disjoint i32 %51, %49
  store i32 %52, ptr %47, align 8, !tbaa !110
  %53 = add nuw nsw i32 %45, 1
  %54 = getelementptr inbounds %struct.atom_t, ptr %46, i64 1
  %55 = icmp eq i32 %53, %39
  br i1 %55, label %56, label %44, !llvm.loop !154

56:                                               ; preds = %44, %28
  %57 = add nuw nsw i64 %29, 1
  %58 = icmp eq i64 %57, %27
  br i1 %58, label %59, label %28, !llvm.loop !155

59:                                               ; preds = %56, %13
  %60 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %13, !llvm.loop !156

63:                                               ; preds = %59, %9
  tail call void @select_atoms(ptr noundef nonnull %1, ptr noundef %3) #22
  %64 = load ptr, ptr %10, align 8, !tbaa !65
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %73, %66 ], [ %64, %63 ]
  %68 = phi i32 [ %71, %66 ], [ 0, %63 ]
  %69 = getelementptr inbounds %struct.strand_t, ptr %67, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !130
  %71 = add nsw i32 %70, %68
  %72 = getelementptr inbounds %struct.strand_t, ptr %67, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !157

75:                                               ; preds = %66, %63
  %76 = phi i32 [ 0, %63 ], [ %71, %66 ]
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %10, align 8, !tbaa !65
  %83 = icmp eq ptr %82, null
  br i1 %83, label %107, label %87

84:                                               ; preds = %75
  %85 = load ptr, ptr @stderr, align 8, !tbaa !65
  %86 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %85) #23
  br label %209

87:                                               ; preds = %81, %102
  %88 = phi ptr [ %105, %102 ], [ %82, %81 ]
  %89 = phi i32 [ %103, %102 ], [ 0, %81 ]
  %90 = getelementptr inbounds %struct.strand_t, ptr %88, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !130
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.strand_t, ptr %88, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !108
  %96 = sext i32 %89 to i64
  %97 = shl nsw i64 %96, 3
  %98 = getelementptr i8, ptr %79, i64 %97
  %99 = zext nneg i32 %91 to i64
  %100 = shl nuw nsw i64 %99, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %98, ptr align 8 %95, i64 %100, i1 false), !tbaa !65
  %101 = add i32 %89, %91
  br label %102

102:                                              ; preds = %93, %87
  %103 = phi i32 [ %89, %87 ], [ %101, %93 ]
  %104 = getelementptr inbounds %struct.strand_t, ptr %88, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !65
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %87, !llvm.loop !158

107:                                              ; preds = %102, %81
  %108 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.9)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = icmp sgt i32 %76, 0
  br i1 %111, label %112, label %209

112:                                              ; preds = %110
  %113 = zext nneg i32 %76 to i64
  %114 = zext nneg i32 %76 to i64
  br label %118

115:                                              ; preds = %107
  %116 = load ptr, ptr @stderr, align 8, !tbaa !65
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.18, ptr noundef %0) #23
  br label %209

118:                                              ; preds = %112, %205
  %119 = phi i64 [ 0, %112 ], [ %207, %205 ]
  %120 = phi i32 [ 0, %112 ], [ %206, %205 ]
  %121 = getelementptr inbounds ptr, ptr %79, i64 %119
  %122 = load ptr, ptr %121, align 8, !tbaa !65
  %123 = getelementptr inbounds %struct.residue_t, ptr %122, i64 0, i32 15
  %124 = load i32, ptr %123, align 8, !tbaa !100
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %205

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.residue_t, ptr %122, i64 0, i32 17
  %128 = getelementptr inbounds %struct.residue_t, ptr %122, i64 0, i32 4
  %129 = trunc i64 %119 to i32
  %130 = add i32 %129, 1
  br label %131

131:                                              ; preds = %126, %199
  %132 = phi i64 [ 0, %126 ], [ %201, %199 ]
  %133 = phi i32 [ %120, %126 ], [ %200, %199 ]
  %134 = load ptr, ptr %127, align 8, !tbaa !131
  %135 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132
  %136 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !110
  %138 = and i32 %137, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %199, label %140

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132, i32 17
  %142 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132, i32 17, i64 1
  %143 = getelementptr inbounds %struct.atom_t, ptr %134, i64 %132, i32 17, i64 2
  br label %144

144:                                              ; preds = %140, %195
  %145 = phi i64 [ 0, %140 ], [ %197, %195 ]
  %146 = phi i32 [ %133, %140 ], [ %196, %195 ]
  %147 = getelementptr inbounds ptr, ptr %79, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !65
  %149 = getelementptr inbounds %struct.residue_t, ptr %148, i64 0, i32 15
  %150 = load i32, ptr %149, align 8, !tbaa !100
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.residue_t, ptr %148, i64 0, i32 17
  %154 = getelementptr inbounds %struct.residue_t, ptr %148, i64 0, i32 4
  %155 = trunc i64 %145 to i32
  %156 = add i32 %155, 1
  br label %157

157:                                              ; preds = %152, %189
  %158 = phi i64 [ 0, %152 ], [ %191, %189 ]
  %159 = phi i32 [ %146, %152 ], [ %190, %189 ]
  %160 = load ptr, ptr %153, align 8, !tbaa !131
  %161 = getelementptr inbounds %struct.atom_t, ptr %160, i64 %158, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !110
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %189, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.atom_t, ptr %160, i64 %158
  %167 = load ptr, ptr %128, align 8, !tbaa !97
  %168 = load ptr, ptr %135, align 8, !tbaa !68
  %169 = load ptr, ptr %154, align 8, !tbaa !97
  %170 = load ptr, ptr %166, align 8, !tbaa !68
  %171 = load double, ptr %141, align 8, !tbaa !95
  %172 = getelementptr inbounds %struct.atom_t, ptr %160, i64 %158, i32 17
  %173 = load double, ptr %172, align 8, !tbaa !95
  %174 = fsub double %171, %173
  %175 = load double, ptr %142, align 8, !tbaa !95
  %176 = getelementptr inbounds %struct.atom_t, ptr %160, i64 %158, i32 17, i64 1
  %177 = load double, ptr %176, align 8, !tbaa !95
  %178 = fsub double %175, %177
  %179 = load double, ptr %143, align 8, !tbaa !95
  %180 = getelementptr inbounds %struct.atom_t, ptr %160, i64 %158, i32 17, i64 2
  %181 = load double, ptr %180, align 8, !tbaa !95
  %182 = fsub double %179, %181
  %183 = fmul double %178, %178
  %184 = tail call double @llvm.fmuladd.f64(double %174, double %174, double %183)
  %185 = tail call double @llvm.fmuladd.f64(double %182, double %182, double %184)
  %186 = tail call double @sqrt(double noundef %185) #22
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.19, i32 noundef %130, ptr noundef %167, ptr noundef %168, i32 noundef %156, ptr noundef %169, ptr noundef %170, double noundef %186)
  %188 = add nsw i32 %159, 1
  br label %189

189:                                              ; preds = %157, %165
  %190 = phi i32 [ %188, %165 ], [ %159, %157 ]
  %191 = add nuw nsw i64 %158, 1
  %192 = load i32, ptr %149, align 8, !tbaa !100
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %191, %193
  br i1 %194, label %157, label %195, !llvm.loop !159

195:                                              ; preds = %189, %144
  %196 = phi i32 [ %146, %144 ], [ %190, %189 ]
  %197 = add nuw nsw i64 %145, 1
  %198 = icmp eq i64 %197, %114
  br i1 %198, label %199, label %144, !llvm.loop !160

199:                                              ; preds = %195, %131
  %200 = phi i32 [ %133, %131 ], [ %196, %195 ]
  %201 = add nuw nsw i64 %132, 1
  %202 = load i32, ptr %123, align 8, !tbaa !100
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %131, label %205, !llvm.loop !161

205:                                              ; preds = %199, %118
  %206 = phi i32 [ %120, %118 ], [ %200, %199 ]
  %207 = add nuw nsw i64 %119, 1
  %208 = icmp eq i64 %207, %113
  br i1 %208, label %209, label %118, !llvm.loop !162

209:                                              ; preds = %205, %110, %115, %84
  %210 = phi i32 [ 0, %84 ], [ 0, %115 ], [ 0, %110 ], [ %206, %205 ]
  br i1 %80, label %212, label %211

211:                                              ; preds = %209
  tail call void @free(ptr noundef %79) #22
  br label %212

212:                                              ; preds = %209, %211, %6
  %213 = phi i32 [ 0, %6 ], [ %210, %211 ], [ %210, %209 ]
  ret i32 %213
}

declare void @select_atoms(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @putmatrix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !120 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !62
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4, %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %8) #23
  br label %36

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @stdout, align 8, !tbaa !65
  br label %21

15:                                               ; preds = %10
  %16 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !65
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull %0) #23
  br label %36

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %16, %15 ], [ %14, %13 ]
  br label %23

23:                                               ; preds = %21, %32
  %24 = phi i64 [ 0, %21 ], [ %34, %32 ]
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  %27 = getelementptr inbounds [4 x double], ptr %1, i64 %24, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !95
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.22, double noundef %28)
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %25, !llvm.loop !163

32:                                               ; preds = %25
  %33 = tail call i32 @fputc(i32 10, ptr %22)
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %23, !llvm.loop !164

36:                                               ; preds = %32, %18, %7
  %37 = phi ptr [ null, %7 ], [ null, %18 ], [ %22, %32 ]
  %38 = phi i32 [ 1, %7 ], [ 1, %18 ], [ 0, %32 ]
  %39 = icmp eq ptr %37, null
  %40 = load ptr, ptr @stdout, align 8
  %41 = icmp eq ptr %37, %40
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @fclose(ptr noundef nonnull %37)
  br label %45

45:                                               ; preds = %43, %36
  ret i32 %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc void @initres() unnamed_addr #7 !prof !165 !PGOFuncName !166 {
  tail call void @NAB_initres(ptr noundef nonnull @res, i32 noundef 0) #22
  %1 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %9, !prof !167

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24
  store ptr %4, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 4), align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !61

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr %7) #23
  tail call void @exit(i32 noundef 1) #25
  unreachable

9:                                                ; preds = %3, %0
  %10 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18, !prof !167

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24
  store ptr %13, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 5), align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !61

15:                                               ; preds = %12
  %16 = load ptr, ptr @stderr, align 8, !tbaa !65
  %17 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 38, i64 1, ptr %16) #23
  tail call void @exit(i32 noundef 1) #25
  unreachable

18:                                               ; preds = %12, %9
  %19 = load i32, ptr @n_atab, align 4, !tbaa !80
  store i32 %19, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  store ptr @atab, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !131
  ret void
}

declare ptr @newmolecule() local_unnamed_addr #3

declare ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @makebonds() unnamed_addr #12 !prof !168 !PGOFuncName !169 {
  %1 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %6, !prof !170

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !131
  %5 = zext nneg i32 %1 to i64
  br label %11

6:                                                ; preds = %11, %0
  %7 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %124, !prof !170

9:                                                ; preds = %6
  %10 = tail call ptr @__ctype_b_loc() #26
  br label %22

11:                                               ; preds = %3, %11
  %12 = phi i64 [ 0, %3 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.atom_t, ptr %4, i64 %12, i32 3
  store i32 0, ptr %13, align 4, !tbaa !171
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %11, !prof !172, !llvm.loop !173

16:                                               ; preds = %119, %38
  %17 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  %18 = add nsw i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %42, %19
  %21 = add nuw nsw i64 %24, 1
  br i1 %20, label %22, label %124, !prof !174, !llvm.loop !175

22:                                               ; preds = %9, %16
  %23 = phi i64 [ 0, %9 ], [ %42, %16 ]
  %24 = phi i64 [ 1, %9 ], [ %21, %16 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !131
  %26 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23
  %27 = load ptr, ptr %10, align 8, !tbaa !65
  %28 = load ptr, ptr %26, align 8, !tbaa !68
  %29 = load i8, ptr %28, align 1, !tbaa !62
  %30 = sext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %27, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !176
  %33 = and i16 %32, 2048
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %38, label %35, !prof !178

35:                                               ; preds = %22
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !62
  br label %38

38:                                               ; preds = %22, %35
  %39 = phi i8 [ %37, %35 ], [ %29, %22 ]
  %40 = and i8 %39, -33
  %41 = icmp eq i8 %40, 72
  %42 = add nuw nsw i64 %23, 1
  %43 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %16, !prof !179

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 17
  %48 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 17, i64 1
  %49 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 17, i64 2
  %50 = trunc i64 %23 to i32
  br label %51

51:                                               ; preds = %46, %119
  %52 = phi i64 [ %24, %46 ], [ %120, %119 ]
  %53 = load ptr, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 17), align 8, !tbaa !131
  %54 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52
  %55 = load ptr, ptr %10, align 8, !tbaa !65
  %56 = load ptr, ptr %54, align 8, !tbaa !68
  %57 = load i8, ptr %56, align 1, !tbaa !62
  %58 = sext i8 %57 to i64
  %59 = getelementptr inbounds i16, ptr %55, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !176
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %66, label %63, !prof !180

63:                                               ; preds = %51
  %64 = getelementptr inbounds i8, ptr %56, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !62
  br label %66

66:                                               ; preds = %51, %63
  %67 = phi i8 [ %65, %63 ], [ %57, %51 ]
  %68 = and i8 %67, -33
  %69 = icmp eq i8 %68, 72
  %70 = load double, ptr %47, align 8, !tbaa !95
  %71 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 17
  %72 = load double, ptr %71, align 8, !tbaa !95
  %73 = fsub double %70, %72
  %74 = load double, ptr %48, align 8, !tbaa !95
  %75 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 17, i64 1
  %76 = load double, ptr %75, align 8, !tbaa !95
  %77 = fsub double %74, %76
  %78 = load double, ptr %49, align 8, !tbaa !95
  %79 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 17, i64 2
  %80 = load double, ptr %79, align 8, !tbaa !95
  %81 = fsub double %78, %80
  %82 = fmul double %77, %77
  %83 = tail call double @llvm.fmuladd.f64(double %73, double %73, double %82)
  %84 = tail call double @llvm.fmuladd.f64(double %81, double %81, double %83)
  %85 = tail call double @sqrt(double noundef %84) #22
  %86 = or i1 %41, %69
  br i1 %86, label %87, label %97, !prof !181

87:                                               ; preds = %66
  %88 = fcmp ugt double %85, 1.200000e+00
  br i1 %88, label %119, label %89, !prof !182

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !171
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %119, !prof !183

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !171
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %107, label %119, !prof !183

97:                                               ; preds = %66
  %98 = fcmp ugt double %85, 1.850000e+00
  br i1 %98, label %119, label %99, !prof !184

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !171
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %119, !prof !185

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !171
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %119, !prof !185

107:                                              ; preds = %103, %93
  %108 = phi i32 [ %91, %93 ], [ %101, %103 ]
  %109 = phi ptr [ %90, %93 ], [ %100, %103 ]
  %110 = phi ptr [ %94, %93 ], [ %104, %103 ]
  %111 = add nsw i32 %108, 1
  store i32 %111, ptr %109, align 4, !tbaa !171
  %112 = sext i32 %108 to i64
  %113 = getelementptr inbounds %struct.atom_t, ptr %25, i64 %23, i32 4, i64 %112
  %114 = trunc i64 %52 to i32
  store i32 %114, ptr %113, align 4, !tbaa !80
  %115 = load i32, ptr %110, align 4, !tbaa !171
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %110, align 4, !tbaa !171
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds %struct.atom_t, ptr %53, i64 %52, i32 4, i64 %117
  store i32 %50, ptr %118, align 4, !tbaa !80
  br label %119

119:                                              ; preds = %107, %89, %93, %87, %99, %103, %97
  %120 = add nuw nsw i64 %52, 1
  %121 = load i32, ptr getelementptr inbounds (%struct.residue_t, ptr @res, i64 0, i32 15), align 8, !tbaa !100
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %51, label %16, !prof !186, !llvm.loop !187

124:                                              ; preds = %16, %6
  ret void
}

declare i32 @addresidue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @addstrand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @NAB_initres(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @getpdb, ptr @strcmp, i64 19032}
!36 = !{ptr @getpdb, ptr @get_mytaskid, i64 3}
!37 = !{ptr @getpdb, ptr @fopen, i64 1}
!38 = !{ptr @getpdb, ptr @reducerror, i64 1}
!39 = !{ptr @getpdb, ptr @initres, i64 1203}
!40 = !{ptr @getpdb, ptr @malloc, i64 1002}
!41 = !{ptr @getpdb, ptr @newmolecule, i64 1}
!42 = !{ptr @getpdb, ptr @ggets, i64 19033}
!43 = !{ptr @getpdb, ptr @strlen, i64 19032}
!44 = !{ptr @getpdb, ptr @bcmp, i64 19034}
!45 = !{ptr @getpdb, ptr @strncpy, i64 152240}
!46 = !{ptr @getpdb, ptr @__isoc99_sscanf, i64 19030}
!47 = !{ptr @getpdb, ptr @strtod, i64 95150}
!48 = !{ptr @getpdb, ptr @strstr, i64 19030}
!49 = !{ptr @getpdb, ptr @sprintf, i64 2}
!50 = !{ptr @getpdb, ptr @addstrand, i64 2}
!51 = !{ptr @getpdb, ptr @strcpy, i64 23838}
!52 = !{ptr @getpdb, ptr @makebonds, i64 1202}
!53 = !{ptr @getpdb, ptr @addresidue, i64 1202}
!54 = !{ptr @getpdb, ptr @NAB_initatom, i64 19030}
!55 = !{ptr @getpdb, ptr @fclose, i64 1}
!56 = !{ptr @initres, ptr @NAB_initres, i64 1203}
!57 = !{ptr @initres, ptr @malloc, i64 2}
!58 = !{ptr @makebonds, ptr @__ctype_b_loc, i64 1201}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!"branch_weights", i32 0, i32 1}
!62 = !{!63, !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !63, i64 0}
!67 = !{!"branch_weights", i32 1, i32 0}
!68 = !{!69, !66, i64 0}
!69 = !{!"atom_t", !66, i64 0, !66, i64 8, !70, i64 16, !70, i64 20, !63, i64 24, !66, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !66, i64 96, !70, i64 104, !71, i64 112, !71, i64 120, !70, i64 128, !70, i64 132, !66, i64 136, !63, i64 144, !71, i64 168}
!70 = !{!"int", !63, i64 0}
!71 = !{!"double", !63, i64 0}
!72 = !{!"branch_weights", i32 0, i32 1000}
!73 = !{!69, !66, i64 8}
!74 = !{!69, !66, i64 96}
!75 = !{!69, !66, i64 136}
!76 = !{!"branch_weights", i32 1, i32 999}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!70, !70, i64 0}
!81 = !{!"branch_weights", i32 1, i32 127}
!82 = !{!"branch_weights", i32 19031, i32 1}
!83 = !{!"branch_weights", i32 19030, i32 2}
!84 = !{!"branch_weights", i32 0, i32 2}
!85 = !{!"branch_weights", i32 44018, i32 19030, i32 32102}
!86 = distinct !{!86, !78, !79}
!87 = !{!"branch_weights", i32 0, i32 19030}
!88 = distinct !{!88, !78, !79}
!89 = !{!"branch_weights", i32 57090, i32 19030, i32 0}
!90 = distinct !{!90, !78, !79}
!91 = !{!92, !70, i64 44}
!92 = !{!"residue_t", !66, i64 0, !70, i64 8, !70, i64 12, !70, i64 16, !66, i64 24, !66, i64 32, !70, i64 40, !70, i64 44, !70, i64 48, !66, i64 56, !66, i64 64, !70, i64 72, !66, i64 80, !70, i64 88, !66, i64 96, !70, i64 104, !66, i64 112, !66, i64 120}
!93 = !{!"branch_weights", i32 19030, i32 0}
!94 = !{!"branch_weights", i32 0, i32 9368, i32 6124, i32 1660, i32 1832, i32 46, i32 0}
!95 = !{!71, !71, i64 0}
!96 = !{!"branch_weights", i32 19028, i32 2}
!97 = !{!92, !66, i64 24}
!98 = !{!92, !66, i64 32}
!99 = !{!92, !70, i64 8}
!100 = !{!92, !70, i64 104}
!101 = !{!"branch_weights", i32 2, i32 0}
!102 = !{}
!103 = !{!104, !66, i64 0}
!104 = !{!"strand_t", !66, i64 0, !70, i64 8, !70, i64 12, !66, i64 16, !66, i64 24, !70, i64 32, !70, i64 36, !66, i64 40}
!105 = !{!"branch_weights", i32 2, i32 1}
!106 = distinct !{!106, !78, !79}
!107 = !{!104, !70, i64 36}
!108 = !{!104, !66, i64 40}
!109 = !{!"branch_weights", i32 17828, i32 1200}
!110 = !{!69, !70, i64 16}
!111 = !{!69, !66, i64 56}
!112 = !{!69, !71, i64 64}
!113 = !{!69, !71, i64 72}
!114 = !{!69, !71, i64 88}
!115 = !{!69, !71, i64 80}
!116 = !{!"branch_weights", i32 127, i32 2435969}
!117 = distinct !{!117, !79}
!118 = !{!119, !70, i64 120}
!119 = !{!"molecule_t", !63, i64 0, !70, i64 96, !66, i64 104, !70, i64 112, !70, i64 116, !70, i64 120, !66, i64 128}
!120 = !{!"function_entry_count", i64 0}
!121 = distinct !{!121, !78, !79}
!122 = !{!123, !66, i64 8}
!123 = !{!"cid_t", !70, i64 0, !70, i64 4, !66, i64 8}
!124 = !{!123, !70, i64 0}
!125 = !{!123, !70, i64 4}
!126 = distinct !{!126, !78, !79}
!127 = distinct !{!127, !78, !79}
!128 = distinct !{!128, !78, !79}
!129 = distinct !{!129, !78, !79}
!130 = !{!104, !70, i64 32}
!131 = !{!92, !66, i64 120}
!132 = distinct !{!132, !78, !79}
!133 = distinct !{!133, !78, !79}
!134 = distinct !{!134, !78, !79}
!135 = !{!119, !70, i64 96}
!136 = distinct !{!136, !78, !79}
!137 = distinct !{!137, !78, !79}
!138 = distinct !{!138, !78, !79}
!139 = distinct !{!139, !78, !79}
!140 = distinct !{!140, !78, !79}
!141 = distinct !{!141, !78, !79}
!142 = !{!92, !70, i64 72}
!143 = !{!92, !66, i64 80}
!144 = distinct !{!144, !78, !79}
!145 = !{!146, !70, i64 12}
!146 = !{!"extbond_t", !66, i64 0, !70, i64 8, !70, i64 12, !70, i64 16}
!147 = !{!146, !70, i64 8}
!148 = !{!146, !70, i64 16}
!149 = distinct !{!149, !78, !79}
!150 = distinct !{!150, !78, !79}
!151 = distinct !{!151, !78, !79}
!152 = !{!104, !70, i64 12}
!153 = !{!92, !70, i64 40}
!154 = distinct !{!154, !78, !79}
!155 = distinct !{!155, !78, !79}
!156 = distinct !{!156, !78, !79}
!157 = distinct !{!157, !78, !79}
!158 = distinct !{!158, !78, !79}
!159 = distinct !{!159, !78, !79}
!160 = distinct !{!160, !78, !79}
!161 = distinct !{!161, !78, !79}
!162 = distinct !{!162, !78, !79}
!163 = distinct !{!163, !78, !79}
!164 = distinct !{!164, !78, !79}
!165 = !{!"function_entry_count", i64 1203}
!166 = !{!"molio.c;initres"}
!167 = !{!"branch_weights", i32 1, i32 1202}
!168 = !{!"function_entry_count", i64 1202}
!169 = !{!"molio.c;makebonds"}
!170 = !{!"branch_weights", i32 1201, i32 1}
!171 = !{!69, !70, i64 20}
!172 = !{!"branch_weights", i32 1201, i32 17829}
!173 = distinct !{!173, !78, !79}
!174 = !{!"branch_weights", i32 16627, i32 1201}
!175 = distinct !{!175, !78, !79}
!176 = !{!177, !177, i64 0}
!177 = !{!"short", !63, i64 0}
!178 = !{!"branch_weights", i32 17828, i32 0}
!179 = !{!"branch_weights", i32 17827, i32 1}
!180 = !{!"branch_weights", i32 153766, i32 0}
!181 = !{!"branch_weights", i32 116964, i32 36802}
!182 = !{!"branch_weights", i32 107610, i32 9354}
!183 = !{!"branch_weights", i32 9354, i32 0}
!184 = !{!"branch_weights", i32 28106, i32 8696}
!185 = !{!"branch_weights", i32 8696, i32 0}
!186 = !{!"branch_weights", i32 135939, i32 17827}
!187 = distinct !{!187, !78, !79}
