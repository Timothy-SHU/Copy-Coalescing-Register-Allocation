; ModuleID = 'reslib.c'
source_filename = "reslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.chiral_t = type { [4 x i32], double }
%struct.reslib_t = type { ptr, ptr, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"getreslibkind: unknown reslib %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rna\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [21 x i8] c"%s not in library %s\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"new residue %s\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"atoms in new residue %s\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"atom index in new residue %s\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"bonds in new residue %s\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"chirality in residue %s\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"copyresidue: can't allocate new r_resname.\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"copyresidue: can't allocate new r_resid.\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"copyresidue: can't allocate anp.\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"copystrand pointer array\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"strandname %s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"copymolecule\00", align 1
@reslibs = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c".lib\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"../leap/lib/%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Can't open residue library %s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"new reslib %s\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"name for new reslib %s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"atomtype\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"united\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"pdb file %s\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"bnd file %s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"qr file %s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"chi file %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Incorrect line in residue library header %s...\0A\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%s/reslib/%s\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@initatoms.init = internal unnamed_addr global i1 false, align 4
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4
@bonds = internal unnamed_addr global [1000 x [2 x i32]] zeroinitializer, align 16
@.str.71 = private unnamed_addr constant [24 x i8] c"residue %s in reslib %s\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"atoms in residue %s in reslib %s\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"addres2reslib: can't allocate new r_resname.\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"addres2reslib: can't allocate new r_resid.\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"addres2reslib: can't allocate anp.\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"bonds of residue %s\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"%s not in reslib %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"%s %d %s %s %d %lf %lf %lf\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"REMARK RESLIB %s %s\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"UNITED\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Incorrect header line in bond file: %s...\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"Incorrect data line in bond file: %s...\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"%s %d %s %s %d %lf %lf\00", align 1
@n_chi = internal unnamed_addr global i32 0, align 4
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal unnamed_addr global [500 x %struct.chiral_t] zeroinitializer, align 16
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1
@reltable.getreslibkind = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32)], align 4

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @getreslibkind(ptr noundef %0) local_unnamed_addr #0 !prof !39 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @reslibs, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reslib_t, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !llvm.loop !47

11:                                               ; preds = %6, %2
  %12 = phi ptr [ null, %2 ], [ %4, %6 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @read_reslib(ptr noundef %0)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !40
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef %0) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %14, %11
  %21 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.reslib_t, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !50
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = zext nneg i32 %24 to i64
  %28 = shl i64 %27, 2
  %29 = call ptr @llvm.load.relative.i64(ptr @reltable.getreslibkind, i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi ptr [ @.str.1, %20 ], [ %29, %26 ]
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @read_reslib(ptr noundef %0) unnamed_addr #0 !prof !39 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [256 x i8], align 16
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [20 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [100 x i8], align 16
  %21 = alloca [100 x i8], align 16
  %22 = alloca [256 x i8], align 16
  %23 = alloca [10 x i8], align 1
  %24 = alloca [10 x i8], align 1
  %25 = alloca [10 x i8], align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [100 x i32], align 16
  %34 = alloca [100 x i32], align 16
  %35 = alloca [100 x i32], align 16
  %36 = alloca [100 x i32], align 16
  %37 = alloca [100 x i32], align 16
  %38 = alloca [100 x i32], align 16
  %39 = alloca [100 x i32], align 16
  %40 = alloca [100 x double], align 16
  %41 = alloca [100 x double], align 16
  %42 = alloca [100 x double], align 16
  %43 = alloca [100 x double], align 16
  %44 = alloca [100 x [10 x i8]], align 16
  %45 = alloca [100 x [10 x i8]], align 16
  %46 = alloca [100 x [10 x i8]], align 16
  %47 = alloca [255 x i8], align 16
  %48 = alloca [128 x i8], align 16
  %49 = alloca [20 x i8], align 16
  %50 = alloca [100 x i8], align 16
  %51 = alloca [100 x i8], align 16
  %52 = alloca [256 x i8], align 16
  %53 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %53) #19
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %48) #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %50) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %52) #19
  %54 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.38) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %1
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef %0) #19
  call fastcc void @mk_fname(ptr noundef nonnull %51, ptr noundef nonnull %52)
  %58 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull %52) #19
  br label %201

62:                                               ; preds = %1
  call fastcc void @mk_fname(ptr noundef %0, ptr noundef nonnull %52)
  %63 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull %52) #19
  br label %201

67:                                               ; preds = %62, %56
  %68 = phi ptr [ %58, %56 ], [ %63, %62 ]
  %69 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %0) #19
  %73 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %201

74:                                               ; preds = %67
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %76 = shl i64 %75, 32
  %77 = add i64 %76, 4294967296
  %78 = ashr exact i64 %77, 32
  %79 = call noalias ptr @malloc(i64 noundef %78) #20
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %0) #19
  %83 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %201

84:                                               ; preds = %74
  %85 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %0) #19
  %86 = load ptr, ptr @reslibs, align 8, !tbaa !40
  store ptr %86, ptr %69, align 8, !tbaa !51
  store ptr %69, ptr @reslibs, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct.reslib_t, ptr %69, i64 0, i32 1
  store ptr %79, ptr %87, align 8, !tbaa !44
  %88 = getelementptr inbounds %struct.reslib_t, ptr %69, i64 0, i32 2
  %89 = getelementptr inbounds %struct.reslib_t, ptr %69, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, i8 0, i64 16, i1 false)
  store i8 0, ptr %53, align 16, !tbaa !52
  %90 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.38) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %169

92:                                               ; preds = %84
  %93 = call ptr @fgets(ptr noundef nonnull %48, i32 noundef 128, ptr noundef nonnull %68)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %170, label %95

95:                                               ; preds = %92, %162
  %96 = phi ptr [ %166, %162 ], [ null, %92 ]
  %97 = phi ptr [ %165, %162 ], [ null, %92 ]
  %98 = phi ptr [ %164, %162 ], [ null, %92 ]
  %99 = phi ptr [ %163, %162 ], [ null, %92 ]
  br label %100

100:                                              ; preds = %95, %103
  %101 = load i8, ptr %48, align 16, !tbaa !52
  %102 = icmp eq i8 %101, 35
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %106
  %104 = call ptr @fgets(ptr noundef nonnull %48, i32 noundef 128, ptr noundef nonnull %68)
  %105 = icmp eq ptr %104, null
  br i1 %105, label %170, label %100, !llvm.loop !53

106:                                              ; preds = %100
  %107 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %48, ptr noundef nonnull @.str.44, ptr noundef nonnull %49, ptr noundef nonnull %50) #19
  switch i32 %107, label %170 [
    i32 -1, label %103
    i32 2, label %108
  ]

108:                                              ; preds = %106
  %109 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %49, ptr noundef nonnull dereferenceable(5) @.str.45, i64 5)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, ptr %50, align 16
  switch i32 %112, label %115 [
    i32 6385252, label %113
    i32 6385266, label %114
  ]

113:                                              ; preds = %111
  store i32 1, ptr %88, align 8, !tbaa !50
  br label %162

114:                                              ; preds = %111
  store i32 2, ptr %88, align 8, !tbaa !50
  br label %162

115:                                              ; preds = %111
  %116 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %50, ptr noundef nonnull dereferenceable(3) @.str.4, i64 3)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %115
  store i32 3, ptr %88, align 8, !tbaa !50
  br label %162

119:                                              ; preds = %108
  %120 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %49, ptr noundef nonnull dereferenceable(9) @.str.46, i64 9)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %50, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, ptr %89, align 4, !tbaa !54
  br label %162

126:                                              ; preds = %122
  %127 = load i32, ptr %50, align 16
  %128 = icmp eq i32 %127, 7105633
  br i1 %128, label %129, label %170

129:                                              ; preds = %126
  store i32 2, ptr %89, align 4, !tbaa !54
  br label %162

130:                                              ; preds = %119
  %131 = load i32, ptr %49, align 16
  switch i32 %131, label %145 [
    i32 6710895, label %132
    i32 6448240, label %133
    i32 6581858, label %139
  ]

132:                                              ; preds = %130
  call fastcc void @mk_fname(ptr noundef nonnull %50, ptr noundef nonnull %53)
  br label %162

133:                                              ; preds = %130
  call fastcc void @mk_fname(ptr noundef nonnull %50, ptr noundef nonnull %52)
  %134 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef nonnull %50) #19
  %138 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @e_msg) #19
  br label %170

139:                                              ; preds = %130
  call fastcc void @mk_fname(ptr noundef nonnull %50, ptr noundef nonnull %52)
  %140 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef nonnull %50) #19
  %144 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @e_msg) #19
  br label %170

145:                                              ; preds = %130
  %146 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %49, ptr noundef nonnull dereferenceable(3) @.str.55, i64 3)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  call fastcc void @mk_fname(ptr noundef nonnull %50, ptr noundef nonnull %52)
  %149 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %50) #19
  %153 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @e_msg) #19
  br label %170

154:                                              ; preds = %145
  %155 = icmp eq i32 %131, 6908003
  br i1 %155, label %156, label %170

156:                                              ; preds = %154
  call fastcc void @mk_fname(ptr noundef nonnull %50, ptr noundef nonnull %52)
  %157 = call noalias ptr @fopen(ptr noundef nonnull %52, ptr noundef nonnull @.str.40)
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef nonnull %50) #19
  %161 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @e_msg) #19
  br label %170

162:                                              ; preds = %156, %148, %139, %133, %132, %129, %125, %118, %114, %113
  %163 = phi ptr [ %99, %118 ], [ %99, %114 ], [ %99, %113 ], [ %99, %125 ], [ %99, %129 ], [ %99, %148 ], [ %99, %156 ], [ %99, %139 ], [ %134, %133 ], [ %99, %132 ]
  %164 = phi ptr [ %98, %118 ], [ %98, %114 ], [ %98, %113 ], [ %98, %125 ], [ %98, %129 ], [ %98, %148 ], [ %98, %156 ], [ %140, %139 ], [ %98, %133 ], [ %98, %132 ]
  %165 = phi ptr [ %97, %118 ], [ %97, %114 ], [ %97, %113 ], [ %97, %125 ], [ %97, %129 ], [ %149, %148 ], [ %97, %156 ], [ %97, %139 ], [ %97, %133 ], [ %97, %132 ]
  %166 = phi ptr [ %96, %118 ], [ %96, %114 ], [ %96, %113 ], [ %96, %125 ], [ %96, %129 ], [ %96, %148 ], [ %157, %156 ], [ %96, %139 ], [ %96, %133 ], [ %96, %132 ]
  %167 = call ptr @fgets(ptr noundef nonnull %48, i32 noundef 128, ptr noundef nonnull %68)
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %95, !llvm.loop !53

169:                                              ; preds = %84
  call fastcc void @mk_fname(ptr noundef nonnull %51, ptr noundef nonnull %53)
  br label %170

170:                                              ; preds = %162, %154, %126, %115, %103, %106, %92, %169, %159, %151, %142, %136
  %171 = phi ptr [ %99, %151 ], [ %99, %159 ], [ %99, %142 ], [ %134, %136 ], [ null, %169 ], [ null, %92 ], [ %99, %106 ], [ %99, %103 ], [ %99, %115 ], [ %99, %126 ], [ %99, %154 ], [ %163, %162 ]
  %172 = phi ptr [ %98, %151 ], [ %98, %159 ], [ %140, %142 ], [ %98, %136 ], [ null, %169 ], [ null, %92 ], [ %98, %106 ], [ %98, %103 ], [ %98, %115 ], [ %98, %126 ], [ %98, %154 ], [ %164, %162 ]
  %173 = phi ptr [ %149, %151 ], [ %97, %159 ], [ %97, %142 ], [ %97, %136 ], [ null, %169 ], [ null, %92 ], [ %97, %106 ], [ %97, %103 ], [ %97, %115 ], [ %97, %126 ], [ %97, %154 ], [ %165, %162 ]
  %174 = phi ptr [ %96, %151 ], [ %157, %159 ], [ %96, %142 ], [ %96, %136 ], [ null, %169 ], [ null, %92 ], [ %96, %106 ], [ %96, %103 ], [ %96, %115 ], [ %96, %126 ], [ %96, %154 ], [ %166, %162 ]
  %175 = phi ptr [ null, %151 ], [ null, %159 ], [ null, %142 ], [ null, %136 ], [ %69, %169 ], [ %69, %92 ], [ %69, %103 ], [ null, %106 ], [ null, %115 ], [ null, %126 ], [ null, %154 ], [ %69, %162 ]
  %176 = call i32 @fclose(ptr noundef nonnull %68)
  %177 = icmp eq ptr %175, null
  br i1 %177, label %178, label %201

178:                                              ; preds = %170
  %179 = icmp eq ptr %171, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %178
  %181 = call i32 @fclose(ptr noundef nonnull %171)
  br label %182

182:                                              ; preds = %180, %178
  %183 = icmp eq ptr %172, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %182
  %185 = call i32 @fclose(ptr noundef nonnull %172)
  br label %186

186:                                              ; preds = %184, %182
  %187 = icmp eq ptr %173, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %186
  %189 = call i32 @fclose(ptr noundef nonnull %173)
  br label %190

190:                                              ; preds = %188, %186
  %191 = icmp eq ptr %174, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %190
  %193 = call i32 @fclose(ptr noundef nonnull %174)
  br label %194

194:                                              ; preds = %192, %190
  %195 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #16
  %196 = trunc i64 %195 to i32
  %197 = add i32 %196, -1
  %198 = call i32 @llvm.smin.i32(i32 %197, i32 20)
  %199 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %198, i32 noundef %198, ptr noundef nonnull %48) #19
  %200 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @e_msg) #19
  br label %201

201:                                              ; preds = %60, %65, %71, %81, %170, %194
  %202 = phi ptr [ undef, %65 ], [ undef, %71 ], [ undef, %81 ], [ %171, %194 ], [ %171, %170 ], [ undef, %60 ]
  %203 = phi ptr [ undef, %65 ], [ undef, %71 ], [ undef, %81 ], [ %172, %194 ], [ %172, %170 ], [ undef, %60 ]
  %204 = phi ptr [ undef, %65 ], [ undef, %71 ], [ undef, %81 ], [ %173, %194 ], [ %173, %170 ], [ undef, %60 ]
  %205 = phi ptr [ undef, %65 ], [ undef, %71 ], [ undef, %81 ], [ %174, %194 ], [ %174, %170 ], [ undef, %60 ]
  %206 = phi ptr [ null, %65 ], [ null, %71 ], [ null, %81 ], [ %175, %194 ], [ %175, %170 ], [ null, %60 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %51) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %48) #19
  %207 = icmp eq ptr %206, null
  br i1 %207, label %626, label %208

208:                                              ; preds = %201
  %209 = load i1, ptr @initatoms.init, align 4
  br i1 %209, label %223, label %210

210:                                              ; preds = %208
  store i1 true, ptr @initatoms.init, align 4
  br label %211

211:                                              ; preds = %210, %219
  %212 = phi ptr [ @atoms, %210 ], [ %221, %219 ]
  %213 = phi i32 [ 0, %210 ], [ %220, %219 ]
  call void @NAB_initatom(ptr noundef nonnull %212, i32 noundef 1) #19
  %214 = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #20
  store ptr %214, ptr %212, align 8, !tbaa !55
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load ptr, ptr @stderr, align 8, !tbaa !40
  %218 = call i64 @fwrite(ptr nonnull @.str.64, i64 38, i64 1, ptr %217) #17
  call void @exit(i32 noundef 1) #18
  unreachable

219:                                              ; preds = %211
  %220 = add nuw nsw i32 %213, 1
  %221 = getelementptr inbounds %struct.atom_t, ptr %212, i64 1
  %222 = icmp eq i32 %220, 1000
  br i1 %222, label %223, label %211, !llvm.loop !58

223:                                              ; preds = %219, %208
  %224 = load i8, ptr %53, align 16, !tbaa !52
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %291, label %226

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %36) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %37) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %41) #19
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %44) #19
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %46) #19
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %47) #19
  store i32 0, ptr @n_atoms, align 4, !tbaa !59
  %227 = call ptr (ptr, i32, ...) @dbDBRndOpen(ptr noundef nonnull %53, i32 noundef 1) #19
  %228 = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %227, ptr noundef nonnull @.str.65, ptr noundef nonnull %32, ptr noundef nonnull %46, i32 noundef 10) #19
  %229 = load i32, ptr %32, align 4, !tbaa !59
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %290

231:                                              ; preds = %226, %285
  %232 = phi i64 [ %286, %285 ], [ 0, %226 ]
  %233 = getelementptr inbounds [100 x [10 x i8]], ptr %46, i64 0, i64 %232
  %234 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef nonnull %233) #19
  call void (ptr, ...) @DBZeroPrefix(ptr noundef %227) #19
  call void (ptr, ptr, ...) @DBPushPrefix(ptr noundef %227, ptr noundef nonnull %47) #19
  %235 = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %227, ptr noundef nonnull @.str.67, ptr noundef nonnull %31, ptr noundef nonnull @lr_name, i32 noundef 1) #19
  %236 = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %227, ptr noundef nonnull @.str.68, ptr noundef nonnull @n_atoms, i32 noundef 3, ptr noundef nonnull %33, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %34, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %35, i64 noundef 4, i32 noundef 6, ptr noundef nonnull %36, i64 noundef 4, i32 noundef 7, ptr noundef nonnull %37, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %40, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %44, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %45, i32 noundef 10, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  %237 = call signext i8 (ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %227, ptr noundef nonnull @.str.69, ptr noundef nonnull @n_atoms, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %41, i64 noundef 8, i32 noundef 2, ptr noundef nonnull %42, i64 noundef 8, i32 noundef 3, ptr noundef nonnull %43, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  %238 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %262

240:                                              ; preds = %231, %240
  %241 = phi i64 [ %258, %240 ], [ 0, %231 ]
  %242 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %241
  call void @NAB_initatom(ptr noundef nonnull %242, i32 noundef 0) #19
  %243 = load ptr, ptr %242, align 16, !tbaa !55
  %244 = getelementptr inbounds [100 x [10 x i8]], ptr %44, i64 0, i64 %241
  %245 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %243, ptr noundef nonnull dereferenceable(1) %244) #19
  %246 = getelementptr inbounds [100 x double], ptr %40, i64 0, i64 %241
  %247 = load double, ptr %246, align 8, !tbaa !60
  %248 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %241, i32 6
  store double %247, ptr %248, align 16, !tbaa !61
  %249 = getelementptr inbounds [100 x double], ptr %41, i64 0, i64 %241
  %250 = load double, ptr %249, align 8, !tbaa !60
  %251 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %241, i32 17
  store double %250, ptr %251, align 16, !tbaa !60
  %252 = getelementptr inbounds [100 x double], ptr %42, i64 0, i64 %241
  %253 = load double, ptr %252, align 8, !tbaa !60
  %254 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %241, i32 17, i64 1
  store double %253, ptr %254, align 8, !tbaa !60
  %255 = getelementptr inbounds [100 x double], ptr %43, i64 0, i64 %241
  %256 = load double, ptr %255, align 8, !tbaa !60
  %257 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %241, i32 17, i64 2
  store double %256, ptr %257, align 16, !tbaa !60
  %258 = add nuw nsw i64 %241, 1
  %259 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %258, %260
  br i1 %261, label %240, label %262, !llvm.loop !62

262:                                              ; preds = %240, %231
  %263 = phi i32 [ %238, %231 ], [ %259, %240 ]
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  call fastcc void @addres2reslib(ptr noundef nonnull %206)
  br label %266

266:                                              ; preds = %265, %262
  %267 = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %227, ptr noundef nonnull @.str.70, ptr noundef nonnull @n_bonds, i32 noundef 1, ptr noundef nonnull %38, i64 noundef 4, i32 noundef 2, ptr noundef nonnull %39, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %35, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  %268 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = zext nneg i32 %268 to i64
  br label %272

272:                                              ; preds = %270, %272
  %273 = phi i64 [ 0, %270 ], [ %280, %272 ]
  %274 = getelementptr inbounds [100 x i32], ptr %38, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !59
  %276 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %273
  store i32 %275, ptr %276, align 8, !tbaa !59
  %277 = getelementptr inbounds [100 x i32], ptr %39, i64 0, i64 %273
  %278 = load i32, ptr %277, align 4, !tbaa !59
  %279 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %273, i64 1
  store i32 %278, ptr %279, align 4, !tbaa !59
  %280 = add nuw nsw i64 %273, 1
  %281 = icmp eq i64 %280, %271
  br i1 %281, label %282, label %272, !llvm.loop !63

282:                                              ; preds = %272, %266
  %283 = icmp sgt i32 %268, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %282
  call fastcc void @addbonds2reslib(ptr noundef nonnull %206)
  br label %285

285:                                              ; preds = %284, %282
  %286 = add nuw nsw i64 %232, 1
  %287 = load i32, ptr %32, align 4, !tbaa !59
  %288 = sext i32 %287 to i64
  %289 = icmp slt i64 %286, %288
  br i1 %289, label %231, label %290, !llvm.loop !64

290:                                              ; preds = %285, %226
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %43) #19
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #19
  br label %411

291:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #19
  store i32 0, ptr @n_atoms, align 4, !tbaa !59
  store i8 0, ptr @lr_name, align 1, !tbaa !52
  %292 = call ptr @fgets(ptr noundef nonnull %22, i32 noundef 256, ptr noundef %202)
  %293 = icmp eq ptr %292, null
  br i1 %293, label %356, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 2
  %296 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 2
  %297 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 3
  %298 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 3
  br label %299

299:                                              ; preds = %294, %353
  %300 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.79, ptr noundef nonnull dereferenceable(6) %22, i64 6)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %21) #19
  %303 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %22, ptr noundef nonnull @.str.83, ptr noundef nonnull %20, ptr noundef nonnull %21) #19
  %304 = icmp eq i32 %303, 2
  br i1 %304, label %305, label %322

305:                                              ; preds = %302
  %306 = load i32, ptr %20, align 16
  switch i32 %306, label %309 [
    i32 4279876, label %307
    i32 4279890, label %308
  ]

307:                                              ; preds = %305
  store i32 1, ptr %296, align 8, !tbaa !50
  br label %314

308:                                              ; preds = %305
  store i32 2, ptr %295, align 8, !tbaa !50
  br label %314

309:                                              ; preds = %305
  %310 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %20, ptr noundef nonnull dereferenceable(3) @.str.7, i64 3)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 2
  store i32 3, ptr %313, align 8, !tbaa !50
  br label %314

314:                                              ; preds = %312, %309, %308, %307
  %315 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %21, ptr noundef nonnull dereferenceable(7) @.str.84, i64 7)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  store i32 1, ptr %298, align 4, !tbaa !54
  br label %322

318:                                              ; preds = %314
  %319 = load i64, ptr %21, align 16
  %320 = icmp eq i64 %319, 21760796498086977
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  store i32 2, ptr %297, align 4, !tbaa !54
  br label %322

322:                                              ; preds = %321, %318, %317, %302
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %20) #19
  br label %353

323:                                              ; preds = %299
  %324 = load i32, ptr %22, align 16
  %325 = icmp eq i32 %324, 1297044545
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  %327 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.81, ptr noundef nonnull dereferenceable(6) %22, i64 6)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %353

329:                                              ; preds = %326, %323
  %330 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %22, ptr noundef nonnull @.str.82, ptr noundef nonnull %23, ptr noundef nonnull %26, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30) #19
  %331 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %25) #16
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %329
  %334 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  call fastcc void @addres2reslib(ptr noundef nonnull %206)
  store i32 0, ptr @n_atoms, align 4, !tbaa !59
  br label %337

337:                                              ; preds = %336, %333
  %338 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %25) #19
  br label %339

339:                                              ; preds = %337, %329
  %340 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %341
  call void @NAB_initatom(ptr noundef nonnull %342, i32 noundef 0) #19
  %343 = load ptr, ptr %342, align 16, !tbaa !55
  %344 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %343, ptr noundef nonnull dereferenceable(1) %24) #19
  %345 = load double, ptr %28, align 8, !tbaa !60
  %346 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %341, i32 17
  store double %345, ptr %346, align 16, !tbaa !60
  %347 = load double, ptr %29, align 8, !tbaa !60
  %348 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %341, i32 17, i64 1
  store double %347, ptr %348, align 8, !tbaa !60
  %349 = load double, ptr %30, align 8, !tbaa !60
  %350 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %341, i32 17, i64 2
  store double %349, ptr %350, align 16, !tbaa !60
  %351 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %352 = add nsw i32 %351, 1
  store i32 %352, ptr @n_atoms, align 4, !tbaa !59
  br label %353

353:                                              ; preds = %339, %326, %322
  %354 = call ptr @fgets(ptr noundef nonnull %22, i32 noundef 256, ptr noundef %202)
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %299, !llvm.loop !65

356:                                              ; preds = %353, %291
  %357 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  call fastcc void @addres2reslib(ptr noundef nonnull %206)
  br label %360

360:                                              ; preds = %356, %359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #19
  store i32 0, ptr @n_bonds, align 4, !tbaa !59
  store i8 0, ptr %17, align 16, !tbaa !52
  %361 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 256, ptr noundef %203)
  %362 = icmp eq ptr %361, null
  br i1 %362, label %404, label %363

363:                                              ; preds = %360, %401
  %364 = load i8, ptr %16, align 16, !tbaa !52
  %365 = icmp eq i8 %364, 35
  br i1 %365, label %366, label %383

366:                                              ; preds = %363
  %367 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.86, ptr noundef nonnull %17) #19
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %376, label %369

369:                                              ; preds = %366
  %370 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #16
  %371 = trunc i64 %370 to i32
  %372 = add i32 %371, -1
  %373 = call i32 @llvm.smin.i32(i32 %372, i32 20)
  %374 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %373, i32 noundef %373, ptr noundef nonnull %16) #19
  %375 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.87, ptr noundef nonnull @e_msg) #19
  br label %408

376:                                              ; preds = %366
  %377 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  call fastcc void @addbonds2reslib(ptr noundef nonnull %206)
  %380 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %17) #19
  store i32 0, ptr @n_bonds, align 4, !tbaa !59
  br label %401

381:                                              ; preds = %376
  %382 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %17) #19
  br label %401

383:                                              ; preds = %363
  %384 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.88, ptr noundef nonnull %18, ptr noundef nonnull %19) #19
  %385 = icmp eq i32 %384, 2
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #16
  %388 = trunc i64 %387 to i32
  %389 = add i32 %388, -1
  %390 = call i32 @llvm.smin.i32(i32 %389, i32 20)
  %391 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %390, i32 noundef %390, ptr noundef nonnull %16) #19
  %392 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef nonnull @e_msg) #19
  br label %408

393:                                              ; preds = %383
  %394 = load i32, ptr %18, align 4, !tbaa !59
  %395 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %396
  store i32 %394, ptr %397, align 8, !tbaa !59
  %398 = load i32, ptr %19, align 4, !tbaa !59
  %399 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %396, i64 1
  store i32 %398, ptr %399, align 4, !tbaa !59
  %400 = add nsw i32 %395, 1
  store i32 %400, ptr @n_bonds, align 4, !tbaa !59
  br label %401

401:                                              ; preds = %393, %381, %379
  %402 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 256, ptr noundef %203)
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %363, !llvm.loop !66

404:                                              ; preds = %401, %360
  %405 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %406 = icmp sgt i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  call fastcc void @addbonds2reslib(ptr noundef nonnull %206)
  br label %408

408:                                              ; preds = %369, %386, %404, %407
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #19
  %409 = call i32 @fclose(ptr noundef %202)
  %410 = call i32 @fclose(ptr noundef %203)
  br label %411

411:                                              ; preds = %408, %290
  %412 = icmp eq ptr %204, null
  br i1 %412, label %456, label %413

413:                                              ; preds = %411
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  store i32 0, ptr @n_atoms, align 4, !tbaa !59
  store i8 0, ptr @lr_name, align 1, !tbaa !52
  %414 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 256, ptr noundef nonnull %204)
  %415 = icmp eq ptr %414, null
  br i1 %415, label %450, label %416

416:                                              ; preds = %413, %419
  %417 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.90, ptr noundef nonnull dereferenceable(3) %8, i64 3)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %425, %438, %416
  %420 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 256, ptr noundef nonnull %204)
  %421 = icmp eq ptr %420, null
  br i1 %421, label %450, label %416, !llvm.loop !67

422:                                              ; preds = %416
  %423 = load i32, ptr %8, align 16
  %424 = icmp eq i32 %423, 1297044545
  br i1 %424, label %428, label %425

425:                                              ; preds = %422
  %426 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.81, ptr noundef nonnull dereferenceable(6) %8, i64 6)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %419

428:                                              ; preds = %425, %422
  %429 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.91, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  %430 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %11) #16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %438, label %432

432:                                              ; preds = %428
  %433 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  call fastcc void @addqr2reslib(ptr noundef nonnull %206)
  store i32 0, ptr @n_atoms, align 4, !tbaa !59
  br label %436

436:                                              ; preds = %435, %432
  %437 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %11) #19
  br label %438

438:                                              ; preds = %436, %428
  %439 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %440
  call void @NAB_initatom(ptr noundef nonnull %441, i32 noundef 0) #19
  %442 = load ptr, ptr %441, align 16, !tbaa !55
  %443 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %442, ptr noundef nonnull dereferenceable(1) %10) #19
  %444 = load double, ptr %14, align 8, !tbaa !60
  %445 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %440, i32 6
  store double %444, ptr %445, align 16, !tbaa !61
  %446 = load double, ptr %15, align 8, !tbaa !60
  %447 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %440, i32 7
  store double %446, ptr %447, align 8, !tbaa !68
  %448 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr @n_atoms, align 4, !tbaa !59
  br label %419

450:                                              ; preds = %419, %413
  %451 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %450
  call fastcc void @addqr2reslib(ptr noundef nonnull %206)
  br label %454

454:                                              ; preds = %450, %453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #19
  %455 = call i32 @fclose(ptr noundef nonnull %204)
  br label %456

456:                                              ; preds = %454, %411
  %457 = icmp eq ptr %205, null
  br i1 %457, label %626, label %458

458:                                              ; preds = %456
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i32 0, ptr @n_chi, align 4, !tbaa !59
  store i8 0, ptr %3, align 16, !tbaa !52
  %459 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 256, ptr noundef nonnull %205)
  %460 = icmp eq ptr %459, null
  br i1 %460, label %620, label %461

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 4
  br label %463

463:                                              ; preds = %461, %616
  %464 = phi ptr [ null, %461 ], [ %617, %616 ]
  %465 = load i8, ptr %2, align 16, !tbaa !52
  %466 = icmp eq i8 %465, 35
  br i1 %466, label %467, label %499

467:                                              ; preds = %463
  %468 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.86, ptr noundef nonnull %3) #19
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %478, label %470

470:                                              ; preds = %467
  %471 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %472 = trunc i64 %471 to i32
  %473 = add i32 %472, -1
  %474 = call i32 @llvm.smin.i32(i32 %473, i32 20)
  %475 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %474, i32 noundef %474, ptr noundef nonnull %2) #19
  %476 = load ptr, ptr @stderr, align 8, !tbaa !40
  %477 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %476, ptr noundef nonnull @.str.92, ptr noundef nonnull @e_msg) #17
  br label %624

478:                                              ; preds = %467
  %479 = load i32, ptr @n_chi, align 4, !tbaa !59
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  call fastcc void @addchi2reslib(ptr noundef nonnull %206)
  store i32 0, ptr @n_chi, align 4, !tbaa !59
  br label %482

482:                                              ; preds = %481, %478
  br label %483

483:                                              ; preds = %482, %487
  %484 = phi ptr [ %485, %487 ], [ %462, %482 ]
  %485 = load ptr, ptr %484, align 8, !tbaa !40
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487

487:                                              ; preds = %483
  %488 = getelementptr inbounds %struct.residue_t, ptr %485, i64 0, i32 4
  %489 = load ptr, ptr %488, align 8, !tbaa !69
  %490 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %489, ptr noundef nonnull dereferenceable(1) %3) #16
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %497, label %483, !llvm.loop !71

492:                                              ; preds = %483
  %493 = load ptr, ptr @stderr, align 8, !tbaa !40
  %494 = getelementptr inbounds %struct.reslib_t, ptr %206, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !44
  %496 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %493, ptr noundef nonnull @.str.93, ptr noundef nonnull %3, ptr noundef %495) #17
  br label %624

497:                                              ; preds = %487
  %498 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %3) #19
  br label %616

499:                                              ; preds = %463
  %500 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.94, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %501 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 15
  %502 = load i32, ptr %501, align 8, !tbaa !72
  %503 = icmp sgt i32 %502, 0
  br i1 %503, label %504, label %517

504:                                              ; preds = %499
  %505 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 17
  %506 = load ptr, ptr %505, align 8, !tbaa !73
  %507 = zext nneg i32 %502 to i64
  br label %511

508:                                              ; preds = %511
  %509 = add nuw nsw i64 %512, 1
  %510 = icmp eq i64 %509, %507
  br i1 %510, label %517, label %511, !llvm.loop !74

511:                                              ; preds = %504, %508
  %512 = phi i64 [ 0, %504 ], [ %509, %508 ]
  %513 = getelementptr inbounds %struct.atom_t, ptr %506, i64 %512
  %514 = load ptr, ptr %513, align 8, !tbaa !55
  %515 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %514, ptr noundef nonnull dereferenceable(1) %4) #16
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %508

517:                                              ; preds = %508, %511, %499
  %518 = phi ptr [ null, %499 ], [ null, %508 ], [ %513, %511 ]
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %525

520:                                              ; preds = %517
  %521 = load ptr, ptr @stderr, align 8, !tbaa !40
  %522 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 4
  %523 = load ptr, ptr %522, align 8, !tbaa !69
  %524 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %521, ptr noundef nonnull @.str.95, ptr noundef nonnull %4, ptr noundef %523) #17
  call void @exit(i32 noundef 1) #18
  unreachable

525:                                              ; preds = %517
  %526 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 17
  %527 = load ptr, ptr %526, align 8, !tbaa !73
  %528 = ptrtoint ptr %518 to i64
  %529 = ptrtoint ptr %527 to i64
  %530 = sub i64 %528, %529
  %531 = sdiv exact i64 %530, 176
  %532 = trunc i64 %531 to i32
  %533 = icmp sgt i32 %502, 0
  br i1 %533, label %534, label %545

534:                                              ; preds = %525
  %535 = zext nneg i32 %502 to i64
  br label %539

536:                                              ; preds = %539
  %537 = add nuw nsw i64 %540, 1
  %538 = icmp eq i64 %537, %535
  br i1 %538, label %545, label %539, !llvm.loop !74

539:                                              ; preds = %534, %536
  %540 = phi i64 [ 0, %534 ], [ %537, %536 ]
  %541 = getelementptr inbounds %struct.atom_t, ptr %527, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !55
  %543 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %542, ptr noundef nonnull dereferenceable(1) %5) #16
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %536

545:                                              ; preds = %536, %539, %525
  %546 = phi ptr [ null, %525 ], [ null, %536 ], [ %541, %539 ]
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %553

548:                                              ; preds = %545
  %549 = load ptr, ptr @stderr, align 8, !tbaa !40
  %550 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 4
  %551 = load ptr, ptr %550, align 8, !tbaa !69
  %552 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %549, ptr noundef nonnull @.str.95, ptr noundef nonnull %5, ptr noundef %551) #17
  call void @exit(i32 noundef 1) #18
  unreachable

553:                                              ; preds = %545
  %554 = ptrtoint ptr %546 to i64
  %555 = sub i64 %554, %529
  %556 = sdiv exact i64 %555, 176
  %557 = trunc i64 %556 to i32
  %558 = icmp sgt i32 %502, 0
  br i1 %558, label %559, label %570

559:                                              ; preds = %553
  %560 = zext nneg i32 %502 to i64
  br label %564

561:                                              ; preds = %564
  %562 = add nuw nsw i64 %565, 1
  %563 = icmp eq i64 %562, %560
  br i1 %563, label %570, label %564, !llvm.loop !74

564:                                              ; preds = %559, %561
  %565 = phi i64 [ 0, %559 ], [ %562, %561 ]
  %566 = getelementptr inbounds %struct.atom_t, ptr %527, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !55
  %568 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %567, ptr noundef nonnull dereferenceable(1) %6) #16
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %561

570:                                              ; preds = %561, %564, %553
  %571 = phi ptr [ null, %553 ], [ null, %561 ], [ %566, %564 ]
  %572 = icmp eq ptr %571, null
  br i1 %572, label %577, label %573

573:                                              ; preds = %570
  %574 = icmp sgt i32 %502, 0
  br i1 %574, label %575, label %591

575:                                              ; preds = %573
  %576 = zext nneg i32 %502 to i64
  br label %585

577:                                              ; preds = %570
  %578 = load ptr, ptr @stderr, align 8, !tbaa !40
  %579 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !69
  %581 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %578, ptr noundef nonnull @.str.95, ptr noundef nonnull %6, ptr noundef %580) #17
  call void @exit(i32 noundef 1) #18
  unreachable

582:                                              ; preds = %585
  %583 = add nuw nsw i64 %586, 1
  %584 = icmp eq i64 %583, %576
  br i1 %584, label %591, label %585, !llvm.loop !74

585:                                              ; preds = %575, %582
  %586 = phi i64 [ 0, %575 ], [ %583, %582 ]
  %587 = getelementptr inbounds %struct.atom_t, ptr %527, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !55
  %589 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %588, ptr noundef nonnull dereferenceable(1) %7) #16
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %582

591:                                              ; preds = %582, %585, %573
  %592 = phi ptr [ null, %573 ], [ null, %582 ], [ %587, %585 ]
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %599

594:                                              ; preds = %591
  %595 = load ptr, ptr @stderr, align 8, !tbaa !40
  %596 = getelementptr inbounds %struct.residue_t, ptr %464, i64 0, i32 4
  %597 = load ptr, ptr %596, align 8, !tbaa !69
  %598 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %595, ptr noundef nonnull @.str.95, ptr noundef nonnull %7, ptr noundef %597) #17
  call void @exit(i32 noundef 1) #18
  unreachable

599:                                              ; preds = %591
  %600 = ptrtoint ptr %571 to i64
  %601 = sub i64 %600, %529
  %602 = sdiv exact i64 %601, 176
  %603 = trunc i64 %602 to i32
  %604 = ptrtoint ptr %592 to i64
  %605 = sub i64 %604, %529
  %606 = sdiv exact i64 %605, 176
  %607 = trunc i64 %606 to i32
  %608 = load i32, ptr @n_chi, align 4, !tbaa !59
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %609
  %611 = add nsw i32 %608, 1
  store i32 %611, ptr @n_chi, align 4, !tbaa !59
  store i32 %532, ptr %610, align 8, !tbaa !59
  %612 = getelementptr inbounds [4 x i32], ptr %610, i64 0, i64 1
  store i32 %557, ptr %612, align 4, !tbaa !59
  %613 = getelementptr inbounds [4 x i32], ptr %610, i64 0, i64 2
  store i32 %603, ptr %613, align 8, !tbaa !59
  %614 = getelementptr inbounds [4 x i32], ptr %610, i64 0, i64 3
  store i32 %607, ptr %614, align 4, !tbaa !59
  %615 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %609, i32 1
  store double 0.000000e+00, ptr %615, align 8, !tbaa !75
  br label %616

616:                                              ; preds = %599, %497
  %617 = phi ptr [ %485, %497 ], [ %464, %599 ]
  %618 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 256, ptr noundef nonnull %205)
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %463, !llvm.loop !77

620:                                              ; preds = %616, %458
  %621 = load i32, ptr @n_chi, align 4, !tbaa !59
  %622 = icmp sgt i32 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %620
  call fastcc void @addchi2reslib(ptr noundef nonnull %206)
  store i32 0, ptr @n_chi, align 4, !tbaa !59
  br label %624

624:                                              ; preds = %470, %492, %620, %623
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #19
  %625 = call i32 @fclose(ptr noundef nonnull %205)
  br label %626

626:                                              ; preds = %456, %624, %201
  %627 = phi ptr [ null, %201 ], [ %206, %624 ], [ %206, %456 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %53) #19
  ret ptr %627
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @setreslibkind(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !39 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @reslibs, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.reslib_t, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !47

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %5, %7 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @read_reslib(ptr noundef %0)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !40
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %0) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

21:                                               ; preds = %15, %12
  %22 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %23 = getelementptr inbounds %struct.reslib_t, ptr %22, i64 0, i32 2
  store i32 0, ptr %23, align 8, !tbaa !50
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.2) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.5) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.3) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.6) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.4) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.7) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %38, %29, %32, %21, %26
  %42 = phi i32 [ 1, %26 ], [ 1, %21 ], [ 2, %32 ], [ 2, %29 ], [ 3, %38 ], [ 3, %35 ]
  store i32 %42, ptr %23, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, ptr %23, align 8, !tbaa !50
  ret i32 %44
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @getresidue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #19
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ @reslibs, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.reslib_t, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !47

13:                                               ; preds = %8, %4
  %14 = phi ptr [ null, %4 ], [ %6, %8 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @read_reslib(ptr noundef %1)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %22 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #19
  %23 = getelementptr inbounds %struct.reslib_t, ptr %21, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !50
  switch i32 %24, label %57 [
    i32 1, label %25
    i32 2, label %41
  ]

25:                                               ; preds = %20
  %26 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.9, i64 3, i1 false) #19
  br label %57

29:                                               ; preds = %25
  %30 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.10, i64 noundef 3) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false) #19
  br label %57

33:                                               ; preds = %29
  %34 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.12, i64 noundef 3) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false) #19
  br label %57

37:                                               ; preds = %33
  %38 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.14, i64 noundef 3) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.15, i64 3, i1 false) #19
  br label %57

41:                                               ; preds = %20
  %42 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false) #19
  br label %57

45:                                               ; preds = %41
  %46 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.10, i64 noundef 3) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false) #19
  br label %57

49:                                               ; preds = %45
  %50 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.18, i64 noundef 3) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false) #19
  br label %57

53:                                               ; preds = %49
  %54 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.14, i64 noundef 3) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.20, i64 3, i1 false) #19
  br label %57

57:                                               ; preds = %20, %48, %53, %56, %52, %44, %28, %36, %40, %37, %32
  %58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 51)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 53)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60, %57
  %64 = phi i16 [ 51, %57 ], [ 53, %60 ]
  %65 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %66 = getelementptr inbounds i8, ptr %3, i64 %65
  store i16 %64, ptr %66, align 1
  br label %67

67:                                               ; preds = %63, %60
  %68 = getelementptr inbounds %struct.reslib_t, ptr %21, i64 0, i32 4
  br label %69

69:                                               ; preds = %78, %67
  %70 = phi ptr [ %68, %67 ], [ %71, %78 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !40
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.residue_t, ptr %71, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %0) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %3) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %69, !llvm.loop !78

81:                                               ; preds = %69
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %0, ptr noundef %1) #19
  %83 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #19
  br label %86

84:                                               ; preds = %73, %78
  %85 = call ptr @copyresidue(ptr noundef nonnull %71)
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ null, %81 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #19
  ret ptr %87
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copyresidue(ptr noundef %0) local_unnamed_addr #7 !prof !79 {
  %2 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %231, label %4, !prof !80

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 176
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %231, label %11, !prof !80

11:                                               ; preds = %4
  %12 = shl nsw i64 %7, 2
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %231, label %15, !prof !80

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24, !prof !80

19:                                               ; preds = %15
  %20 = zext nneg i32 %17 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %231, label %24

24:                                               ; preds = %15, %19
  %25 = phi ptr [ %22, %19 ], [ null, %15 ]
  %26 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !82
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34, !prof !80

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  %31 = mul nuw nsw i64 %30, 24
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %231, label %34

34:                                               ; preds = %24, %29
  %35 = phi ptr [ %32, %29 ], [ null, %24 ]
  store ptr null, ptr %2, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #16
  %39 = add i64 %38, 1
  %40 = tail call noalias ptr @malloc(i64 noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45, !prof !80

42:                                               ; preds = %34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !40
  %44 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 43, i64 1, ptr %43) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

45:                                               ; preds = %34
  %46 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %37) #19
  %47 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 4
  store ptr %40, ptr %47, align 8, !tbaa !69
  %48 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %49) #16
  %51 = add i64 %50, 1
  %52 = tail call noalias ptr @malloc(i64 noundef %51) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57, !prof !80

54:                                               ; preds = %45
  %55 = load ptr, ptr @stderr, align 8, !tbaa !40
  %56 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 41, i64 1, ptr %55) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

57:                                               ; preds = %45
  %58 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %49) #19
  %59 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 5
  store ptr %52, ptr %59, align 8, !tbaa !84
  %60 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !85
  %62 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 1
  store i32 %61, ptr %62, align 8, !tbaa !85
  %63 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 2
  store i32 0, ptr %63, align 4, !tbaa !86
  %64 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 3
  store i32 0, ptr %64, align 8, !tbaa !87
  %65 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !88
  %67 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 6
  store i32 %66, ptr %67, align 8, !tbaa !88
  %68 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 9
  store ptr null, ptr %68, align 8, !tbaa !89
  %69 = tail call ptr (ptr, ...) @copyextbonds(ptr noundef %0) #19
  %70 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 10
  store ptr %69, ptr %70, align 8, !tbaa !90
  %71 = load i32, ptr %16, align 8, !tbaa !81
  %72 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 11
  store i32 %71, ptr %72, align 8, !tbaa !81
  %73 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 12
  store ptr %25, ptr %73, align 8, !tbaa !91
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %75, label %89, !prof !92

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %87, %78 ]
  %80 = zext nneg i32 %71 to i64
  %81 = getelementptr inbounds [2 x i32], ptr %77, i64 %79
  %82 = load i32, ptr %81, align 4, !tbaa !59
  %83 = getelementptr inbounds [2 x i32], ptr %25, i64 %79
  store i32 %82, ptr %83, align 4, !tbaa !59
  %84 = getelementptr inbounds [2 x i32], ptr %77, i64 %79, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = getelementptr inbounds [2 x i32], ptr %25, i64 %79, i64 1
  store i32 %85, ptr %86, align 4, !tbaa !59
  %87 = add nuw nsw i64 %79, 1
  %88 = icmp eq i64 %87, %80
  br i1 %88, label %89, label %78, !prof !93, !llvm.loop !94

89:                                               ; preds = %78, %57
  %90 = load i32, ptr %26, align 8, !tbaa !82
  %91 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 13
  store i32 %90, ptr %91, align 8, !tbaa !82
  %92 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 14
  store ptr %35, ptr %92, align 8, !tbaa !95
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %94, label %116, !prof !92

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !95
  br label %97

97:                                               ; preds = %94, %108
  %98 = phi i64 [ 0, %94 ], [ %113, %108 ]
  %99 = phi ptr [ %35, %94 ], [ %114, %108 ]
  %100 = getelementptr inbounds %struct.chiral_t, ptr %96, i64 %98
  br label %101

101:                                              ; preds = %97, %101
  %102 = phi i64 [ 0, %97 ], [ %106, %101 ]
  %103 = getelementptr inbounds [4 x i32], ptr %100, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !59
  %105 = getelementptr inbounds [4 x i32], ptr %99, i64 0, i64 %102
  store i32 %104, ptr %105, align 4, !tbaa !59
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %101, !llvm.loop !96

108:                                              ; preds = %101
  %109 = zext nneg i32 %90 to i64
  %110 = getelementptr inbounds %struct.chiral_t, ptr %96, i64 %98, i32 1
  %111 = load double, ptr %110, align 8, !tbaa !75
  %112 = getelementptr inbounds %struct.chiral_t, ptr %99, i64 0, i32 1
  store double %111, ptr %112, align 8, !tbaa !75
  %113 = add nuw nsw i64 %98, 1
  %114 = getelementptr inbounds %struct.chiral_t, ptr %99, i64 1
  %115 = icmp eq i64 %113, %109
  br i1 %115, label %116, label %97, !prof !93, !llvm.loop !97

116:                                              ; preds = %108, %89
  %117 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 7
  %118 = load i32, ptr %117, align 4, !tbaa !98
  %119 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 7
  store i32 %118, ptr %119, align 4, !tbaa !98
  %120 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 8
  %121 = load i32, ptr %120, align 8, !tbaa !99
  %122 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 8
  store i32 %121, ptr %122, align 8, !tbaa !99
  %123 = load i32, ptr %5, align 8, !tbaa !72
  %124 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 15
  store i32 %123, ptr %124, align 8, !tbaa !72
  %125 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 16
  store ptr %13, ptr %125, align 8, !tbaa !100
  %126 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  %127 = load ptr, ptr %126, align 8, !tbaa !100
  %128 = icmp eq ptr %127, null
  %129 = load i32, ptr %5, align 8, !tbaa !72
  %130 = icmp sgt i32 %129, 0
  br i1 %128, label %134, label %131, !prof !101

131:                                              ; preds = %116
  br i1 %130, label %132, label %150

132:                                              ; preds = %131
  %133 = zext nneg i32 %129 to i64
  br label %137

134:                                              ; preds = %116
  br i1 %130, label %135, label %150, !prof !102

135:                                              ; preds = %134
  %136 = zext nneg i32 %129 to i64
  br label %144

137:                                              ; preds = %132, %137
  %138 = phi i64 [ 0, %132 ], [ %142, %137 ]
  %139 = getelementptr inbounds i32, ptr %127, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !59
  %141 = getelementptr inbounds i32, ptr %13, i64 %138
  store i32 %140, ptr %141, align 4, !tbaa !59
  %142 = add nuw nsw i64 %138, 1
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %150, label %137, !llvm.loop !103

144:                                              ; preds = %135, %144
  %145 = phi i64 [ 0, %135 ], [ %148, %144 ]
  %146 = getelementptr inbounds i32, ptr %13, i64 %145
  %147 = trunc i64 %145 to i32
  store i32 %147, ptr %146, align 4, !tbaa !59
  %148 = add nuw nsw i64 %145, 1
  %149 = icmp eq i64 %148, %136
  br i1 %149, label %150, label %144, !prof !104, !llvm.loop !105

150:                                              ; preds = %137, %144, %131, %134
  %151 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 17
  store ptr %9, ptr %151, align 8, !tbaa !73
  %152 = load i32, ptr %5, align 8, !tbaa !72
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %237, !prof !102

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !73
  %157 = zext nneg i32 %152 to i64
  br label %158

158:                                              ; preds = %154, %186
  %159 = phi i64 [ 0, %154 ], [ %229, %186 ]
  %160 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !55
  %162 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #16
  %163 = add i64 %162, 1
  %164 = tail call noalias ptr @malloc(i64 noundef %163) #20
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %169, !prof !106

166:                                              ; preds = %158
  %167 = load ptr, ptr @stderr, align 8, !tbaa !40
  %168 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 33, i64 1, ptr %167) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

169:                                              ; preds = %158
  %170 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) %161) #19
  %171 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159
  store ptr %164, ptr %171, align 8, !tbaa !55
  %172 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 1
  store ptr null, ptr %172, align 8, !tbaa !107
  %173 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 2
  %174 = load i32, ptr %173, align 8, !tbaa !108
  %175 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 2
  store i32 %174, ptr %175, align 8, !tbaa !108
  %176 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !109
  %178 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 3
  store i32 %177, ptr %178, align 4, !tbaa !109
  br label %179

179:                                              ; preds = %169, %179
  %180 = phi i64 [ 0, %169 ], [ %184, %179 ]
  %181 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 4, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !59
  %183 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 4, i64 %180
  store i32 %182, ptr %183, align 4, !tbaa !59
  %184 = add nuw nsw i64 %180, 1
  %185 = icmp eq i64 %184, 8
  br i1 %185, label %186, label %179, !prof !110, !llvm.loop !111

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 5
  store ptr %2, ptr %187, align 8, !tbaa !112
  %188 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 6
  %189 = load double, ptr %188, align 8, !tbaa !61
  %190 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 6
  store double %189, ptr %190, align 8, !tbaa !61
  %191 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 7
  %192 = load double, ptr %191, align 8, !tbaa !68
  %193 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 7
  store double %192, ptr %193, align 8, !tbaa !68
  %194 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 8
  %195 = load double, ptr %194, align 8, !tbaa !113
  %196 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 8
  store double %195, ptr %196, align 8, !tbaa !113
  %197 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 9
  %198 = load double, ptr %197, align 8, !tbaa !114
  %199 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 9
  store double %198, ptr %199, align 8, !tbaa !114
  %200 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 10
  store ptr null, ptr %200, align 8, !tbaa !115
  %201 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 11
  %202 = load i32, ptr %201, align 8, !tbaa !116
  %203 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 11
  store i32 %202, ptr %203, align 8, !tbaa !116
  %204 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 12
  %205 = load double, ptr %204, align 8, !tbaa !117
  %206 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 12
  store double %205, ptr %206, align 8, !tbaa !117
  %207 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 13
  %208 = load double, ptr %207, align 8, !tbaa !118
  %209 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 13
  store double %208, ptr %209, align 8, !tbaa !118
  %210 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 14
  %211 = load i32, ptr %210, align 8, !tbaa !119
  %212 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 14
  store i32 %211, ptr %212, align 8, !tbaa !119
  %213 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 15
  %214 = load i32, ptr %213, align 4, !tbaa !120
  %215 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 15
  store i32 %214, ptr %215, align 4, !tbaa !120
  %216 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 16
  store ptr null, ptr %216, align 8, !tbaa !121
  %217 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 17
  %218 = load double, ptr %217, align 8, !tbaa !60
  %219 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 17
  store double %218, ptr %219, align 8, !tbaa !60
  %220 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 17, i64 1
  %221 = load double, ptr %220, align 8, !tbaa !60
  %222 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 17, i64 1
  store double %221, ptr %222, align 8, !tbaa !60
  %223 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 17, i64 2
  %224 = load double, ptr %223, align 8, !tbaa !60
  %225 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 17, i64 2
  store double %224, ptr %225, align 8, !tbaa !60
  %226 = getelementptr inbounds %struct.atom_t, ptr %156, i64 %159, i32 18
  %227 = load double, ptr %226, align 8, !tbaa !122
  %228 = getelementptr inbounds %struct.atom_t, ptr %9, i64 %159, i32 18
  store double %227, ptr %228, align 8, !tbaa !122
  %229 = add nuw nsw i64 %159, 1
  %230 = icmp eq i64 %229, %157
  br i1 %230, label %237, label %158, !prof !104, !llvm.loop !123

231:                                              ; preds = %29, %19, %11, %4, %1
  %232 = phi ptr [ @.str.25, %1 ], [ @.str.27, %4 ], [ @.str.28, %11 ], [ @.str.29, %19 ], [ @.str.30, %29 ]
  %233 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !69
  %235 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) %232, ptr noundef %234) #19
  %236 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %237

237:                                              ; preds = %186, %231, %150
  %238 = phi ptr [ %2, %150 ], [ null, %231 ], [ %2, %186 ]
  ret ptr %238
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @copyextbonds(...) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copystrand(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !39 {
  %2 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !124
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %5) #19
  br label %60

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #20
  %13 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !127
  %14 = icmp eq ptr %12, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !124
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #16
  %18 = add i64 %17, 1
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %16) #19
  br label %60

23:                                               ; preds = %15
  store ptr %19, ptr %2, align 8, !tbaa !124
  %24 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %16) #19
  %25 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !128
  %27 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !128
  %28 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !129
  %30 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 2
  store i32 %29, ptr %30, align 4, !tbaa !129
  %31 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 3
  %32 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  store i32 %9, ptr %32, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 6
  store i32 %9, ptr %33, align 4, !tbaa !130
  %34 = load i32, ptr %8, align 8, !tbaa !126
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 7
  br label %38

38:                                               ; preds = %36, %55
  %39 = phi i64 [ 0, %36 ], [ %56, %55 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !127
  %41 = getelementptr inbounds ptr, ptr %40, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = tail call ptr @copyresidue(ptr noundef %42)
  %44 = load ptr, ptr %13, align 8, !tbaa !127
  %45 = getelementptr inbounds ptr, ptr %44, i64 %39
  store ptr %43, ptr %45, align 8, !tbaa !40
  %46 = load ptr, ptr %13, align 8, !tbaa !127
  %47 = getelementptr inbounds ptr, ptr %46, i64 %39
  %48 = load ptr, ptr %47, align 8, !tbaa !40
  %49 = getelementptr inbounds %struct.residue_t, ptr %48, i64 0, i32 9
  store ptr %2, ptr %49, align 8, !tbaa !89
  %50 = icmp eq i64 %39, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = load ptr, ptr %47, align 8, !tbaa !40
  %53 = getelementptr ptr, ptr %47, i64 -1
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  store ptr %52, ptr %54, align 8, !tbaa !83
  br label %55

55:                                               ; preds = %38, %51
  %56 = add nuw nsw i64 %39, 1
  %57 = load i32, ptr %8, align 8, !tbaa !126
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %38, label %63, !llvm.loop !131

60:                                               ; preds = %7, %4, %21
  %61 = phi ptr [ @e_msg, %21 ], [ @e_msg, %4 ], [ @.str.35, %7 ]
  %62 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull %61) #19
  br label %63

63:                                               ; preds = %55, %60, %23
  %64 = phi ptr [ %2, %23 ], [ null, %60 ], [ %2, %55 ]
  ret ptr %64
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copymolecule(ptr noundef %0) local_unnamed_addr #0 !prof !39 {
  tail call void @upd_molnumbers(ptr noundef %0) #19
  %2 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) @e_msg, ptr noundef nonnull align 1 dereferenceable(13) @.str.37, i64 13, i1 false)
  %5 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %53

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !132
  %9 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 3
  store i32 %11, ptr %12, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !135
  %15 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !135
  %16 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !136
  %18 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 5
  store i32 %17, ptr %18, align 8, !tbaa !136
  %19 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = tail call ptr @copyparm(ptr noundef nonnull %20) #19
  br label %24

24:                                               ; preds = %6, %22
  %25 = phi ptr [ %23, %22 ], [ null, %6 ]
  %26 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false), !tbaa !60
  %27 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = tail call ptr @copystrand(ptr noundef nonnull %28)
  %32 = getelementptr inbounds %struct.strand_t, ptr %31, i64 0, i32 3
  store ptr %2, ptr %32, align 8, !tbaa !139
  %33 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 2
  store ptr %31, ptr %33, align 8, !tbaa !138
  %34 = getelementptr inbounds %struct.strand_t, ptr %28, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !140
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi ptr [ %35, %30 ], [ null, %24 ]
  %38 = phi ptr [ %31, %30 ], [ undef, %24 ]
  %39 = icmp eq ptr %37, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36, %47
  %41 = phi ptr [ %43, %47 ], [ %38, %36 ]
  %42 = phi ptr [ %50, %47 ], [ %37, %36 ]
  %43 = tail call ptr @copystrand(ptr noundef nonnull %42)
  %44 = icmp eq ptr %41, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.strand_t, ptr %41, i64 0, i32 4
  store ptr %43, ptr %46, align 8, !tbaa !140
  br label %47

47:                                               ; preds = %45, %40
  %48 = getelementptr inbounds %struct.strand_t, ptr %43, i64 0, i32 3
  store ptr %2, ptr %48, align 8, !tbaa !139
  %49 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !140
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !141

52:                                               ; preds = %47, %36
  tail call void @upd_molnumbers(ptr noundef nonnull %2) #19
  br label %53

53:                                               ; preds = %52, %4
  %54 = phi ptr [ null, %4 ], [ %2, %52 ]
  ret ptr %54
}

declare void @upd_molnumbers(ptr noundef) local_unnamed_addr #6

declare ptr @copyparm(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @mk_fname(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !39 {
  %3 = load i8, ptr %0, align 1, !tbaa !52
  %4 = icmp eq i8 %3, 47
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.61, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 2) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %2
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #19
  br label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %0) #19
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @dbDBRndOpen(...) local_unnamed_addr #6

declare signext i8 @bDBGetValue(...) local_unnamed_addr #6

declare void @DBZeroPrefix(...) local_unnamed_addr #6

declare void @DBPushPrefix(...) local_unnamed_addr #6

declare signext i8 @bDBGetTable(...) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define internal fastcc void @addres2reslib(ptr nocapture noundef %0) unnamed_addr #0 !prof !39 {
  %2 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %105, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 176
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %105, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  store ptr %12, ptr %2, align 8, !tbaa !83
  store ptr %2, ptr %11, align 8, !tbaa !142
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @lr_name) #16
  %14 = add i64 %13, 1
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @stderr, align 8, !tbaa !40
  %19 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 45, i64 1, ptr %18) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %10
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @lr_name) #19
  %22 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 4
  store ptr %15, ptr %22, align 8, !tbaa !69
  %23 = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !40
  %27 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 43, i64 1, ptr %26) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

28:                                               ; preds = %20
  store i8 0, ptr %23, align 1
  %29 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 5
  store ptr %23, ptr %29, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 1
  store i32 0, ptr %30, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 2
  store i32 0, ptr %31, align 4, !tbaa !86
  %32 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 3
  store i32 0, ptr %32, align 8, !tbaa !87
  %33 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 6
  store i32 0, ptr %33, align 8, !tbaa !88
  %34 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 7
  store i32 %35, ptr %36, align 4, !tbaa !98
  %37 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 8
  store i32 %38, ptr %39, align 8, !tbaa !99
  %40 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 9
  %41 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 12
  store ptr null, ptr %41, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 13
  store i32 0, ptr %42, align 8, !tbaa !82
  %43 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 14
  store ptr null, ptr %43, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %40, i8 0, i64 20, i1 false)
  store i32 %5, ptr %44, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 16
  store ptr null, ptr %45, align 8, !tbaa !100
  %46 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 17
  store ptr %8, ptr %46, align 8, !tbaa !73
  %47 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %111

49:                                               ; preds = %28
  %50 = load i32, ptr @n_atoms, align 4
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 1)
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr i8, ptr %8, i64 24
  br label %54

54:                                               ; preds = %49, %65
  %55 = phi i64 [ 0, %49 ], [ %103, %65 ]
  %56 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 16, !tbaa !55
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #16
  %59 = add i64 %58, 1
  %60 = tail call noalias ptr @malloc(i64 noundef %59) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load ptr, ptr @stderr, align 8, !tbaa !40
  %64 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 35, i64 1, ptr %63) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

65:                                               ; preds = %54
  %66 = mul nuw nsw i64 %55, 176
  %67 = add nuw nsw i64 %66, 144
  %68 = getelementptr i8, ptr @atoms, i64 %67
  %69 = getelementptr i8, ptr %8, i64 %67
  %70 = mul nuw nsw i64 %55, 176
  %71 = getelementptr i8, ptr %53, i64 %70
  %72 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %57) #19
  %73 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55
  store ptr %60, ptr %73, align 8, !tbaa !55
  %74 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 2
  store i32 0, ptr %74, align 8, !tbaa !108
  %75 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 3
  store i32 0, ptr %75, align 4, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %71, i8 -1, i64 32, i1 false), !tbaa !59
  %76 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 5
  store ptr %2, ptr %76, align 8, !tbaa !112
  %77 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 6
  %78 = load double, ptr %77, align 16, !tbaa !61
  %79 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 6
  store double %78, ptr %79, align 8, !tbaa !61
  %80 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 7
  %81 = load double, ptr %80, align 8, !tbaa !68
  %82 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 7
  store double %81, ptr %82, align 8, !tbaa !68
  %83 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 8
  %84 = load double, ptr %83, align 16, !tbaa !113
  %85 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 8
  store double %84, ptr %85, align 8, !tbaa !113
  %86 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 9
  %87 = load double, ptr %86, align 8, !tbaa !114
  %88 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 9
  store double %87, ptr %88, align 8, !tbaa !114
  %89 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !116
  %91 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 11
  store i32 %90, ptr %91, align 8, !tbaa !116
  %92 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 12
  %93 = load double, ptr %92, align 16, !tbaa !117
  %94 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 12
  store double %93, ptr %94, align 8, !tbaa !117
  %95 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 13
  %96 = load double, ptr %95, align 8, !tbaa !118
  %97 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 13
  store double %96, ptr %97, align 8, !tbaa !118
  %98 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 15
  store i32 0, ptr %98, align 4, !tbaa !120
  %99 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 16
  store ptr null, ptr %99, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 16 dereferenceable(24) %68, i64 24, i1 false), !tbaa !60
  %100 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %55, i32 18
  %101 = load double, ptr %100, align 8, !tbaa !122
  %102 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %55, i32 18
  store double %101, ptr %102, align 8, !tbaa !122
  %103 = add nuw nsw i64 %55, 1
  %104 = icmp eq i64 %103, %52
  br i1 %104, label %111, label %54, !llvm.loop !143

105:                                              ; preds = %4, %1
  %106 = phi ptr [ @.str.71, %1 ], [ @.str.72, %4 ]
  %107 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !44
  %109 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull @lr_name, ptr noundef %108) #19
  %110 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %111

111:                                              ; preds = %65, %105, %28
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @addbonds2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !39 {
  %2 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %77, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @lr_name) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !144

12:                                               ; preds = %7
  %13 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  br label %27

24:                                               ; preds = %12
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @lr_name) #19
  %26 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @e_msg) #19
  br label %82

27:                                               ; preds = %21, %68
  %28 = phi i64 [ 0, %21 ], [ %69, %68 ]
  %29 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %28
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = getelementptr inbounds [2 x i32], ptr %16, i64 %28
  store i32 %30, ptr %31, align 4, !tbaa !59
  %32 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %28, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = getelementptr inbounds [2 x i32], ptr %16, i64 %28, i64 1
  store i32 %33, ptr %34, align 4, !tbaa !59
  %35 = add nsw i32 %30, -1
  %36 = add nsw i32 %33, -1
  %37 = sext i32 %35 to i64
  br label %41

38:                                               ; preds = %46
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %52, label %41, !llvm.loop !145

41:                                               ; preds = %27, %38
  %42 = phi i64 [ 0, %27 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %37, i32 4, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = icmp eq i32 %44, %36
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %44, -1
  br i1 %47, label %48, label %38

48:                                               ; preds = %46
  store i32 %36, ptr %43, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %37, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !109
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !109
  br label %52

52:                                               ; preds = %41, %38, %48
  %53 = sext i32 %36 to i64
  br label %57

54:                                               ; preds = %62
  %55 = add nuw nsw i64 %58, 1
  %56 = icmp eq i64 %55, 8
  br i1 %56, label %68, label %57, !llvm.loop !146

57:                                               ; preds = %52, %54
  %58 = phi i64 [ 0, %52 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %53, i32 4, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = icmp eq i32 %60, %35
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = icmp eq i32 %60, -1
  br i1 %63, label %64, label %54

64:                                               ; preds = %62
  store i32 %35, ptr %59, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %53, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !109
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !109
  br label %68

68:                                               ; preds = %54, %57, %64
  %69 = add nuw nsw i64 %28, 1
  %70 = load i32, ptr @n_bonds, align 4, !tbaa !59
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %27, label %73, !llvm.loop !147

73:                                               ; preds = %68, %18
  %74 = phi i32 [ %19, %18 ], [ %70, %68 ]
  %75 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 11
  store i32 %74, ptr %75, align 8, !tbaa !81
  %76 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 12
  store ptr %16, ptr %76, align 8, !tbaa !91
  br label %82

77:                                               ; preds = %3
  %78 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.78, ptr noundef nonnull @lr_name, ptr noundef %79) #19
  %81 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #19
  br label %82

82:                                               ; preds = %77, %73, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @addqr2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !39 {
  %2 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @lr_name) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !148

12:                                               ; preds = %7
  %13 = load i32, ptr @n_atoms, align 4, !tbaa !59
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 17
  %17 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp sgt i32 %18, 0
  %20 = zext nneg i32 %18 to i64
  br label %21

21:                                               ; preds = %15, %61
  %22 = phi ptr [ @atoms, %15 ], [ %63, %61 ]
  %23 = phi i32 [ 0, %15 ], [ %62, %61 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !55
  br i1 %19, label %25, label %36

25:                                               ; preds = %21
  %26 = load ptr, ptr %16, align 8, !tbaa !73
  br label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %36, label %30, !llvm.loop !74

30:                                               ; preds = %25, %27
  %31 = phi i64 [ 0, %25 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.atom_t, ptr %26, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %24) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27

36:                                               ; preds = %30, %27, %21
  %37 = phi ptr [ null, %21 ], [ %32, %30 ], [ null, %27 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 6
  %41 = load double, ptr %40, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 6
  store double %41, ptr %42, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 7
  %44 = load double, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 7
  store double %44, ptr %45, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 8
  %47 = load double, ptr %46, align 8, !tbaa !113
  %48 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 8
  store double %47, ptr %48, align 8, !tbaa !113
  %49 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 9
  %50 = load double, ptr %49, align 8, !tbaa !114
  %51 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 9
  store double %50, ptr %51, align 8, !tbaa !114
  %52 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !116
  %54 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 11
  store i32 %53, ptr %54, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 12
  %56 = load double, ptr %55, align 8, !tbaa !117
  %57 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 12
  store double %56, ptr %57, align 8, !tbaa !117
  %58 = getelementptr inbounds %struct.atom_t, ptr %22, i64 0, i32 13
  %59 = load double, ptr %58, align 8, !tbaa !118
  %60 = getelementptr inbounds %struct.atom_t, ptr %37, i64 0, i32 13
  store double %59, ptr %60, align 8, !tbaa !118
  br label %61

61:                                               ; preds = %36, %39
  %62 = add nuw nsw i32 %23, 1
  %63 = getelementptr inbounds %struct.atom_t, ptr %22, i64 1
  %64 = icmp eq i32 %62, %13
  br i1 %64, label %70, label %21, !llvm.loop !149

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.78, ptr noundef nonnull @lr_name, ptr noundef %67) #19
  %69 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @e_msg) #19
  br label %70

70:                                               ; preds = %61, %12, %65
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @addchi2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !39 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @lr_name) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !150

15:                                               ; preds = %10
  %16 = load i32, ptr @n_chi, align 4, !tbaa !59
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 24
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr @stderr, align 8, !tbaa !40
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.96, ptr noundef %12) #17
  br label %67

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 13
  store i32 %16, ptr %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 14
  store ptr %19, ptr %26, align 8, !tbaa !95
  %27 = load i32, ptr @n_chi, align 4, !tbaa !59
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 17
  br label %31

31:                                               ; preds = %29, %53
  %32 = phi i64 [ 0, %29 ], [ %57, %53 ]
  %33 = phi ptr [ %19, %29 ], [ %56, %53 ]
  %34 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %32
  %35 = load ptr, ptr %30, align 8, !tbaa !73
  br label %36

36:                                               ; preds = %31, %36
  %37 = phi i64 [ 0, %31 ], [ %51, %36 ]
  %38 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = getelementptr inbounds [4 x i32], ptr %33, i64 0, i64 %37
  store i32 %39, ptr %40, align 4, !tbaa !59
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %41, i32 17
  %43 = load double, ptr %42, align 8, !tbaa !60
  %44 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %37
  store double %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %41, i32 17, i64 1
  %46 = load double, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %37, i64 1
  store double %46, ptr %47, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %41, i32 17, i64 2
  %49 = load double, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %37, i64 2
  store double %49, ptr %50, align 8, !tbaa !60
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %36, !llvm.loop !151

53:                                               ; preds = %36
  call void @chirvol(i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %54 = load double, ptr %4, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct.chiral_t, ptr %33, i64 0, i32 1
  store double %54, ptr %55, align 8, !tbaa !75
  %56 = getelementptr inbounds %struct.chiral_t, ptr %33, i64 1
  %57 = add nuw nsw i64 %32, 1
  %58 = load i32, ptr @n_chi, align 4, !tbaa !59
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %31, label %67, !llvm.loop !152

61:                                               ; preds = %6
  %62 = load ptr, ptr @stderr, align 8, !tbaa !40
  %63 = load ptr, ptr inttoptr (i64 24 to ptr), align 8, !tbaa !69
  %64 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.97, ptr noundef %63, ptr noundef %65) #17
  br label %67

67:                                               ; preds = %53, %24, %61, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #19
  ret void
}

declare void @chirvol(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @copyresidue, ptr @malloc, i64 25040}
!36 = !{ptr @copyresidue, ptr @strlen, i64 21434}
!37 = !{ptr @copyresidue, ptr @strcpy, i64 21434}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !41, i64 8}
!45 = !{!"reslib_t", !41, i64 0, !41, i64 8, !46, i64 16, !46, i64 20, !41, i64 24}
!46 = !{!"int", !42, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!45, !46, i64 16}
!51 = !{!45, !41, i64 0}
!52 = !{!42, !42, i64 0}
!53 = distinct !{!53, !48, !49}
!54 = !{!45, !46, i64 20}
!55 = !{!56, !41, i64 0}
!56 = !{!"atom_t", !41, i64 0, !41, i64 8, !46, i64 16, !46, i64 20, !42, i64 24, !41, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !41, i64 96, !46, i64 104, !57, i64 112, !57, i64 120, !46, i64 128, !46, i64 132, !41, i64 136, !42, i64 144, !57, i64 168}
!57 = !{!"double", !42, i64 0}
!58 = distinct !{!58, !48, !49}
!59 = !{!46, !46, i64 0}
!60 = !{!57, !57, i64 0}
!61 = !{!56, !57, i64 64}
!62 = distinct !{!62, !48, !49}
!63 = distinct !{!63, !48, !49}
!64 = distinct !{!64, !48, !49}
!65 = distinct !{!65, !48, !49}
!66 = distinct !{!66, !48, !49}
!67 = distinct !{!67, !48, !49}
!68 = !{!56, !57, i64 72}
!69 = !{!70, !41, i64 24}
!70 = !{!"residue_t", !41, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !41, i64 24, !41, i64 32, !46, i64 40, !46, i64 44, !46, i64 48, !41, i64 56, !41, i64 64, !46, i64 72, !41, i64 80, !46, i64 88, !41, i64 96, !46, i64 104, !41, i64 112, !41, i64 120}
!71 = distinct !{!71, !48, !49}
!72 = !{!70, !46, i64 104}
!73 = !{!70, !41, i64 120}
!74 = distinct !{!74, !48, !49}
!75 = !{!76, !57, i64 16}
!76 = !{!"chiral_t", !42, i64 0, !57, i64 16}
!77 = distinct !{!77, !48, !49}
!78 = distinct !{!78, !48, !49}
!79 = !{!"function_entry_count", i64 1202}
!80 = !{!"branch_weights", i32 0, i32 1202}
!81 = !{!70, !46, i64 72}
!82 = !{!70, !46, i64 88}
!83 = !{!70, !41, i64 0}
!84 = !{!70, !41, i64 32}
!85 = !{!70, !46, i64 8}
!86 = !{!70, !46, i64 12}
!87 = !{!70, !46, i64 16}
!88 = !{!70, !46, i64 40}
!89 = !{!70, !41, i64 56}
!90 = !{!70, !41, i64 64}
!91 = !{!70, !41, i64 80}
!92 = !{!"branch_weights", i32 0, i32 1}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = distinct !{!94, !48, !49}
!95 = !{!70, !41, i64 96}
!96 = distinct !{!96, !48, !49}
!97 = distinct !{!97, !48, !49}
!98 = !{!70, !46, i64 44}
!99 = !{!70, !46, i64 48}
!100 = !{!70, !41, i64 112}
!101 = !{!"branch_weights", i32 1202, i32 0}
!102 = !{!"branch_weights", i32 1201, i32 1}
!103 = distinct !{!103, !48, !49}
!104 = !{!"branch_weights", i32 1201, i32 17829}
!105 = distinct !{!105, !48, !49}
!106 = !{!"branch_weights", i32 0, i32 19030}
!107 = !{!56, !41, i64 8}
!108 = !{!56, !46, i64 16}
!109 = !{!56, !46, i64 20}
!110 = !{!"branch_weights", i32 19030, i32 133210}
!111 = distinct !{!111, !48, !49}
!112 = !{!56, !41, i64 56}
!113 = !{!56, !57, i64 80}
!114 = !{!56, !57, i64 88}
!115 = !{!56, !41, i64 96}
!116 = !{!56, !46, i64 104}
!117 = !{!56, !57, i64 112}
!118 = !{!56, !57, i64 120}
!119 = !{!56, !46, i64 128}
!120 = !{!56, !46, i64 132}
!121 = !{!56, !41, i64 136}
!122 = !{!56, !57, i64 168}
!123 = distinct !{!123, !48, !49}
!124 = !{!125, !41, i64 0}
!125 = !{!"strand_t", !41, i64 0, !46, i64 8, !46, i64 12, !41, i64 16, !41, i64 24, !46, i64 32, !46, i64 36, !41, i64 40}
!126 = !{!125, !46, i64 32}
!127 = !{!125, !41, i64 40}
!128 = !{!125, !46, i64 8}
!129 = !{!125, !46, i64 12}
!130 = !{!125, !46, i64 36}
!131 = distinct !{!131, !48, !49}
!132 = !{!133, !46, i64 96}
!133 = !{!"molecule_t", !42, i64 0, !46, i64 96, !41, i64 104, !46, i64 112, !46, i64 116, !46, i64 120, !41, i64 128}
!134 = !{!133, !46, i64 112}
!135 = !{!133, !46, i64 116}
!136 = !{!133, !46, i64 120}
!137 = !{!133, !41, i64 128}
!138 = !{!133, !41, i64 104}
!139 = !{!125, !41, i64 16}
!140 = !{!125, !41, i64 24}
!141 = distinct !{!141, !48, !49}
!142 = !{!45, !41, i64 24}
!143 = distinct !{!143, !48, !49}
!144 = distinct !{!144, !48, !49}
!145 = distinct !{!145, !48, !49}
!146 = distinct !{!146, !48, !49}
!147 = distinct !{!147, !48, !49}
!148 = distinct !{!148, !48, !49}
!149 = distinct !{!149, !48, !49}
!150 = distinct !{!150, !48, !49}
!151 = distinct !{!151, !48, !49}
!152 = distinct !{!152, !48, !49}
