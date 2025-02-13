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
@reslibs = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c".lib\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"../leap/lib/%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Can't open residue library %s.\0A\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [14 x i8] c"new reslib %s\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"name for new reslib %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"atomtype\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"united\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"pdb file %s\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"bnd file %s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"qr file %s\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"chi file %s\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"Incorrect line in residue library header %s...\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%s/reslib/%s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c".\00", align 1
@initatoms.init = internal unnamed_addr global i1 false, align 4
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16
@.str.32 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4
@bonds = internal unnamed_addr global [1000 x [2 x i32]] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [24 x i8] c"residue %s in reslib %s\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"atoms in residue %s in reslib %s\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"addres2reslib: can't allocate new r_resname.\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"addres2reslib: can't allocate new r_resid.\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"addres2reslib: can't allocate anp.\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"bonds of residue %s\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"%s not in reslib %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"%s %d %s %s %d %lf %lf %lf\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"REMARK RESLIB %s %s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"UNITED\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Incorrect header line in bond file: %s...\0A\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"Incorrect data line in bond file: %s...\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"%s %d %s %s %d %lf %lf\00", align 1
@n_chi = internal unnamed_addr global i32 0, align 4
@.str.64 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.67 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal unnamed_addr global [500 x %struct.chiral_t] zeroinitializer, align 16
@.str.68 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"%s not in library %s\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"new residue %s\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"atoms in new residue %s\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"atom index in new residue %s\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"bonds in new residue %s\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"chirality in residue %s\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"copyresidue: can't allocate new r_resname.\0A\00", align 1
@.str.92 = private unnamed_addr constant [42 x i8] c"copyresidue: can't allocate new r_resid.\0A\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"copyresidue: can't allocate anp.\0A\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"copystrand pointer array\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"strandname %s\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"copymolecule\00", align 1
@reltable.getreslibkind = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.getreslibkind to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @getreslibkind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @known_reslib(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @read_reslib(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %0) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %12 = getelementptr inbounds %struct.reslib_t, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !10
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = shl i64 %17, 2
  %19 = call ptr @llvm.load.relative.i64(ptr @reltable.getreslibkind, i64 %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ @.str.1, %10 ], [ %19, %16 ]
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @known_reslib(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @reslibs, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reslib_t, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !llvm.loop !14

11:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @read_reslib(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #20
  %7 = call fastcc ptr @read_reslib_header(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  call fastcc void @initatoms() #16
  %10 = load i8, ptr %6, align 16, !tbaa !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call fastcc void @off2reslib(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  call fastcc void @pdb2reslib(ptr noundef %14, ptr noundef nonnull %7) #16
  %15 = load ptr, ptr %3, align 8, !tbaa !6
  call fastcc void @bnd2reslib(ptr noundef %15, ptr noundef nonnull %7) #16
  %16 = call i32 @fclose(ptr noundef %14) #16
  %17 = call i32 @fclose(ptr noundef %15) #16
  br label %18

18:                                               ; preds = %13, %12
  %19 = load ptr, ptr %4, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  call fastcc void @qr2reslib(ptr noundef nonnull %19, ptr noundef nonnull %7) #16
  %22 = call i32 @fclose(ptr noundef nonnull %19) #16
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr %5, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  call fastcc void @chi2reslib(ptr noundef nonnull %24, ptr noundef nonnull %7) #16
  %27 = call i32 @fclose(ptr noundef nonnull %24) #16
  br label %28

28:                                               ; preds = %23, %26, %1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @read_reslib_header(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [128 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #20
  %12 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.5) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %0) #21
  call fastcc void @mk_fname(ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %16 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull %11) #21
  br label %139

20:                                               ; preds = %6
  call fastcc void @mk_fname(ptr noundef %0, ptr noundef nonnull %11) #16
  %21 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull %11) #21
  br label %139

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %16, %14 ], [ %21, %20 ]
  %27 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %0) #21
  %31 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %139

32:                                               ; preds = %25
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %34 = shl i64 %33, 32
  %35 = add i64 %34, 4294967296
  %36 = ashr exact i64 %35, 32
  %37 = call noalias ptr @malloc(i64 noundef %36) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %0) #21
  %41 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %139

42:                                               ; preds = %32
  %43 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %0) #21
  %44 = load ptr, ptr @reslibs, align 8, !tbaa !6
  store ptr %44, ptr %27, align 8, !tbaa !17
  store ptr %27, ptr @reslibs, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.reslib_t, ptr %27, i64 0, i32 1
  store ptr %37, ptr %45, align 8, !tbaa !13
  %46 = getelementptr inbounds %struct.reslib_t, ptr %27, i64 0, i32 2
  %47 = getelementptr inbounds %struct.reslib_t, ptr %27, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  store ptr null, ptr %1, align 8, !tbaa !6
  store ptr null, ptr %2, align 8, !tbaa !6
  store ptr null, ptr %3, align 8, !tbaa !6
  store ptr null, ptr %4, align 8, !tbaa !6
  store i8 0, ptr %5, align 1, !tbaa !16
  %48 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.5) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %103

50:                                               ; preds = %42
  %51 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull %26) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %113, label %53

53:                                               ; preds = %50, %100
  %54 = load i8, ptr %7, align 16, !tbaa !16
  %55 = icmp eq i8 %54, 35
  br i1 %55, label %100, label %56

56:                                               ; preds = %53
  %57 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.12, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  switch i32 %57, label %109 [
    i32 -1, label %100
    i32 2, label %58
  ]

58:                                               ; preds = %56
  %59 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %8, ptr noundef nonnull dereferenceable(5) @.str.13, i64 5)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, ptr %9, align 16
  switch i32 %62, label %65 [
    i32 6385252, label %63
    i32 6385266, label %64
  ]

63:                                               ; preds = %61
  store i32 1, ptr %46, align 8, !tbaa !10
  br label %100

64:                                               ; preds = %61
  store i32 2, ptr %46, align 8, !tbaa !10
  br label %100

65:                                               ; preds = %61
  %66 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.4, i64 3)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %65
  store i32 3, ptr %46, align 8, !tbaa !10
  br label %100

69:                                               ; preds = %58
  %70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %8, ptr noundef nonnull dereferenceable(9) @.str.14, i64 9)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %9, ptr noundef nonnull dereferenceable(7) @.str.15, i64 7)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, ptr %47, align 4, !tbaa !18
  br label %100

76:                                               ; preds = %72
  %77 = load i32, ptr %9, align 16
  %78 = icmp eq i32 %77, 7105633
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  store i32 2, ptr %47, align 4, !tbaa !18
  br label %100

80:                                               ; preds = %69
  %81 = load i32, ptr %8, align 16
  switch i32 %81, label %89 [
    i32 6710895, label %82
    i32 6448240, label %83
    i32 6581858, label %86
  ]

82:                                               ; preds = %80
  call fastcc void @mk_fname(ptr noundef nonnull %9, ptr noundef nonnull %5) #16
  br label %100

83:                                               ; preds = %80
  call fastcc void @mk_fname(ptr noundef nonnull %9, ptr noundef nonnull %11) #16
  %84 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  store ptr %84, ptr %1, align 8, !tbaa !6
  %85 = icmp eq ptr %84, null
  br i1 %85, label %105, label %100

86:                                               ; preds = %80
  call fastcc void @mk_fname(ptr noundef nonnull %9, ptr noundef nonnull %11) #16
  %87 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  store ptr %87, ptr %2, align 8, !tbaa !6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %105, label %100

89:                                               ; preds = %80
  %90 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %8, ptr noundef nonnull dereferenceable(3) @.str.23, i64 3)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  call fastcc void @mk_fname(ptr noundef nonnull %9, ptr noundef nonnull %11) #16
  %93 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  store ptr %93, ptr %3, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %100

95:                                               ; preds = %89
  %96 = icmp eq i32 %81, 6908003
  br i1 %96, label %97, label %109

97:                                               ; preds = %95
  call fastcc void @mk_fname(ptr noundef nonnull %9, ptr noundef nonnull %11) #16
  %98 = call noalias ptr @fopen(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #16
  store ptr %98, ptr %4, align 8, !tbaa !6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %64, %68, %63, %82, %86, %97, %92, %83, %75, %79, %53, %56
  %101 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull %26) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %53, !llvm.loop !19

103:                                              ; preds = %42
  call fastcc void @mk_fname(ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %104 = call i32 @fclose(ptr noundef nonnull %26) #16
  br label %139

105:                                              ; preds = %97, %92, %86, %83
  %106 = phi ptr [ @.str.19, %83 ], [ @.str.22, %86 ], [ @.str.24, %92 ], [ @.str.26, %97 ]
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull %9) #21
  %108 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @e_msg) #21
  br label %109

109:                                              ; preds = %56, %65, %76, %95, %105
  %110 = call i32 @fclose(ptr noundef nonnull %26) #16
  %111 = load ptr, ptr %1, align 8, !tbaa !6
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %115

113:                                              ; preds = %100, %50
  %114 = call i32 @fclose(ptr noundef nonnull %26) #16
  br label %139

115:                                              ; preds = %109
  %116 = call i32 @fclose(ptr noundef nonnull %111) #16
  br label %117

117:                                              ; preds = %115, %109
  %118 = load ptr, ptr %2, align 8, !tbaa !6
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 @fclose(ptr noundef nonnull %118) #16
  br label %122

122:                                              ; preds = %120, %117
  %123 = load ptr, ptr %3, align 8, !tbaa !6
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = call i32 @fclose(ptr noundef nonnull %123) #16
  br label %127

127:                                              ; preds = %125, %122
  %128 = load ptr, ptr %4, align 8, !tbaa !6
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 @fclose(ptr noundef nonnull %128) #16
  br label %132

132:                                              ; preds = %130, %127
  %133 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %134 = trunc i64 %133 to i32
  %135 = add i32 %134, -1
  %136 = call i32 @llvm.smin.i32(i32 %135, i32 20)
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %136, i32 noundef %136, ptr noundef nonnull %7) #21
  %138 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @e_msg) #21
  br label %139

139:                                              ; preds = %113, %103, %132, %39, %29, %23, %18
  %140 = phi ptr [ null, %18 ], [ null, %29 ], [ null, %39 ], [ null, %23 ], [ null, %132 ], [ %27, %113 ], [ %27, %103 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #20
  ret ptr %140
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initatoms() unnamed_addr #0 {
  %1 = load i1, ptr @initatoms.init, align 4
  br i1 %1, label %15, label %2

2:                                                ; preds = %0
  store i1 true, ptr @initatoms.init, align 4
  br label %3

3:                                                ; preds = %2, %11
  %4 = phi ptr [ @atoms, %2 ], [ %13, %11 ]
  %5 = phi i32 [ 0, %2 ], [ %12, %11 ]
  tail call void @NAB_initatom(ptr noundef nonnull %4, i32 noundef 1) #21
  %6 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22
  store ptr %6, ptr %4, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !6
  %10 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 38, i64 1, ptr %9) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %5, 1
  %13 = getelementptr inbounds %struct.atom_t, ptr %4, i64 1
  %14 = icmp eq i32 %12, 1000
  br i1 %14, label %15, label %3, !llvm.loop !23

15:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @off2reslib(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca [100 x i32], align 16
  %7 = alloca [100 x i32], align 16
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i32], align 16
  %10 = alloca [100 x i32], align 16
  %11 = alloca [100 x i32], align 16
  %12 = alloca [100 x double], align 16
  %13 = alloca [100 x double], align 16
  %14 = alloca [100 x double], align 16
  %15 = alloca [100 x double], align 16
  %16 = alloca [100 x [10 x i8]], align 16
  %17 = alloca [100 x [10 x i8]], align 16
  %18 = alloca [100 x [10 x i8]], align 16
  %19 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %19) #20
  store i32 0, ptr @n_atoms, align 4, !tbaa !24
  %20 = tail call ptr (ptr, i32, ...) @dbDBRndOpen(ptr noundef %0, i32 noundef 1) #21
  %21 = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull %4, ptr noundef nonnull %18, i32 noundef 10) #21
  %22 = load i32, ptr %4, align 4, !tbaa !24
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %2, %76
  %25 = phi i64 [ %77, %76 ], [ 0, %2 ]
  %26 = getelementptr inbounds [100 x [10 x i8]], ptr %18, i64 0, i64 %25
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %26) #21
  call void (ptr, ...) @DBZeroPrefix(ptr noundef %20) #21
  call void (ptr, ptr, ...) @DBPushPrefix(ptr noundef %20, ptr noundef nonnull %19) #21
  %28 = call signext i8 (ptr, ptr, ptr, ptr, i32, ...) @bDBGetValue(ptr noundef %20, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, ptr noundef nonnull @lr_name, i32 noundef 1) #21
  %29 = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %20, ptr noundef nonnull @.str.36, ptr noundef nonnull @n_atoms, i32 noundef 3, ptr noundef nonnull %5, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %6, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %7, i64 noundef 4, i32 noundef 6, ptr noundef nonnull %8, i64 noundef 4, i32 noundef 7, ptr noundef nonnull %9, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %12, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %16, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %17, i32 noundef 10, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  %30 = call signext i8 (ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %20, ptr noundef nonnull @.str.37, ptr noundef nonnull @n_atoms, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %13, i64 noundef 8, i32 noundef 2, ptr noundef nonnull %14, i64 noundef 8, i32 noundef 3, ptr noundef nonnull %15, i64 noundef 8, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  %31 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %24, %33
  %34 = phi i64 [ %51, %33 ], [ 0, %24 ]
  %35 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %34
  call void @NAB_initatom(ptr noundef nonnull %35, i32 noundef 0) #21
  %36 = load ptr, ptr %35, align 16, !tbaa !20
  %37 = getelementptr inbounds [100 x [10 x i8]], ptr %16, i64 0, i64 %34
  %38 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %37) #21
  %39 = getelementptr inbounds [100 x double], ptr %12, i64 0, i64 %34
  %40 = load double, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %34, i32 6
  store double %40, ptr %41, align 16, !tbaa !26
  %42 = getelementptr inbounds [100 x double], ptr %13, i64 0, i64 %34
  %43 = load double, ptr %42, align 8, !tbaa !25
  %44 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %34, i32 17
  store double %43, ptr %44, align 16, !tbaa !25
  %45 = getelementptr inbounds [100 x double], ptr %14, i64 0, i64 %34
  %46 = load double, ptr %45, align 8, !tbaa !25
  %47 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %34, i32 17, i64 1
  store double %46, ptr %47, align 8, !tbaa !25
  %48 = getelementptr inbounds [100 x double], ptr %15, i64 0, i64 %34
  %49 = load double, ptr %48, align 8, !tbaa !25
  %50 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %34, i32 17, i64 2
  store double %49, ptr %50, align 16, !tbaa !25
  %51 = add nuw nsw i64 %34, 1
  %52 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %33, label %55, !llvm.loop !27

55:                                               ; preds = %33
  %56 = icmp sgt i32 %52, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call fastcc void @addres2reslib(ptr noundef %1) #16
  br label %58

58:                                               ; preds = %24, %57, %55
  %59 = call signext i8 (ptr, ptr, ptr, i32, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, ...) @bDBGetTable(ptr noundef %20, ptr noundef nonnull @.str.38, ptr noundef nonnull @n_bonds, i32 noundef 1, ptr noundef nonnull %10, i64 noundef 4, i32 noundef 2, ptr noundef nonnull %11, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %7, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  %60 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = zext nneg i32 %60 to i64
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 0, %62 ], [ %72, %64 ]
  %66 = getelementptr inbounds [100 x i32], ptr %10, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !24
  %68 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %65
  store i32 %67, ptr %68, align 8, !tbaa !24
  %69 = getelementptr inbounds [100 x i32], ptr %11, i64 0, i64 %65
  %70 = load i32, ptr %69, align 4, !tbaa !24
  %71 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %65, i64 1
  store i32 %70, ptr %71, align 4, !tbaa !24
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %63
  br i1 %73, label %74, label %64, !llvm.loop !28

74:                                               ; preds = %64
  br i1 %61, label %75, label %76

75:                                               ; preds = %74
  call fastcc void @addbonds2reslib(ptr noundef %1) #16
  br label %76

76:                                               ; preds = %58, %74, %75
  %77 = add nuw nsw i64 %25, 1
  %78 = load i32, ptr %4, align 4, !tbaa !24
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %24, label %81, !llvm.loop !29

81:                                               ; preds = %76, %2
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pdb2reslib(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store i32 0, ptr @n_atoms, align 4, !tbaa !24
  store i8 0, ptr @lr_name, align 1, !tbaa !16
  %12 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %2, %49
  %15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.48, ptr noundef nonnull dereferenceable(6) %3, i64 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call fastcc void @setrlibattrs(ptr noundef %1, ptr noundef nonnull %3) #16
  br label %49

18:                                               ; preds = %14
  %19 = load i32, ptr %3, align 16
  %20 = icmp eq i32 %19, 1297044545
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.50, ptr noundef nonnull dereferenceable(6) %3, i64 6)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21, %18
  %25 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.51, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %6) #19
  %27 = icmp eq i32 %26, 0
  %28 = load i32, ptr @n_atoms, align 4, !tbaa !24
  br i1 %27, label %35, label %29

29:                                               ; preds = %24
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call fastcc void @addres2reslib(ptr noundef %1) #16
  store i32 0, ptr @n_atoms, align 4, !tbaa !24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ 0, %31 ], [ %28, %29 ]
  %34 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %6) #21
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %33, %32 ], [ %28, %24 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %37
  call void @NAB_initatom(ptr noundef nonnull %38, i32 noundef 0) #21
  %39 = load ptr, ptr %38, align 16, !tbaa !20
  %40 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %5) #21
  %41 = load double, ptr %9, align 8, !tbaa !25
  %42 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %37, i32 17
  store double %41, ptr %42, align 16, !tbaa !25
  %43 = load double, ptr %10, align 8, !tbaa !25
  %44 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %37, i32 17, i64 1
  store double %43, ptr %44, align 8, !tbaa !25
  %45 = load double, ptr %11, align 8, !tbaa !25
  %46 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %37, i32 17, i64 2
  store double %45, ptr %46, align 16, !tbaa !25
  %47 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @n_atoms, align 4, !tbaa !24
  br label %49

49:                                               ; preds = %21, %35, %17
  %50 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !30

52:                                               ; preds = %49, %2
  %53 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call fastcc void @addres2reslib(ptr noundef %1) #16
  br label %56

56:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bnd2reslib(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr @n_bonds, align 4, !tbaa !24
  store i8 0, ptr %4, align 16, !tbaa !16
  %7 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %2, %47
  %10 = load i8, ptr %3, align 16, !tbaa !16
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.58, ptr noundef nonnull %4) #21
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, -1
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 20)
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %19, i32 noundef %19, ptr noundef nonnull %3) #21
  %21 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef nonnull @e_msg) #21
  br label %54

22:                                               ; preds = %12
  %23 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call fastcc void @addbonds2reslib(ptr noundef %1) #16
  %26 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %4) #21
  store i32 0, ptr @n_bonds, align 4, !tbaa !24
  br label %47

27:                                               ; preds = %22
  %28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %4) #21
  br label %47

29:                                               ; preds = %9
  %30 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.60, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, -1
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 20)
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %36, i32 noundef %36, ptr noundef nonnull %3) #21
  %38 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @e_msg) #21
  br label %54

39:                                               ; preds = %29
  %40 = load i32, ptr %5, align 4, !tbaa !24
  %41 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %42
  store i32 %40, ptr %43, align 8, !tbaa !24
  %44 = load i32, ptr %6, align 4, !tbaa !24
  %45 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %42, i64 1
  store i32 %44, ptr %45, align 4, !tbaa !24
  %46 = add nsw i32 %41, 1
  store i32 %46, ptr @n_bonds, align 4, !tbaa !24
  br label %47

47:                                               ; preds = %27, %25, %39
  %48 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %9, !llvm.loop !31

50:                                               ; preds = %47, %2
  %51 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call fastcc void @addbonds2reslib(ptr noundef %1) #16
  br label %54

54:                                               ; preds = %50, %53, %32, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @qr2reslib(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store i32 0, ptr @n_atoms, align 4, !tbaa !24
  store i8 0, ptr @lr_name, align 1, !tbaa !16
  %11 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %2, %45
  %14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.62, ptr noundef nonnull dereferenceable(3) %3, i64 3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 16
  %18 = icmp eq i32 %17, 1297044545
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.50, ptr noundef nonnull dereferenceable(6) %3, i64 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19, %16
  %23 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.63, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %6) #19
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr @n_atoms, align 4, !tbaa !24
  br i1 %25, label %33, label %27

27:                                               ; preds = %22
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call fastcc void @addqr2reslib(ptr noundef %1) #16
  store i32 0, ptr @n_atoms, align 4, !tbaa !24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ 0, %29 ], [ %26, %27 ]
  %32 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %6) #21
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i32 [ %31, %30 ], [ %26, %22 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %35
  call void @NAB_initatom(ptr noundef nonnull %36, i32 noundef 0) #21
  %37 = load ptr, ptr %36, align 16, !tbaa !20
  %38 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %5) #21
  %39 = load double, ptr %9, align 8, !tbaa !25
  %40 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %35, i32 6
  store double %39, ptr %40, align 16, !tbaa !26
  %41 = load double, ptr %10, align 8, !tbaa !25
  %42 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %35, i32 7
  store double %41, ptr %42, align 8, !tbaa !32
  %43 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @n_atoms, align 4, !tbaa !24
  br label %45

45:                                               ; preds = %33, %19, %13
  %46 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %13, !llvm.loop !33

48:                                               ; preds = %45, %2
  %49 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call fastcc void @addqr2reslib(ptr noundef %1) #16
  br label %52

52:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @chi2reslib(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store i32 0, ptr @n_chi, align 4, !tbaa !24
  store i8 0, ptr %4, align 16, !tbaa !16
  %9 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %114, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.reslib_t, ptr %1, i64 0, i32 4
  br label %13

13:                                               ; preds = %11, %110
  %14 = phi ptr [ null, %11 ], [ %111, %110 ]
  %15 = load i8, ptr %3, align 16, !tbaa !16
  %16 = icmp eq i8 %15, 35
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.58, ptr noundef nonnull %4) #21
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 20)
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %24, i32 noundef %24, ptr noundef nonnull %3) #21
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.64, ptr noundef nonnull @e_msg) #17
  br label %118

28:                                               ; preds = %17
  %29 = load i32, ptr @n_chi, align 4, !tbaa !24
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call fastcc void @addchi2reslib(ptr noundef %1) #16
  store i32 0, ptr @n_chi, align 4, !tbaa !24
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %37
  %34 = phi ptr [ %35, %37 ], [ %12, %32 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.residue_t, ptr %35, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %4) #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %33, !llvm.loop !36

42:                                               ; preds = %33
  %43 = load ptr, ptr @stderr, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.reslib_t, ptr %1, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.65, ptr noundef nonnull %4, ptr noundef %45) #17
  br label %118

47:                                               ; preds = %37
  %48 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lr_name, ptr noundef nonnull dereferenceable(1) %4) #21
  br label %110

49:                                               ; preds = %13
  %50 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.66, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %51 = call fastcc ptr @findatom(ptr noundef %14, ptr noundef nonnull %5) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load ptr, ptr @stderr, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.67, ptr noundef nonnull %5, ptr noundef %56) #17
  call void @exit(i32 noundef 1) #18
  unreachable

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = ptrtoint ptr %51 to i64
  %62 = ptrtoint ptr %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 176
  %65 = trunc i64 %64 to i32
  %66 = call fastcc ptr @findatom(ptr noundef %14, ptr noundef nonnull %6) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load ptr, ptr @stderr, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.67, ptr noundef nonnull %6, ptr noundef %71) #17
  call void @exit(i32 noundef 1) #18
  unreachable

73:                                               ; preds = %58
  %74 = ptrtoint ptr %66 to i64
  %75 = sub i64 %74, %62
  %76 = sdiv exact i64 %75, 176
  %77 = trunc i64 %76 to i32
  %78 = call fastcc ptr @findatom(ptr noundef nonnull %14, ptr noundef nonnull %7) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load ptr, ptr @stderr, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.67, ptr noundef nonnull %7, ptr noundef %83) #17
  call void @exit(i32 noundef 1) #18
  unreachable

85:                                               ; preds = %73
  %86 = call fastcc ptr @findatom(ptr noundef nonnull %14, ptr noundef nonnull %8) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load ptr, ptr @stderr, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct.residue_t, ptr %14, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.67, ptr noundef nonnull %8, ptr noundef %91) #17
  call void @exit(i32 noundef 1) #18
  unreachable

93:                                               ; preds = %85
  %94 = ptrtoint ptr %78 to i64
  %95 = sub i64 %94, %62
  %96 = sdiv exact i64 %95, 176
  %97 = trunc i64 %96 to i32
  %98 = ptrtoint ptr %86 to i64
  %99 = sub i64 %98, %62
  %100 = sdiv exact i64 %99, 176
  %101 = trunc i64 %100 to i32
  %102 = load i32, ptr @n_chi, align 4, !tbaa !24
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %103
  %105 = add nsw i32 %102, 1
  store i32 %105, ptr @n_chi, align 4, !tbaa !24
  store i32 %65, ptr %104, align 8, !tbaa !24
  %106 = getelementptr inbounds [4 x i32], ptr %104, i64 0, i64 1
  store i32 %77, ptr %106, align 4, !tbaa !24
  %107 = getelementptr inbounds [4 x i32], ptr %104, i64 0, i64 2
  store i32 %97, ptr %107, align 8, !tbaa !24
  %108 = getelementptr inbounds [4 x i32], ptr %104, i64 0, i64 3
  store i32 %101, ptr %108, align 4, !tbaa !24
  %109 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %103, i32 1
  store double 0.000000e+00, ptr %109, align 8, !tbaa !38
  br label %110

110:                                              ; preds = %93, %47
  %111 = phi ptr [ %35, %47 ], [ %14, %93 ]
  %112 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef %0) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %13, !llvm.loop !40

114:                                              ; preds = %110, %2
  %115 = load i32, ptr @n_chi, align 4, !tbaa !24
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call fastcc void @addchi2reslib(ptr noundef %1) #16
  store i32 0, ptr @n_chi, align 4, !tbaa !24
  br label %118

118:                                              ; preds = %114, %117, %42, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @mk_fname(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 47
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.29, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 2) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %2
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #21
  br label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull %0) #21
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @NAB_initatom(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @dbDBRndOpen(...) local_unnamed_addr #7

; Function Attrs: optsize
declare signext i8 @bDBGetValue(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @DBZeroPrefix(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @DBPushPrefix(...) local_unnamed_addr #7

; Function Attrs: optsize
declare signext i8 @bDBGetTable(...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addres2reslib(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 176
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %89, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  store ptr %12, ptr %2, align 8, !tbaa !42
  store ptr %2, ptr %11, align 8, !tbaa !41
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @lr_name) #19
  %14 = add i64 %13, 1
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 45, i64 1, ptr %18) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

20:                                               ; preds = %10
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @lr_name) #21
  %22 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 4
  store ptr %15, ptr %22, align 8, !tbaa !34
  %23 = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 43, i64 1, ptr %26) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

28:                                               ; preds = %20
  store i8 0, ptr %23, align 1
  %29 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 5
  store ptr %23, ptr %29, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 1
  store i32 0, ptr %30, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 2
  store i32 0, ptr %31, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 3
  store i32 0, ptr %32, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 6
  store i32 0, ptr %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 7
  %36 = load <2 x i32>, ptr %34, align 8, !tbaa !24
  store <2 x i32> %36, ptr %35, align 4, !tbaa !24
  %37 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 9
  %38 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 12
  store ptr null, ptr %38, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 13
  store i32 0, ptr %39, align 8, !tbaa !49
  %40 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 14
  store ptr null, ptr %40, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %37, i8 0, i64 20, i1 false)
  store i32 %5, ptr %41, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 16
  store ptr null, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 17
  store ptr %8, ptr %43, align 8, !tbaa !37
  %44 = icmp sgt i32 %5, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %28
  %46 = zext nneg i32 %5 to i64
  %47 = getelementptr i8, ptr %8, i64 24
  br label %48

48:                                               ; preds = %45, %59
  %49 = phi i64 [ 0, %45 ], [ %87, %59 ]
  %50 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 16, !tbaa !20
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #19
  %53 = add i64 %52, 1
  %54 = tail call noalias ptr @malloc(i64 noundef %53) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load ptr, ptr @stderr, align 8, !tbaa !6
  %58 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 35, i64 1, ptr %57) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

59:                                               ; preds = %48
  %60 = mul nuw nsw i64 %49, 176
  %61 = getelementptr i8, ptr %47, i64 %60
  %62 = add nuw nsw i64 %60, 144
  %63 = getelementptr i8, ptr @atoms, i64 %62
  %64 = getelementptr i8, ptr %8, i64 %62
  %65 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %51) #21
  %66 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49
  store ptr %54, ptr %66, align 8, !tbaa !20
  %67 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 2
  store i32 0, ptr %67, align 8, !tbaa !53
  %68 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 3
  store i32 0, ptr %68, align 4, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %61, i8 -1, i64 32, i1 false), !tbaa !24
  %69 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 5
  store ptr %2, ptr %69, align 8, !tbaa !55
  %70 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49, i32 6
  %71 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 6
  %72 = load <2 x double>, ptr %70, align 16, !tbaa !25
  store <2 x double> %72, ptr %71, align 8, !tbaa !25
  %73 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49, i32 8
  %74 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 8
  %75 = load <2 x double>, ptr %73, align 16, !tbaa !25
  store <2 x double> %75, ptr %74, align 8, !tbaa !25
  %76 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49, i32 11
  %77 = load i32, ptr %76, align 8, !tbaa !56
  %78 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 11
  store i32 %77, ptr %78, align 8, !tbaa !56
  %79 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49, i32 12
  %80 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 12
  %81 = load <2 x double>, ptr %79, align 16, !tbaa !25
  store <2 x double> %81, ptr %80, align 8, !tbaa !25
  %82 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 15
  store i32 0, ptr %82, align 4, !tbaa !57
  %83 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 16
  store ptr null, ptr %83, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 16 dereferenceable(24) %63, i64 24, i1 false), !tbaa !25
  %84 = getelementptr inbounds [1000 x %struct.atom_t], ptr @atoms, i64 0, i64 %49, i32 18
  %85 = load double, ptr %84, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %49, i32 18
  store double %85, ptr %86, align 8, !tbaa !59
  %87 = add nuw nsw i64 %49, 1
  %88 = icmp eq i64 %87, %46
  br i1 %88, label %95, label %48, !llvm.loop !60

89:                                               ; preds = %4, %1
  %90 = phi ptr [ @.str.39, %1 ], [ @.str.40, %4 ]
  %91 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !13
  %93 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull @lr_name, ptr noundef %92) #21
  %94 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %95

95:                                               ; preds = %59, %89, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addbonds2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @lr_name) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !61

12:                                               ; preds = %7
  %13 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %13, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  br label %26

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @lr_name) #21
  %25 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %81

26:                                               ; preds = %20, %67
  %27 = phi i64 [ 0, %20 ], [ %68, %67 ]
  %28 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %27
  %29 = load i32, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds [2 x i32], ptr %16, i64 %27
  store i32 %29, ptr %30, align 4, !tbaa !24
  %31 = getelementptr inbounds [1000 x [2 x i32]], ptr @bonds, i64 0, i64 %27, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !24
  %33 = getelementptr inbounds [2 x i32], ptr %16, i64 %27, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !24
  %34 = add nsw i32 %29, -1
  %35 = add nsw i32 %32, -1
  %36 = sext i32 %34 to i64
  br label %40

37:                                               ; preds = %45
  %38 = add nuw nsw i64 %41, 1
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %51, label %40, !llvm.loop !62

40:                                               ; preds = %26, %37
  %41 = phi i64 [ 0, %26 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.atom_t, ptr %22, i64 %36, i32 4, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !24
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = icmp eq i32 %43, -1
  br i1 %46, label %47, label %37

47:                                               ; preds = %45
  store i32 %35, ptr %42, align 4, !tbaa !24
  %48 = getelementptr inbounds %struct.atom_t, ptr %22, i64 %36, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !54
  br label %51

51:                                               ; preds = %40, %37, %47
  %52 = sext i32 %35 to i64
  br label %56

53:                                               ; preds = %61
  %54 = add nuw nsw i64 %57, 1
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %67, label %56, !llvm.loop !63

56:                                               ; preds = %51, %53
  %57 = phi i64 [ 0, %51 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.atom_t, ptr %22, i64 %52, i32 4, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !24
  %60 = icmp eq i32 %59, %34
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = icmp eq i32 %59, -1
  br i1 %62, label %63, label %53

63:                                               ; preds = %61
  store i32 %34, ptr %58, align 4, !tbaa !24
  %64 = getelementptr inbounds %struct.atom_t, ptr %22, i64 %52, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !54
  br label %67

67:                                               ; preds = %53, %56, %63
  %68 = add nuw nsw i64 %27, 1
  %69 = load i32, ptr @n_bonds, align 4, !tbaa !24
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %26, label %72, !llvm.loop !64

72:                                               ; preds = %67, %18
  %73 = phi i32 [ %13, %18 ], [ %69, %67 ]
  %74 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 12
  store ptr %16, ptr %75, align 8, !tbaa !48
  br label %81

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  %79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef nonnull @lr_name, ptr noundef %78) #21
  %80 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @e_msg) #21
  br label %81

81:                                               ; preds = %76, %72, %23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @setrlibattrs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #20
  %5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 16
  switch i32 %8, label %10 [
    i32 4279876, label %13
    i32 4279890, label %9
  ]

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %3, ptr noundef nonnull dereferenceable(3) @.str.55, i64 3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %7, %9
  %14 = phi i32 [ 2, %9 ], [ 1, %7 ], [ 3, %10 ]
  %15 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !10
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %4, ptr noundef nonnull dereferenceable(7) @.str.56, i64 7)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %4, align 16
  %21 = icmp eq i64 %20, 21760796498086977
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 1, %16 ], [ 2, %19 ]
  %24 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !18
  br label %25

25:                                               ; preds = %22, %19, %2
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addqr2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @lr_name) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !66

12:                                               ; preds = %7
  %13 = load i32, ptr @n_atoms, align 4, !tbaa !24
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12, %34
  %16 = phi ptr [ %36, %34 ], [ @atoms, %12 ]
  %17 = phi i32 [ %35, %34 ], [ 0, %12 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !20
  %19 = tail call fastcc ptr @findatom(ptr noundef nonnull %5, ptr noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.atom_t, ptr %16, i64 0, i32 6
  %23 = getelementptr inbounds %struct.atom_t, ptr %19, i64 0, i32 6
  %24 = load <2 x double>, ptr %22, align 8, !tbaa !25
  store <2 x double> %24, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.atom_t, ptr %16, i64 0, i32 8
  %26 = getelementptr inbounds %struct.atom_t, ptr %19, i64 0, i32 8
  %27 = load <2 x double>, ptr %25, align 8, !tbaa !25
  store <2 x double> %27, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.atom_t, ptr %16, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.atom_t, ptr %19, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.atom_t, ptr %16, i64 0, i32 12
  %32 = getelementptr inbounds %struct.atom_t, ptr %19, i64 0, i32 12
  %33 = load <2 x double>, ptr %31, align 8, !tbaa !25
  store <2 x double> %33, ptr %32, align 8, !tbaa !25
  br label %34

34:                                               ; preds = %15, %21
  %35 = add nuw nsw i32 %17, 1
  %36 = getelementptr inbounds %struct.atom_t, ptr %16, i64 1
  %37 = icmp eq i32 %35, %13
  br i1 %37, label %43, label %15, !llvm.loop !67

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef nonnull @lr_name, ptr noundef %40) #21
  %42 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @e_msg) #21
  br label %43

43:                                               ; preds = %34, %12, %38
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @findatom(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = zext nneg i32 %4 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %19, label %13, !llvm.loop !68

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.atom_t, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10

19:                                               ; preds = %13, %10, %2
  %20 = phi ptr [ null, %2 ], [ null, %10 ], [ %15, %13 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addchi2reslib(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @lr_name) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !69

15:                                               ; preds = %10
  %16 = load i32, ptr @n_chi, align 4, !tbaa !24
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 24
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.68, ptr noundef %12) #17
  br label %66

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 13
  store i32 %16, ptr %25, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 14
  store ptr %19, ptr %26, align 8, !tbaa !50
  %27 = icmp sgt i32 %16, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.residue_t, ptr %8, i64 0, i32 17
  br label %30

30:                                               ; preds = %28, %52
  %31 = phi i64 [ 0, %28 ], [ %56, %52 ]
  %32 = phi ptr [ %19, %28 ], [ %55, %52 ]
  %33 = getelementptr inbounds [500 x %struct.chiral_t], ptr @chi, i64 0, i64 %31
  %34 = load ptr, ptr %29, align 8, !tbaa !37
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi i64 [ 0, %30 ], [ %50, %35 ]
  %37 = getelementptr inbounds [4 x i32], ptr %33, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !24
  %39 = getelementptr inbounds [4 x i32], ptr %32, i64 0, i64 %36
  store i32 %38, ptr %39, align 4, !tbaa !24
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds %struct.atom_t, ptr %34, i64 %40, i32 17
  %42 = load double, ptr %41, align 8, !tbaa !25
  %43 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %36
  store double %42, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.atom_t, ptr %34, i64 %40, i32 17, i64 1
  %45 = load double, ptr %44, align 8, !tbaa !25
  %46 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %36, i64 1
  store double %45, ptr %46, align 8, !tbaa !25
  %47 = getelementptr inbounds %struct.atom_t, ptr %34, i64 %40, i32 17, i64 2
  %48 = load double, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 %36, i64 2
  store double %48, ptr %49, align 8, !tbaa !25
  %50 = add nuw nsw i64 %36, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %35, !llvm.loop !70

52:                                               ; preds = %35
  call void @chirvol(i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %53 = load double, ptr %4, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct.chiral_t, ptr %32, i64 0, i32 1
  store double %53, ptr %54, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.chiral_t, ptr %32, i64 1
  %56 = add nuw nsw i64 %31, 1
  %57 = load i32, ptr @n_chi, align 4, !tbaa !24
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %30, label %66, !llvm.loop !71

60:                                               ; preds = %6
  %61 = load ptr, ptr @stderr, align 8, !tbaa !6
  %62 = load ptr, ptr inttoptr (i64 24 to ptr), align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.reslib_t, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.69, ptr noundef %62, ptr noundef %64) #17
  br label %66

66:                                               ; preds = %52, %24, %60, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @chirvol(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @setreslibkind(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @known_reslib(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @read_reslib(ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %0) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %13 = getelementptr inbounds %struct.reslib_t, ptr %12, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.2) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.53) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.3) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.54) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.4) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.55) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %28, %19, %22, %11, %16
  %32 = phi i32 [ 1, %16 ], [ 1, %11 ], [ 2, %22 ], [ 2, %19 ], [ 3, %28 ], [ 3, %25 ]
  store i32 %32, ptr %13, align 8, !tbaa !10
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ 0, %28 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @getresidue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #20
  %4 = tail call fastcc ptr @known_reslib(ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @read_reslib(ptr noundef %1) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @exit(i32 noundef 1) #18
  unreachable

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #21
  %13 = getelementptr inbounds %struct.reslib_t, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !10
  switch i32 %14, label %47 [
    i32 1, label %15
    i32 2, label %31
  ]

15:                                               ; preds = %10
  %16 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.70, i64 noundef 3) #19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.71, i64 3, i1 false) #21
  br label %47

19:                                               ; preds = %15
  %20 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.72, i64 noundef 3) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.73, i64 3, i1 false) #21
  br label %47

23:                                               ; preds = %19
  %24 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.74, i64 noundef 3) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.75, i64 3, i1 false) #21
  br label %47

27:                                               ; preds = %23
  %28 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.76, i64 noundef 3) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.77, i64 3, i1 false) #21
  br label %47

31:                                               ; preds = %10
  %32 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.70, i64 noundef 3) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false) #21
  br label %47

35:                                               ; preds = %31
  %36 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.72, i64 noundef 3) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.79, i64 3, i1 false) #21
  br label %47

39:                                               ; preds = %35
  %40 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.80, i64 noundef 3) #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.81, i64 3, i1 false) #21
  br label %47

43:                                               ; preds = %39
  %44 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.76, i64 noundef 3) #19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false) #21
  br label %47

47:                                               ; preds = %10, %38, %43, %46, %42, %34, %18, %26, %30, %27, %22
  %48 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 51)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 53)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50, %47
  %54 = phi i16 [ 51, %47 ], [ 53, %50 ]
  %55 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %56 = getelementptr inbounds i8, ptr %3, i64 %55
  store i16 %54, ptr %56, align 1
  br label %57

57:                                               ; preds = %53, %50
  %58 = getelementptr inbounds %struct.reslib_t, ptr %11, i64 0, i32 4
  br label %59

59:                                               ; preds = %68, %57
  %60 = phi ptr [ %58, %57 ], [ %61, %68 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.residue_t, ptr %61, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %0) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %3) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %59, !llvm.loop !72

71:                                               ; preds = %59
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef %0, ptr noundef %1) #21
  %73 = call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @e_msg) #21
  br label %76

74:                                               ; preds = %68, %63
  %75 = call ptr @copyresidue(ptr noundef nonnull %61) #16
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi ptr [ null, %71 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #20
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copyresidue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef %6) #21
  %8 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %267

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 176
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.87, ptr noundef %18) #21
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %267

21:                                               ; preds = %9
  %22 = shl nsw i64 %12, 2
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef %27) #21
  %29 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %267

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !65
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = zext nneg i32 %32 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.89, ptr noundef %41) #21
  %43 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %267

44:                                               ; preds = %30, %34
  %45 = phi ptr [ %37, %34 ], [ null, %30 ]
  %46 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !49
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = zext nneg i32 %47 to i64
  %51 = mul nuw nsw i64 %50, 24
  %52 = tail call noalias ptr @malloc(i64 noundef %51) #22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef %56) #21
  %58 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %267

59:                                               ; preds = %44, %49
  %60 = phi ptr [ %52, %49 ], [ null, %44 ]
  store ptr null, ptr %2, align 8, !tbaa !42
  %61 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #19
  %64 = add i64 %63, 1
  %65 = tail call noalias ptr @malloc(i64 noundef %64) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr @stderr, align 8, !tbaa !6
  %69 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 43, i64 1, ptr %68) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

70:                                               ; preds = %59
  %71 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %62) #21
  %72 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 4
  store ptr %65, ptr %72, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #19
  %76 = add i64 %75, 1
  %77 = tail call noalias ptr @malloc(i64 noundef %76) #22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load ptr, ptr @stderr, align 8, !tbaa !6
  %81 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 41, i64 1, ptr %80) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

82:                                               ; preds = %70
  %83 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %74) #21
  %84 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 5
  store ptr %77, ptr %84, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !44
  %88 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 2
  store i32 0, ptr %88, align 4, !tbaa !45
  %89 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 3
  store i32 0, ptr %89, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 6
  %91 = load i32, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 6
  store i32 %91, ptr %92, align 8, !tbaa !47
  %93 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 9
  store ptr null, ptr %93, align 8, !tbaa !73
  %94 = tail call ptr (ptr, ...) @copyextbonds(ptr noundef nonnull %0) #21
  %95 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 10
  store ptr %94, ptr %95, align 8, !tbaa !74
  %96 = load i32, ptr %31, align 8, !tbaa !65
  %97 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 11
  store i32 %96, ptr %97, align 8, !tbaa !65
  %98 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 12
  store ptr %45, ptr %98, align 8, !tbaa !48
  %99 = icmp sgt i32 %96, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 12
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = zext nneg i32 %96 to i64
  br label %104

104:                                              ; preds = %100, %104
  %105 = phi i64 [ 0, %100 ], [ %112, %104 ]
  %106 = getelementptr inbounds [2 x i32], ptr %102, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !24
  %108 = getelementptr inbounds [2 x i32], ptr %45, i64 %105
  store i32 %107, ptr %108, align 4, !tbaa !24
  %109 = getelementptr inbounds [2 x i32], ptr %102, i64 %105, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !24
  %111 = getelementptr inbounds [2 x i32], ptr %45, i64 %105, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !24
  %112 = add nuw nsw i64 %105, 1
  %113 = icmp eq i64 %112, %103
  br i1 %113, label %114, label %104, !llvm.loop !75

114:                                              ; preds = %104, %82
  %115 = load i32, ptr %46, align 8, !tbaa !49
  %116 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 13
  store i32 %115, ptr %116, align 8, !tbaa !49
  %117 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 14
  store ptr %60, ptr %117, align 8, !tbaa !50
  %118 = icmp sgt i32 %115, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  %121 = load ptr, ptr %120, align 8, !tbaa !50
  %122 = zext nneg i32 %115 to i64
  br label %123

123:                                              ; preds = %119, %134
  %124 = phi i64 [ 0, %119 ], [ %138, %134 ]
  %125 = phi ptr [ %60, %119 ], [ %139, %134 ]
  %126 = getelementptr inbounds %struct.chiral_t, ptr %121, i64 %124
  br label %127

127:                                              ; preds = %123, %127
  %128 = phi i64 [ 0, %123 ], [ %132, %127 ]
  %129 = getelementptr inbounds [4 x i32], ptr %126, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !24
  %131 = getelementptr inbounds [4 x i32], ptr %125, i64 0, i64 %128
  store i32 %130, ptr %131, align 4, !tbaa !24
  %132 = add nuw nsw i64 %128, 1
  %133 = icmp eq i64 %132, 4
  br i1 %133, label %134, label %127, !llvm.loop !76

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.chiral_t, ptr %121, i64 %124, i32 1
  %136 = load double, ptr %135, align 8, !tbaa !38
  %137 = getelementptr inbounds %struct.chiral_t, ptr %125, i64 0, i32 1
  store double %136, ptr %137, align 8, !tbaa !38
  %138 = add nuw nsw i64 %124, 1
  %139 = getelementptr inbounds %struct.chiral_t, ptr %125, i64 1
  %140 = icmp eq i64 %138, %122
  br i1 %140, label %141, label %123, !llvm.loop !77

141:                                              ; preds = %134, %114
  %142 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 7
  %143 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 7
  %144 = load <2 x i32>, ptr %142, align 4, !tbaa !24
  store <2 x i32> %144, ptr %143, align 4, !tbaa !24
  %145 = load i32, ptr %10, align 8, !tbaa !51
  %146 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 15
  store i32 %145, ptr %146, align 8, !tbaa !51
  %147 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 16
  store ptr %23, ptr %147, align 8, !tbaa !52
  %148 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = icmp eq ptr %149, null
  %151 = icmp sgt i32 %145, 0
  br i1 %150, label %155, label %152

152:                                              ; preds = %141
  br i1 %151, label %153, label %200

153:                                              ; preds = %152
  %154 = zext nneg i32 %145 to i64
  br label %193

155:                                              ; preds = %141
  br i1 %151, label %156, label %200

156:                                              ; preds = %155
  %157 = zext nneg i32 %145 to i64
  %158 = add nuw nsw i64 %157, 3
  %159 = and i64 %158, 4294967292
  %160 = add nsw i64 %157, -1
  %161 = insertelement <4 x i64> poison, i64 %160, i64 0
  %162 = shufflevector <4 x i64> %161, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %163

163:                                              ; preds = %189, %156
  %164 = phi i64 [ 0, %156 ], [ %190, %189 ]
  %165 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %156 ], [ %191, %189 ]
  %166 = trunc i64 %164 to i32
  %167 = icmp ule <4 x i64> %165, %162
  %168 = extractelement <4 x i1> %167, i64 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = getelementptr inbounds i32, ptr %23, i64 %164
  store i32 %166, ptr %170, align 4, !tbaa !24
  br label %171

171:                                              ; preds = %169, %163
  %172 = extractelement <4 x i1> %167, i64 1
  br i1 %172, label %173, label %177

173:                                              ; preds = %171
  %174 = or disjoint i64 %164, 1
  %175 = getelementptr inbounds i32, ptr %23, i64 %174
  %176 = or disjoint i32 %166, 1
  store i32 %176, ptr %175, align 4, !tbaa !24
  br label %177

177:                                              ; preds = %173, %171
  %178 = extractelement <4 x i1> %167, i64 2
  br i1 %178, label %179, label %183

179:                                              ; preds = %177
  %180 = or disjoint i64 %164, 2
  %181 = getelementptr inbounds i32, ptr %23, i64 %180
  %182 = or disjoint i32 %166, 2
  store i32 %182, ptr %181, align 4, !tbaa !24
  br label %183

183:                                              ; preds = %179, %177
  %184 = extractelement <4 x i1> %167, i64 3
  br i1 %184, label %185, label %189

185:                                              ; preds = %183
  %186 = or disjoint i64 %164, 3
  %187 = getelementptr inbounds i32, ptr %23, i64 %186
  %188 = or disjoint i32 %166, 3
  store i32 %188, ptr %187, align 4, !tbaa !24
  br label %189

189:                                              ; preds = %185, %183
  %190 = add i64 %164, 4
  %191 = add <4 x i64> %165, <i64 4, i64 4, i64 4, i64 4>
  %192 = icmp eq i64 %190, %159
  br i1 %192, label %202, label %163, !llvm.loop !78

193:                                              ; preds = %153, %193
  %194 = phi i64 [ 0, %153 ], [ %198, %193 ]
  %195 = getelementptr inbounds i32, ptr %149, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !24
  %197 = getelementptr inbounds i32, ptr %23, i64 %194
  store i32 %196, ptr %197, align 4, !tbaa !24
  %198 = add nuw nsw i64 %194, 1
  %199 = icmp eq i64 %198, %154
  br i1 %199, label %202, label %193, !llvm.loop !81

200:                                              ; preds = %152, %155
  %201 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 17
  store ptr %14, ptr %201, align 8, !tbaa !37
  br label %267

202:                                              ; preds = %193, %189
  %203 = getelementptr inbounds %struct.residue_t, ptr %2, i64 0, i32 17
  store ptr %14, ptr %203, align 8, !tbaa !37
  %204 = icmp sgt i32 %145, 0
  br i1 %204, label %205, label %267

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %207 = load ptr, ptr %206, align 8, !tbaa !37
  %208 = zext nneg i32 %145 to i64
  br label %209

209:                                              ; preds = %205, %234
  %210 = phi i64 [ 0, %205 ], [ %265, %234 ]
  %211 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !20
  %213 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %212) #19
  %214 = add i64 %213, 1
  %215 = tail call noalias ptr @malloc(i64 noundef %214) #22
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load ptr, ptr @stderr, align 8, !tbaa !6
  %219 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 33, i64 1, ptr %218) #23
  tail call void @exit(i32 noundef 1) #18
  unreachable

220:                                              ; preds = %209
  %221 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(1) %212) #21
  %222 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210
  store ptr %215, ptr %222, align 8, !tbaa !20
  %223 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 1
  store ptr null, ptr %223, align 8, !tbaa !82
  %224 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 2
  %225 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 2
  %226 = load <2 x i32>, ptr %224, align 8, !tbaa !24
  store <2 x i32> %226, ptr %225, align 8, !tbaa !24
  br label %227

227:                                              ; preds = %220, %227
  %228 = phi i64 [ 0, %220 ], [ %232, %227 ]
  %229 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 4, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !24
  %231 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 4, i64 %228
  store i32 %230, ptr %231, align 4, !tbaa !24
  %232 = add nuw nsw i64 %228, 1
  %233 = icmp eq i64 %232, 8
  br i1 %233, label %234, label %227, !llvm.loop !83

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 5
  store ptr %2, ptr %235, align 8, !tbaa !55
  %236 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 6
  %237 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 6
  %238 = load <2 x double>, ptr %236, align 8, !tbaa !25
  store <2 x double> %238, ptr %237, align 8, !tbaa !25
  %239 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 8
  %240 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 8
  %241 = load <2 x double>, ptr %239, align 8, !tbaa !25
  store <2 x double> %241, ptr %240, align 8, !tbaa !25
  %242 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 10
  store ptr null, ptr %242, align 8, !tbaa !84
  %243 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 11
  %244 = load i32, ptr %243, align 8, !tbaa !56
  %245 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 11
  store i32 %244, ptr %245, align 8, !tbaa !56
  %246 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 12
  %247 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 12
  %248 = load <2 x double>, ptr %246, align 8, !tbaa !25
  store <2 x double> %248, ptr %247, align 8, !tbaa !25
  %249 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 14
  %250 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 14
  %251 = load <2 x i32>, ptr %249, align 8, !tbaa !24
  store <2 x i32> %251, ptr %250, align 8, !tbaa !24
  %252 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 16
  store ptr null, ptr %252, align 8, !tbaa !58
  %253 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 17
  %254 = load double, ptr %253, align 8, !tbaa !25
  %255 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 17
  store double %254, ptr %255, align 8, !tbaa !25
  %256 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 17, i64 1
  %257 = load double, ptr %256, align 8, !tbaa !25
  %258 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 17, i64 1
  store double %257, ptr %258, align 8, !tbaa !25
  %259 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 17, i64 2
  %260 = load double, ptr %259, align 8, !tbaa !25
  %261 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 17, i64 2
  store double %260, ptr %261, align 8, !tbaa !25
  %262 = getelementptr inbounds %struct.atom_t, ptr %207, i64 %210, i32 18
  %263 = load double, ptr %262, align 8, !tbaa !59
  %264 = getelementptr inbounds %struct.atom_t, ptr %14, i64 %210, i32 18
  store double %263, ptr %264, align 8, !tbaa !59
  %265 = add nuw nsw i64 %210, 1
  %266 = icmp eq i64 %265, %208
  br i1 %266, label %267, label %209, !llvm.loop !85

267:                                              ; preds = %234, %200, %202, %54, %39, %25, %16, %4
  %268 = phi ptr [ null, %4 ], [ null, %16 ], [ null, %25 ], [ null, %39 ], [ null, %54 ], [ %2, %202 ], [ %2, %200 ], [ %2, %234 ]
  ret ptr %268
}

; Function Attrs: optsize
declare ptr @copyextbonds(...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copystrand(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !86
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.94, ptr noundef %5) #21
  br label %56

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !88
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #22
  %13 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !89
  %14 = icmp eq ptr %12, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !86
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #19
  %18 = add i64 %17, 1
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef %16) #21
  br label %56

23:                                               ; preds = %15
  store ptr %19, ptr %2, align 8, !tbaa !86
  %24 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %16) #21
  %25 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 1
  %27 = load <2 x i32>, ptr %25, align 8, !tbaa !24
  store <2 x i32> %27, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 3
  %29 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 %9, ptr %29, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.strand_t, ptr %2, i64 0, i32 6
  store i32 %9, ptr %30, align 4, !tbaa !90
  %31 = icmp sgt i32 %9, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.strand_t, ptr %0, i64 0, i32 7
  br label %34

34:                                               ; preds = %32, %51
  %35 = phi i64 [ 0, %32 ], [ %52, %51 ]
  %36 = load ptr, ptr %33, align 8, !tbaa !89
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = tail call ptr @copyresidue(ptr noundef %38) #16
  %40 = load ptr, ptr %13, align 8, !tbaa !89
  %41 = getelementptr inbounds ptr, ptr %40, i64 %35
  store ptr %39, ptr %41, align 8, !tbaa !6
  %42 = load ptr, ptr %13, align 8, !tbaa !89
  %43 = getelementptr inbounds ptr, ptr %42, i64 %35
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.residue_t, ptr %44, i64 0, i32 9
  store ptr %2, ptr %45, align 8, !tbaa !73
  %46 = icmp eq i64 %35, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr %43, align 8, !tbaa !6
  %49 = getelementptr ptr, ptr %43, i64 -1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  store ptr %48, ptr %50, align 8, !tbaa !42
  br label %51

51:                                               ; preds = %34, %47
  %52 = add nuw nsw i64 %35, 1
  %53 = load i32, ptr %8, align 8, !tbaa !88
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %34, label %59, !llvm.loop !91

56:                                               ; preds = %7, %4, %21
  %57 = phi ptr [ @e_msg, %21 ], [ @e_msg, %4 ], [ @.str.95, %7 ]
  %58 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull %57) #21
  br label %59

59:                                               ; preds = %51, %56, %23
  %60 = phi ptr [ %2, %23 ], [ null, %56 ], [ %2, %51 ]
  ret ptr %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copymolecule(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @upd_molnumbers(ptr noundef %0) #21
  %2 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) @e_msg, ptr noundef nonnull align 1 dereferenceable(13) @.str.97, i64 13, i1 false)
  %5 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #21
  br label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 3
  %12 = load <2 x i32>, ptr %10, align 8, !tbaa !24
  store <2 x i32> %12, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 5
  store i32 %14, ptr %15, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = tail call ptr @copyparm(ptr noundef nonnull %17) #21
  br label %21

21:                                               ; preds = %6, %19
  %22 = phi ptr [ %20, %19 ], [ null, %6 ]
  %23 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 6
  store ptr %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %29, %24 ]
  %26 = mul nuw nsw i64 %25, 24
  %27 = getelementptr i8, ptr %2, i64 %26
  %28 = getelementptr i8, ptr %0, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false), !tbaa !25
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %24, !llvm.loop !96

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @copystrand(ptr noundef nonnull %33) #16
  %37 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 3
  store ptr %2, ptr %37, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.molecule_t, ptr %2, i64 0, i32 2
  store ptr %36, ptr %38, align 8, !tbaa !97
  %39 = getelementptr inbounds %struct.strand_t, ptr %33, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %45, %42 ], [ %36, %35 ]
  %44 = phi ptr [ %49, %42 ], [ %40, %35 ]
  %45 = tail call ptr @copystrand(ptr noundef nonnull %44) #16
  %46 = getelementptr inbounds %struct.strand_t, ptr %43, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct.strand_t, ptr %45, i64 0, i32 3
  store ptr %2, ptr %47, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %42, !llvm.loop !100

51:                                               ; preds = %42, %31, %35
  tail call void @upd_molnumbers(ptr noundef nonnull %2) #21
  br label %52

52:                                               ; preds = %51, %4
  ret ptr %2
}

; Function Attrs: optsize
declare void @upd_molnumbers(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @copyparm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { optsize }
attributes #17 = { cold optsize }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 16}
!11 = !{!"reslib_t", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !7, i64 24}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!8, !8, i64 0}
!17 = !{!11, !7, i64 0}
!18 = !{!11, !12, i64 20}
!19 = distinct !{!19, !15}
!20 = !{!21, !7, i64 0}
!21 = !{!"atom_t", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !8, i64 24, !7, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !7, i64 96, !12, i64 104, !22, i64 112, !22, i64 120, !12, i64 128, !12, i64 132, !7, i64 136, !8, i64 144, !22, i64 168}
!22 = !{!"double", !8, i64 0}
!23 = distinct !{!23, !15}
!24 = !{!12, !12, i64 0}
!25 = !{!22, !22, i64 0}
!26 = !{!21, !22, i64 64}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!21, !22, i64 72}
!33 = distinct !{!33, !15}
!34 = !{!35, !7, i64 24}
!35 = !{!"residue_t", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !7, i64 56, !7, i64 64, !12, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !12, i64 104, !7, i64 112, !7, i64 120}
!36 = distinct !{!36, !15}
!37 = !{!35, !7, i64 120}
!38 = !{!39, !22, i64 16}
!39 = !{!"chiral_t", !8, i64 0, !22, i64 16}
!40 = distinct !{!40, !15}
!41 = !{!11, !7, i64 24}
!42 = !{!35, !7, i64 0}
!43 = !{!35, !7, i64 32}
!44 = !{!35, !12, i64 8}
!45 = !{!35, !12, i64 12}
!46 = !{!35, !12, i64 16}
!47 = !{!35, !12, i64 40}
!48 = !{!35, !7, i64 80}
!49 = !{!35, !12, i64 88}
!50 = !{!35, !7, i64 96}
!51 = !{!35, !12, i64 104}
!52 = !{!35, !7, i64 112}
!53 = !{!21, !12, i64 16}
!54 = !{!21, !12, i64 20}
!55 = !{!21, !7, i64 56}
!56 = !{!21, !12, i64 104}
!57 = !{!21, !12, i64 132}
!58 = !{!21, !7, i64 136}
!59 = !{!21, !22, i64 168}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = !{!35, !12, i64 72}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = !{!35, !7, i64 56}
!74 = !{!35, !7, i64 64}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = distinct !{!81, !15}
!82 = !{!21, !7, i64 8}
!83 = distinct !{!83, !15}
!84 = !{!21, !7, i64 96}
!85 = distinct !{!85, !15}
!86 = !{!87, !7, i64 0}
!87 = !{!"strand_t", !7, i64 0, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !7, i64 40}
!88 = !{!87, !12, i64 32}
!89 = !{!87, !7, i64 40}
!90 = !{!87, !12, i64 36}
!91 = distinct !{!91, !15}
!92 = !{!93, !12, i64 96}
!93 = !{!"molecule_t", !8, i64 0, !12, i64 96, !7, i64 104, !12, i64 112, !12, i64 116, !12, i64 120, !7, i64 128}
!94 = !{!93, !12, i64 120}
!95 = !{!93, !7, i64 128}
!96 = distinct !{!96, !15}
!97 = !{!93, !7, i64 104}
!98 = !{!87, !7, i64 16}
!99 = !{!87, !7, i64 24}
!100 = distinct !{!100, !15}
