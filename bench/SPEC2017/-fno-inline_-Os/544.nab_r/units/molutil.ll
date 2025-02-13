; ModuleID = 'molutil.c'
source_filename = "molutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.extbond_t = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"new molecule\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"addstrand: strand %s already in mol\0A\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"name for new strand %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Strand %s not in molecule.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"residue array in strand %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"#%2d not in strand %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s not in residue %s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Atom %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"#%2d not in strand %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"bond between %s %d:%s and %s %d:%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"end1/end2 in ligate() must be be 5'/3' or 3'/5 not %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"merged residue array\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"anglep: p1, p2 are coincident, returning 0.0\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"anglep: p2, p3 are coincident, returning 0.0\0A\00", align 1
@getresname.rname = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"copied external bonds\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"rna\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"setreskind: ERROR: unknown rkind %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"nstrands\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"nresidues\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"natoms\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"NAB_mri: unknown key: %s\0A\00", align 1
@NAB_rri.rv_err = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"resnum\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"tresnum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"strandnum\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"NAB_rri: unknown key: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"resname\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"resid\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"strandname\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"NAB_rrc: unknown key: %s\0A\00", align 1
@NAB_ari.rv_err = internal global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"atomnum\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"tatomnum\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"int1\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"NAB_ari: unknown key: %s\0A\00", align 1
@NAB_arf.f = internal global double 0.000000e+00, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"charge\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"float1\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"float2\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"NAB_arf: unknown key: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"atomname\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"%d:%d:%s\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"NAB_arc: unknown key: %s\0A\00", align 1
@newtransform.mp = internal global [4 x [4 x double]] zeroinitializer, align 16
@updtransform.mr = internal global [4 x [4 x double]] zeroinitializer, align 16
@trans4p.mat = internal global [4 x [4 x double]] zeroinitializer, align 16
@rot4p.mat5 = internal global [4 x [4 x double]] zeroinitializer, align 16
@.str.53 = private unnamed_addr constant [41 x i8] c"triangle sides too close to collinear !\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"O5'\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"O5*\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"O1P\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"OAP\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"O2P\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"OBP\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"HB\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"HE\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"O3'\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"O3*\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"C3'\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"C3*\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"Can't create new atom array\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Can't create new atom index array\0A\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"add_atom: can't allocate anp.\0A\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.70 = private unnamed_addr constant [12 x i8] c"malloc %ld\0A\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"malloc err:\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @newmolecule() local_unnamed_addr #0 !prof !52 {
  %1 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !53

3:                                                ; preds = %0
  %4 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #35
  br label %16

5:                                                ; preds = %0
  %6 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 1, i64 1
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 2, i64 2
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 3
  store i32 0, ptr %13, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !65
  br label %16

16:                                               ; preds = %5, %3
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @freeresidue(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #35
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #35
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  tail call void @free(ptr noundef nonnull %18) #35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !73

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #35
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #35
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %33) #35
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !78
  %39 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !79
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %36, %63
  %43 = phi ptr [ %65, %63 ], [ %38, %36 ]
  %44 = phi i32 [ %64, %63 ], [ 0, %36 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !80
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %45) #35
  br label %48

48:                                               ; preds = %47, %42
  %49 = getelementptr inbounds %struct.atom_t, ptr %43, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %50) #35
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.atom_t, ptr %43, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @free(ptr noundef nonnull %55) #35
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %struct.atom_t, ptr %43, i64 0, i32 16
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %60) #35
  br label %63

63:                                               ; preds = %58, %62
  %64 = add nuw nsw i32 %44, 1
  %65 = getelementptr inbounds %struct.atom_t, ptr %43, i64 1
  %66 = load i32, ptr %39, align 8, !tbaa !79
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %42, label %68, !llvm.loop !85

68:                                               ; preds = %63
  %69 = load ptr, ptr %37, align 8, !tbaa !78
  br label %70

70:                                               ; preds = %68, %36
  %71 = phi ptr [ %69, %68 ], [ %38, %36 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call void @free(ptr noundef nonnull %71) #35
  br label %74

74:                                               ; preds = %73, %70
  tail call void @free(ptr noundef nonnull %0) #35
  br label %75

75:                                               ; preds = %1, %74
  ret i32 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @freemolecule(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3, %35
  %8 = phi ptr [ %10, %35 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = load ptr, ptr %8, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %11) #35
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !89
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %26, %20 ]
  %22 = load ptr, ptr %19, align 8, !tbaa !90
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = tail call i32 @freeresidue(ptr noundef %24) #36
  %26 = add nuw nsw i64 %21, 1
  %27 = load i32, ptr %15, align 8, !tbaa !89
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %20, label %30, !llvm.loop !92

30:                                               ; preds = %20, %14
  %31 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @free(ptr noundef nonnull %32) #35
  br label %35

35:                                               ; preds = %30, %34
  %36 = icmp eq ptr %10, null
  br i1 %36, label %37, label %7, !llvm.loop !93

37:                                               ; preds = %35, %3
  %38 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 33
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %43) #35
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %48) #35
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 35
  %53 = load ptr, ptr %52, align 8, !tbaa !97
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @free(ptr noundef nonnull %53) #35
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 36
  %58 = load ptr, ptr %57, align 8, !tbaa !98
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @free(ptr noundef nonnull %58) #35
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %38, align 8, !tbaa !65
  tail call void @free(ptr noundef %62) #35
  br label %63

63:                                               ; preds = %61, %37
  tail call void @free(ptr noundef nonnull %0) #35
  br label %64

64:                                               ; preds = %1, %63
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @addstrand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !99 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %10, !prof !53

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !100, !llvm.loop !101

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !prof !53

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !91
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef %1) #38
  br label %54

18:                                               ; preds = %6, %2
  %19 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24, !prof !102

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1) #35
  %23 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %54

24:                                               ; preds = %18
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %26 = shl i64 %25, 32
  %27 = add i64 %26, 4294967296
  %28 = ashr exact i64 %27, 32
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34, !prof !102

31:                                               ; preds = %24
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %1) #35
  %33 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %54

34:                                               ; preds = %24
  store ptr %29, ptr %19, align 8, !tbaa !88
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %1) #35
  %36 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 1
  store i32 0, ptr %36, align 8, !tbaa !103
  %37 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 2
  store i32 0, ptr %37, align 4, !tbaa !104
  %38 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 3
  store ptr %0, ptr %38, align 8, !tbaa !105
  %39 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 4
  %40 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !prof !106

43:                                               ; preds = %34, %43
  %44 = phi ptr [ %46, %43 ], [ %4, %34 ]
  %45 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !prof !107, !llvm.loop !108

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.strand_t, ptr %44, i64 0, i32 4
  br label %50

50:                                               ; preds = %34, %48
  %51 = phi ptr [ %49, %48 ], [ %3, %34 ]
  store ptr %19, ptr %51, align 8, !tbaa !91
  %52 = add nsw i32 %41, 1
  store i32 %52, ptr %40, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %53, align 8, !tbaa !64
  br label %54

54:                                               ; preds = %50, %31, %21, %15
  %55 = phi i32 [ 1, %15 ], [ 1, %21 ], [ 1, %31 ], [ 0, %50 ]
  ret i32 %55
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @addresidue(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !109 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !110

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %14, %12 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #37
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !prof !111

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !prof !112, !llvm.loop !113

16:                                               ; preds = %12, %3
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %62

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !89
  %21 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !114
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %52, !prof !115

24:                                               ; preds = %18
  %25 = add nsw i32 %20, 10
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %20, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %34 = zext nneg i32 %20 to i64
  %35 = load ptr, ptr %33, align 8, !tbaa !90
  br label %39

36:                                               ; preds = %24
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %9) #35
  %38 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %62

39:                                               ; preds = %32, %39
  %40 = phi i64 [ 0, %32 ], [ %44, %39 ]
  %41 = getelementptr inbounds ptr, ptr %35, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds ptr, ptr %28, i64 %40
  store ptr %42, ptr %43, align 8, !tbaa !91
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, %34
  br i1 %45, label %46, label %39, !llvm.loop !116

46:                                               ; preds = %39
  br i1 %31, label %47, label %50

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  tail call void @free(ptr noundef %49) #35
  br label %50

50:                                               ; preds = %30, %47, %46
  store i32 %25, ptr %21, align 4, !tbaa !114
  %51 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  store ptr %28, ptr %51, align 8, !tbaa !90
  br label %52

52:                                               ; preds = %50, %18
  %53 = tail call ptr @copyresidue(ptr noundef %2) #35
  %54 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !90
  %56 = load i32, ptr %19, align 8, !tbaa !89
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  store ptr %53, ptr %58, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.residue_t, ptr %53, i64 0, i32 9
  store ptr %8, ptr %59, align 8, !tbaa !117
  %60 = add nsw i32 %56, 1
  store i32 %60, ptr %19, align 8, !tbaa !89
  %61 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %61, align 8, !tbaa !64
  br label %62

62:                                               ; preds = %52, %36, %16
  %63 = phi i32 [ 1, %16 ], [ 0, %36 ], [ 0, %52 ]
  ret i32 %63
}

; Function Attrs: optsize
declare ptr @copyresidue(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @connectres(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !66 {
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %15
  %11 = phi ptr [ %17, %15 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !118

19:                                               ; preds = %15, %6
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %126

21:                                               ; preds = %10
  %22 = icmp slt i32 %2, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !89
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %21
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %2, ptr noundef %1) #35
  %29 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @e_msg) #35
  br label %126

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = zext nneg i32 %2 to i64
  %34 = getelementptr ptr, ptr %32, i64 %33
  %35 = getelementptr ptr, ptr %34, i64 -1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !79
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !78
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %40, %50
  %45 = phi i64 [ 0, %40 ], [ %51, %50 ]
  %46 = getelementptr inbounds %struct.atom_t, ptr %42, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %3) #37
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %53, label %44, !llvm.loop !119

53:                                               ; preds = %50, %30
  %54 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %3, ptr noundef %55) #35
  %57 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #35
  br label %126

58:                                               ; preds = %44
  %59 = trunc i64 %45 to i32
  %60 = icmp slt i32 %4, 1
  %61 = icmp slt i32 %25, %4
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %4, ptr noundef %1) #35
  %65 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @e_msg) #35
  br label %126

66:                                               ; preds = %58
  %67 = zext nneg i32 %4 to i64
  %68 = getelementptr ptr, ptr %32, i64 %67
  %69 = getelementptr ptr, ptr %68, i64 -1
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 15
  %72 = load i32, ptr %71, align 8, !tbaa !79
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !78
  %77 = zext nneg i32 %72 to i64
  br label %78

78:                                               ; preds = %74, %84
  %79 = phi i64 [ 0, %74 ], [ %85, %84 ]
  %80 = getelementptr inbounds %struct.atom_t, ptr %76, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !80
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %5) #37
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = add nuw nsw i64 %79, 1
  %86 = icmp eq i64 %85, %77
  br i1 %86, label %87, label %78, !llvm.loop !120

87:                                               ; preds = %84, %66
  %88 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  %90 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %5, ptr noundef %89) #35
  %91 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #35
  br label %126

92:                                               ; preds = %78
  %93 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !67
  %98 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !67
  %100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %97, i32 noundef %2, ptr noundef %3, ptr noundef %99, i32 noundef %4, ptr noundef %5) #35
  %101 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %126

102:                                              ; preds = %92
  %103 = trunc i64 %79 to i32
  %104 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 10
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  store ptr %105, ptr %93, align 8, !tbaa !71
  store ptr %93, ptr %104, align 8, !tbaa !70
  %106 = add nuw nsw i32 %59, 1
  %107 = getelementptr inbounds %struct.extbond_t, ptr %93, i64 0, i32 1
  store i32 %106, ptr %107, align 8, !tbaa !121
  %108 = getelementptr inbounds %struct.extbond_t, ptr %93, i64 0, i32 2
  store i32 %4, ptr %108, align 4, !tbaa !122
  %109 = add nuw nsw i32 %103, 1
  %110 = getelementptr inbounds %struct.extbond_t, ptr %93, i64 0, i32 3
  store i32 %109, ptr %110, align 8, !tbaa !123
  %111 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !67
  %116 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !67
  %118 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %115, i32 noundef %4, ptr noundef %5, ptr noundef %117, i32 noundef %2, ptr noundef %3) #35
  %119 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %126

120:                                              ; preds = %102
  %121 = getelementptr inbounds %struct.residue_t, ptr %70, i64 0, i32 10
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  store ptr %122, ptr %111, align 8, !tbaa !71
  store ptr %111, ptr %121, align 8, !tbaa !70
  %123 = getelementptr inbounds %struct.extbond_t, ptr %111, i64 0, i32 1
  store i32 %109, ptr %123, align 8, !tbaa !121
  %124 = getelementptr inbounds %struct.extbond_t, ptr %111, i64 0, i32 2
  store i32 %2, ptr %124, align 4, !tbaa !122
  %125 = getelementptr inbounds %struct.extbond_t, ptr %111, i64 0, i32 3
  store i32 %106, ptr %125, align 8, !tbaa !123
  br label %126

126:                                              ; preds = %120, %113, %95, %87, %63, %53, %27, %19
  %127 = phi i32 [ 1, %19 ], [ 1, %27 ], [ 1, %53 ], [ 1, %63 ], [ 1, %87 ], [ 1, %95 ], [ 1, %113 ], [ 0, %120 ]
  ret i32 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mergestr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !66 {
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.13) #37
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(6) @.str.14) #37
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9, %6
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.14) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #37
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %2, ptr noundef %5) #35
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @e_msg) #35
  br label %237

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ true, %15 ]
  %23 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %31
  %27 = phi ptr [ %33, %31 ], [ %24, %21 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %1) #37
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !124

35:                                               ; preds = %31, %21
  %36 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %237

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.molecule_t, ptr %3, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !91
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37, %46
  %42 = phi ptr [ %48, %46 ], [ %39, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %4) #37
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !91
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !125

50:                                               ; preds = %46, %37
  %51 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %4) #35
  br label %237

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !89
  %55 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !89
  %57 = add nsw i32 %56, %54
  %58 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !114
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %52
  %62 = add nsw i32 %57, 10
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  %65 = tail call noalias ptr @malloc(i64 noundef %64) #34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = icmp sgt i32 %54, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %71 = zext nneg i32 %54 to i64
  br label %74

72:                                               ; preds = %61
  %73 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #35
  br label %237

74:                                               ; preds = %69, %74
  %75 = phi i64 [ 0, %69 ], [ %80, %74 ]
  %76 = load ptr, ptr %70, align 8, !tbaa !90
  %77 = getelementptr inbounds ptr, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !91
  %79 = getelementptr inbounds ptr, ptr %65, i64 %75
  store ptr %78, ptr %79, align 8, !tbaa !91
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %71
  br i1 %81, label %82, label %74, !llvm.loop !126

82:                                               ; preds = %74, %67
  %83 = icmp sgt i32 %59, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !90
  tail call void @free(ptr noundef %86) #35
  br label %87

87:                                               ; preds = %84, %82
  %88 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  store ptr %65, ptr %88, align 8, !tbaa !90
  store i32 %62, ptr %58, align 4, !tbaa !114
  br label %89

89:                                               ; preds = %87, %52
  %90 = icmp eq ptr %0, %3
  br i1 %22, label %155, label %91

91:                                               ; preds = %89
  %92 = load i32, ptr %53, align 8, !tbaa !89
  %93 = load i32, ptr %55, align 8, !tbaa !89
  %94 = icmp sgt i32 %93, 0
  br i1 %90, label %101, label %95

95:                                               ; preds = %91
  br i1 %94, label %97, label %96

96:                                               ; preds = %95
  store i32 %57, ptr %53, align 8, !tbaa !89
  br label %235

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %99 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %100 = sext i32 %92 to i64
  br label %109

101:                                              ; preds = %91
  br i1 %94, label %103, label %102

102:                                              ; preds = %101
  store i32 %57, ptr %53, align 8, !tbaa !89
  br label %234

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %105 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %106 = sext i32 %92 to i64
  %107 = zext nneg i32 %93 to i64
  %108 = load ptr, ptr %105, align 8, !tbaa !90
  br label %126

109:                                              ; preds = %97, %109
  %110 = phi i64 [ 0, %97 ], [ %122, %109 ]
  %111 = load ptr, ptr %98, align 8, !tbaa !90
  %112 = getelementptr inbounds ptr, ptr %111, i64 %110
  %113 = load ptr, ptr %112, align 8, !tbaa !91
  %114 = tail call ptr @copyresidue(ptr noundef %113) #35
  %115 = load ptr, ptr %99, align 8, !tbaa !90
  %116 = add nsw i64 %110, %100
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  store ptr %114, ptr %117, align 8, !tbaa !91
  %118 = load ptr, ptr %99, align 8, !tbaa !90
  %119 = getelementptr inbounds ptr, ptr %118, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  %121 = getelementptr inbounds %struct.residue_t, ptr %120, i64 0, i32 9
  store ptr %27, ptr %121, align 8, !tbaa !117
  %122 = add nuw nsw i64 %110, 1
  %123 = load i32, ptr %55, align 8, !tbaa !89
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %109, label %140, !llvm.loop !127

126:                                              ; preds = %103, %126
  %127 = phi ptr [ %108, %103 ], [ %134, %126 ]
  %128 = phi i64 [ 0, %103 ], [ %138, %126 ]
  %129 = load ptr, ptr %104, align 8, !tbaa !90
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !91
  %132 = add nsw i64 %128, %106
  %133 = getelementptr inbounds ptr, ptr %127, i64 %132
  store ptr %131, ptr %133, align 8, !tbaa !91
  %134 = load ptr, ptr %105, align 8, !tbaa !90
  %135 = getelementptr inbounds ptr, ptr %134, i64 %132
  %136 = load ptr, ptr %135, align 8, !tbaa !91
  %137 = getelementptr inbounds %struct.residue_t, ptr %136, i64 0, i32 9
  store ptr %27, ptr %137, align 8, !tbaa !117
  %138 = add nuw nsw i64 %128, 1
  %139 = icmp eq i64 %138, %107
  br i1 %139, label %142, label %126, !llvm.loop !128

140:                                              ; preds = %109
  %141 = icmp sgt i32 %123, 0
  br i1 %141, label %142, label %233

142:                                              ; preds = %126, %140
  %143 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %144 = sext i32 %92 to i64
  br label %145

145:                                              ; preds = %142, %145
  %146 = phi i64 [ 0, %142 ], [ %151, %145 ]
  %147 = load ptr, ptr %143, align 8, !tbaa !90
  %148 = getelementptr ptr, ptr %147, i64 %146
  %149 = getelementptr ptr, ptr %148, i64 %144
  %150 = load ptr, ptr %149, align 8, !tbaa !91
  tail call fastcc void @fixextbonds(ptr noundef %150, i32 noundef %92) #36
  %151 = add nuw nsw i64 %146, 1
  %152 = load i32, ptr %55, align 8, !tbaa !89
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %145, label %233, !llvm.loop !129

155:                                              ; preds = %89
  %156 = load i32, ptr %55, align 8, !tbaa !89
  %157 = load i32, ptr %53, align 8, !tbaa !89
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %161 = zext nneg i32 %157 to i64
  %162 = sext i32 %156 to i64
  br label %163

163:                                              ; preds = %159, %163
  %164 = phi i64 [ %161, %159 ], [ %165, %163 ]
  %165 = add nsw i64 %164, -1
  %166 = load ptr, ptr %160, align 8, !tbaa !90
  %167 = getelementptr inbounds ptr, ptr %166, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !91
  %169 = getelementptr ptr, ptr %166, i64 %165
  %170 = getelementptr ptr, ptr %169, i64 %162
  store ptr %168, ptr %170, align 8, !tbaa !91
  %171 = icmp ugt i64 %164, 1
  br i1 %171, label %163, label %172, !llvm.loop !130

172:                                              ; preds = %163, %155
  %173 = icmp sgt i32 %156, 0
  br i1 %90, label %178, label %174

174:                                              ; preds = %172
  br i1 %173, label %175, label %216

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %177 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  br label %184

178:                                              ; preds = %172
  br i1 %173, label %179, label %216

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %181 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %182 = zext nneg i32 %156 to i64
  %183 = load ptr, ptr %181, align 8, !tbaa !90
  br label %200

184:                                              ; preds = %175, %184
  %185 = phi i64 [ 0, %175 ], [ %196, %184 ]
  %186 = load ptr, ptr %176, align 8, !tbaa !90
  %187 = getelementptr inbounds ptr, ptr %186, i64 %185
  %188 = load ptr, ptr %187, align 8, !tbaa !91
  %189 = tail call ptr @copyresidue(ptr noundef %188) #35
  %190 = load ptr, ptr %177, align 8, !tbaa !90
  %191 = getelementptr inbounds ptr, ptr %190, i64 %185
  store ptr %189, ptr %191, align 8, !tbaa !91
  %192 = load ptr, ptr %177, align 8, !tbaa !90
  %193 = getelementptr inbounds ptr, ptr %192, i64 %185
  %194 = load ptr, ptr %193, align 8, !tbaa !91
  %195 = getelementptr inbounds %struct.residue_t, ptr %194, i64 0, i32 9
  store ptr %27, ptr %195, align 8, !tbaa !117
  %196 = add nuw nsw i64 %185, 1
  %197 = load i32, ptr %55, align 8, !tbaa !89
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %184, label %213, !llvm.loop !131

200:                                              ; preds = %179, %200
  %201 = phi ptr [ %183, %179 ], [ %207, %200 ]
  %202 = phi i64 [ 0, %179 ], [ %211, %200 ]
  %203 = load ptr, ptr %180, align 8, !tbaa !90
  %204 = getelementptr inbounds ptr, ptr %203, i64 %202
  %205 = load ptr, ptr %204, align 8, !tbaa !91
  %206 = getelementptr inbounds ptr, ptr %201, i64 %202
  store ptr %205, ptr %206, align 8, !tbaa !91
  %207 = load ptr, ptr %181, align 8, !tbaa !90
  %208 = getelementptr inbounds ptr, ptr %207, i64 %202
  %209 = load ptr, ptr %208, align 8, !tbaa !91
  %210 = getelementptr inbounds %struct.residue_t, ptr %209, i64 0, i32 9
  store ptr %27, ptr %210, align 8, !tbaa !117
  %211 = add nuw nsw i64 %202, 1
  %212 = icmp eq i64 %211, %182
  br i1 %212, label %216, label %200, !llvm.loop !132

213:                                              ; preds = %184
  %214 = trunc i64 %196 to i32
  %215 = load i32, ptr %53, align 8, !tbaa !89
  br label %216

216:                                              ; preds = %200, %213, %174, %178
  %217 = phi i32 [ %157, %178 ], [ %157, %174 ], [ %215, %213 ], [ %157, %200 ]
  %218 = phi i32 [ 0, %178 ], [ 0, %174 ], [ %214, %213 ], [ %156, %200 ]
  %219 = icmp sgt i32 %217, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 7
  %222 = zext i32 %218 to i64
  br label %223

223:                                              ; preds = %220, %223
  %224 = phi i64 [ 0, %220 ], [ %229, %223 ]
  %225 = load ptr, ptr %221, align 8, !tbaa !90
  %226 = getelementptr ptr, ptr %225, i64 %224
  %227 = getelementptr ptr, ptr %226, i64 %222
  %228 = load ptr, ptr %227, align 8, !tbaa !91
  tail call fastcc void @fixextbonds(ptr noundef %228, i32 noundef %218) #36
  %229 = add nuw nsw i64 %224, 1
  %230 = load i32, ptr %53, align 8, !tbaa !89
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %223, label %233, !llvm.loop !133

233:                                              ; preds = %145, %223, %140, %216
  store i32 %57, ptr %53, align 8, !tbaa !89
  br i1 %90, label %234, label %235

234:                                              ; preds = %102, %233
  tail call fastcc void @freestrand(ptr noundef %0, ptr noundef %4) #36
  br label %235

235:                                              ; preds = %96, %234, %233
  %236 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %236, align 8, !tbaa !64
  tail call void @upd_molnumbers(ptr noundef %0) #36
  br label %237

237:                                              ; preds = %235, %72, %50, %35, %18
  %238 = phi i32 [ 1, %35 ], [ 1, %50 ], [ 1, %72 ], [ 0, %235 ], [ 1, %18 ]
  ret i32 %238
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fixextbonds(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !66 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.extbond_t, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !122
  %10 = add nsw i32 %9, %1
  store i32 %10, ptr %8, align 4, !tbaa !122
  %11 = load ptr, ptr %7, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !135

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freestrand(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !136 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !88
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #37
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %14

10:                                               ; preds = %14
  %11 = load ptr, ptr %17, align 8, !tbaa !88
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #37
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14, !llvm.loop !137

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %17, %10 ], [ %4, %6 ]
  %16 = getelementptr inbounds %struct.strand_t, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !137

19:                                               ; preds = %14, %2
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %32

21:                                               ; preds = %10, %6
  %22 = phi ptr [ %4, %6 ], [ %17, %10 ]
  %23 = phi ptr [ null, %6 ], [ %15, %10 ]
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.strand_t, ptr %23, i64 0, i32 4
  %28 = select i1 %24, ptr %3, ptr %27
  store ptr %26, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %29, align 8, !tbaa !58
  br label %32

32:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @upd_molnumbers(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !66 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %52
  %6 = phi ptr [ %56, %52 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %52 ], [ 0, %1 ]
  %8 = phi i32 [ %54, %52 ], [ 0, %1 ]
  %9 = phi i32 [ %53, %52 ], [ 0, %1 ]
  %10 = add nuw nsw i32 %7, 1
  %11 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = zext nneg i32 %13 to i64
  br label %23

19:                                               ; preds = %42, %23
  %20 = phi i32 [ %27, %23 ], [ %46, %42 ]
  %21 = phi i32 [ %26, %23 ], [ %48, %42 ]
  %22 = icmp eq i64 %32, %18
  br i1 %22, label %52, label %23, !llvm.loop !138

23:                                               ; preds = %15, %19
  %24 = phi i64 [ 0, %15 ], [ %32, %19 ]
  %25 = phi i32 [ %8, %15 ], [ %30, %19 ]
  %26 = phi i32 [ %9, %15 ], [ %21, %19 ]
  %27 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %28 = getelementptr inbounds ptr, ptr %17, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = add nsw i32 %25, 1
  %31 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 2
  store i32 %30, ptr %31, align 4, !tbaa !139
  %32 = add nuw nsw i64 %24, 1
  %33 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 3
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 8, !tbaa !140
  %35 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !79
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %19

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = zext nneg i32 %36 to i64
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ 0, %38 ], [ %50, %42 ]
  %44 = phi i32 [ %26, %38 ], [ %48, %42 ]
  %45 = phi i32 [ %27, %38 ], [ %46, %42 ]
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %43, i32 15
  store i32 %46, ptr %47, align 4, !tbaa !141
  %48 = add nsw i32 %44, 1
  %49 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %43, i32 14
  store i32 %48, ptr %49, align 8, !tbaa !142
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %41
  br i1 %51, label %19, label %42, !llvm.loop !143

52:                                               ; preds = %19, %5
  %53 = phi i32 [ %9, %5 ], [ %21, %19 ]
  %54 = phi i32 [ %8, %5 ], [ %30, %19 ]
  %55 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !91
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !144

58:                                               ; preds = %52, %1
  %59 = phi i32 [ 0, %1 ], [ %53, %52 ]
  %60 = phi i32 [ 0, %1 ], [ %54, %52 ]
  %61 = phi i32 [ 0, %1 ], [ %10, %52 ]
  %62 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  store i32 %60, ptr %63, align 8, !tbaa !63
  %64 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 4
  store i32 %59, ptr %64, align 4, !tbaa !145
  %65 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 1, ptr %65, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @countmolstrands(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !104
  %12 = and i32 %11, 1
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !146

17:                                               ; preds = %7, %2
  %18 = phi i32 [ 0, %2 ], [ %13, %7 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @select_atoms(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @countstrandresidues(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !66 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp ne ptr %4, null
  %6 = icmp sgt i32 %1, 1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %2 ]
  %10 = phi i32 [ %11, %8 ], [ 1, %2 ]
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp ne ptr %13, null
  %15 = icmp slt i32 %11, %1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17, !llvm.loop !147

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %4, %2 ], [ %13, %8 ]
  %19 = getelementptr inbounds %struct.strand_t, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !89
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @countmolres(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2, %28
  %8 = phi ptr [ %31, %28 ], [ %5, %2 ]
  %9 = phi i32 [ %29, %28 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %26, %17 ]
  %19 = phi i32 [ %9, %13 ], [ %25, %17 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !148
  %24 = and i32 %23, 1
  %25 = add i32 %24, %19
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %17, !llvm.loop !149

28:                                               ; preds = %17, %7
  %29 = phi i32 [ %9, %7 ], [ %25, %17 ]
  %30 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !150

33:                                               ; preds = %28, %2
  %34 = phi i32 [ 0, %2 ], [ %29, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @countmolatoms(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2, %42
  %8 = phi ptr [ %45, %42 ], [ %5, %2 ]
  %9 = phi i32 [ %43, %42 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %40, %38 ]
  %19 = phi i32 [ %9, %13 ], [ %39, %38 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %36, %29 ]
  %31 = phi i32 [ %19, %25 ], [ %35, %29 ]
  %32 = getelementptr inbounds %struct.atom_t, ptr %27, i64 %30, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !151
  %34 = and i32 %33, 1
  %35 = add i32 %34, %31
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !152

38:                                               ; preds = %29, %17
  %39 = phi i32 [ %19, %17 ], [ %35, %29 ]
  %40 = add nuw nsw i64 %18, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %42, label %17, !llvm.loop !153

42:                                               ; preds = %38, %7
  %43 = phi i32 [ %9, %7 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7, !llvm.loop !154

47:                                               ; preds = %42, %2
  %48 = phi i32 [ 0, %2 ], [ %43, %42 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @dist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  %6 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #35
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #35
  %8 = call double @distp(ptr noundef nonnull %4, ptr noundef nonnull %5) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  ret double %8
}

; Function Attrs: optsize
declare i32 @setpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local double @distp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !66 {
  %3 = load double, ptr %0, align 8, !tbaa !54
  %4 = load double, ptr %1, align 8, !tbaa !54
  %5 = fsub double %3, %4
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !54
  %10 = fsub double %7, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = fsub double %12, %14
  %16 = fmul double %10, %10
  %17 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %17)
  %19 = tail call double @llvm.sqrt.f64(double %18)
  ret double %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @angle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %9 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %10 = call i32 @setpoint(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7) #35
  %11 = call double @anglep(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  ret double %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local double @anglep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 !prof !66 {
  %4 = load double, ptr %0, align 8, !tbaa !54
  %5 = load double, ptr %1, align 8, !tbaa !54
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds double, ptr %1, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !54
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !54
  %16 = fsub double %13, %15
  %17 = load double, ptr %2, align 8, !tbaa !54
  %18 = fsub double %17, %5
  %19 = getelementptr inbounds double, ptr %2, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !54
  %21 = fsub double %20, %10
  %22 = getelementptr inbounds double, ptr %2, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !54
  %24 = fsub double %23, %15
  %25 = fmul double %11, %11
  %26 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %26)
  %28 = tail call double @llvm.sqrt.f64(double %27)
  %29 = fmul double %21, %21
  %30 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %29)
  %31 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %30)
  %32 = tail call double @llvm.sqrt.f64(double %31)
  %33 = fcmp oeq double %28, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load ptr, ptr @stderr, align 8, !tbaa !91
  %36 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 45, i64 1, ptr %35) #40
  br label %50

37:                                               ; preds = %3
  %38 = fcmp oeq double %32, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load ptr, ptr @stderr, align 8, !tbaa !91
  %41 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 45, i64 1, ptr %40) #40
  br label %50

42:                                               ; preds = %37
  %43 = fmul double %11, %21
  %44 = tail call double @llvm.fmuladd.f64(double %6, double %18, double %43)
  %45 = tail call double @llvm.fmuladd.f64(double %16, double %24, double %44)
  %46 = fmul double %28, %32
  %47 = fdiv double %45, %46
  %48 = tail call double @acos(double noundef %47) #35
  %49 = fmul double %48, 0x404CA5DC1A63C1F8
  br label %50

50:                                               ; preds = %42, %39, %34
  %51 = phi double [ 0.000000e+00, %34 ], [ 0.000000e+00, %39 ], [ %49, %42 ]
  ret double %51
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @torsion(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !66 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #39
  %10 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #35
  %11 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7) #35
  %12 = call i32 @setpoint(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %8) #35
  %13 = call i32 @setpoint(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %9) #35
  %14 = call double @torsionp(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39
  ret double %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @torsionp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !prof !66 {
  %5 = load double, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !54
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds double, ptr %2, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = load double, ptr %3, align 8, !tbaa !54
  %16 = getelementptr inbounds double, ptr %3, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds double, ptr %3, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !54
  %20 = fsub double %14, %19
  %21 = load <2 x double>, ptr %1, align 8, !tbaa !54
  %22 = load <2 x double>, ptr %2, align 8, !tbaa !54
  %23 = insertelement <2 x double> %22, double %5, i64 0
  %24 = fsub <2 x double> %23, %21
  %25 = insertelement <2 x double> poison, double %14, i64 0
  %26 = insertelement <2 x double> %25, double %7, i64 1
  %27 = insertelement <2 x double> %21, double %11, i64 0
  %28 = fsub <2 x double> %26, %27
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %30 = extractelement <2 x double> %22, i64 0
  %31 = fsub double %30, %15
  %32 = insertelement <2 x double> %21, double %17, i64 1
  %33 = fsub <2 x double> %22, %32
  %34 = insertelement <2 x double> %24, double %12, i64 0
  %35 = fneg <2 x double> %34
  %36 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %37 = insertelement <2 x double> %36, double %20, i64 1
  %38 = fmul <2 x double> %37, %35
  %39 = shufflevector <2 x double> %28, <2 x double> %33, <2 x i32> <i32 0, i32 3>
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %39, <2 x double> %38)
  %41 = shufflevector <2 x double> %24, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %42 = fneg <2 x double> %41
  %43 = insertelement <2 x double> %28, double %31, i64 1
  %44 = fmul <2 x double> %43, %42
  %45 = shufflevector <2 x double> %34, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %46 = insertelement <2 x double> %33, double %20, i64 1
  %47 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> %46, <2 x double> %44)
  %48 = shufflevector <2 x double> %29, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %49 = fneg <2 x double> %48
  %50 = fmul <2 x double> %33, %49
  %51 = shufflevector <2 x double> %24, <2 x double> %43, <2 x i32> <i32 1, i32 3>
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %51, <2 x double> %50)
  %53 = fmul <2 x double> %47, %47
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %40, <2 x double> %53)
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %52, <2 x double> %54)
  %56 = extractelement <2 x double> %47, i64 0
  %57 = extractelement <2 x double> %47, i64 1
  %58 = fmul double %56, %57
  %59 = extractelement <2 x double> %40, i64 0
  %60 = extractelement <2 x double> %40, i64 1
  %61 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %58)
  %62 = extractelement <2 x double> %52, i64 0
  %63 = extractelement <2 x double> %52, i64 1
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %61)
  %65 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %66 = fmul <2 x double> %55, %65
  %67 = extractelement <2 x double> %66, i64 0
  %68 = tail call double @sqrt(double noundef %67) #35
  %69 = fdiv double %64, %68
  %70 = fcmp olt double %69, -1.000000e+00
  br i1 %70, label %74, label %71

71:                                               ; preds = %4
  %72 = fcmp ogt double %69, 1.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %4, %71, %73
  %75 = phi double [ 1.000000e+00, %73 ], [ %69, %71 ], [ -1.000000e+00, %4 ]
  %76 = tail call double @acos(double noundef %75) #35
  %77 = fneg double %56
  %78 = fmul double %63, %77
  %79 = tail call double @llvm.fmuladd.f64(double %62, double %57, double %78)
  %80 = fneg double %62
  %81 = fmul double %60, %80
  %82 = tail call double @llvm.fmuladd.f64(double %59, double %63, double %81)
  %83 = extractelement <2 x double> %24, i64 1
  %84 = fmul double %83, %82
  %85 = extractelement <2 x double> %33, i64 0
  %86 = tail call double @llvm.fmuladd.f64(double %85, double %79, double %84)
  %87 = fneg double %59
  %88 = fmul double %57, %87
  %89 = tail call double @llvm.fmuladd.f64(double %56, double %60, double %88)
  %90 = extractelement <2 x double> %28, i64 0
  %91 = tail call double @llvm.fmuladd.f64(double %90, double %89, double %86)
  %92 = fcmp olt double %91, 0.000000e+00
  %93 = fneg double %76
  %94 = select i1 %92, double %93, double %76
  %95 = fsub double 0x400921FB54442D18, %94
  %96 = fmul double %95, 1.800000e+02
  %97 = fdiv double %96, 0x400921FB54442D18
  %98 = fcmp ogt double %97, 1.800000e+02
  %99 = fadd double %97, -3.600000e+02
  %100 = select i1 %98, double %99, double %97
  ret double %100
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local noundef ptr @getresname(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !66 {
  %2 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #34
  store ptr %2, ptr @getresname.rname, align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %6) #35
  br label %8

8:                                                ; preds = %1, %4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %6 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  %11 = icmp eq i32 %3, 0
  br label %12

12:                                               ; preds = %9, %36
  %13 = phi ptr [ %7, %9 ], [ %38, %36 ]
  %14 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !89
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !104
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  br i1 %10, label %27, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  tail call fastcc void @cvt_p2hb(ptr noundef %26) #36
  br label %27

27:                                               ; preds = %23, %22
  br i1 %11, label %36, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = load i32, ptr %14, align 8, !tbaa !89
  %32 = sext i32 %31 to i64
  %33 = getelementptr ptr, ptr %30, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa !91
  tail call fastcc void @add_he2o3(ptr noundef %35) #36
  br label %36

36:                                               ; preds = %12, %17, %28, %27
  %37 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !llvm.loop !155

40:                                               ; preds = %36, %4
  %41 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %41, align 8, !tbaa !64
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cvt_p2hb(ptr nocapture noundef %0) unnamed_addr #16 !prof !66 !PGOFuncName !156 {
  %2 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.54) #36
  %3 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.55) #36
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.56) #36
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %2, -1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %63, label %12

10:                                               ; preds = %1
  %11 = icmp eq i32 %2, -1
  br i1 %11, label %63, label %12

12:                                               ; preds = %5, %10
  %13 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.57) #36
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.58) #36
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %20, label %18

18:                                               ; preds = %12, %15
  %19 = phi i32 [ %16, %15 ], [ %13, %12 ]
  tail call fastcc void @delete_atom(ptr noundef %0, i32 noundef %19) #36
  br label %20

20:                                               ; preds = %18, %15
  %21 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.59) #36
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.60) #36
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %24, %23 ], [ %21, %20 ]
  tail call fastcc void @delete_atom(ptr noundef %0, i32 noundef %27) #36
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %33, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false) #35
  %34 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.55) #36
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = tail call fastcc i32 @find_atom(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #36
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i32 [ %37, %36 ], [ %34, %28 ]
  %40 = load ptr, ptr %29, align 8, !tbaa !78
  %41 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %31, i32 17
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %42, i32 17
  %44 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %31, i32 17, i64 2
  %45 = load double, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %42, i32 17, i64 2
  %47 = load double, ptr %46, align 8, !tbaa !54
  %48 = fsub double %45, %47
  %49 = load <2 x double>, ptr %41, align 8, !tbaa !54
  %50 = load <2 x double>, ptr %43, align 8, !tbaa !54
  %51 = fsub <2 x double> %49, %50
  %52 = fmul <2 x double> %51, %51
  %53 = extractelement <2 x double> %52, i64 1
  %54 = extractelement <2 x double> %51, i64 0
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %53)
  %56 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %55)
  %57 = tail call double @llvm.sqrt.f64(double %56)
  %58 = fdiv double 0x3FEEB851EB851EB8, %57
  %59 = insertelement <2 x double> poison, double %58, i64 0
  %60 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  %61 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %51, <2 x double> %50)
  store <2 x double> %61, ptr %41, align 8, !tbaa !54
  %62 = tail call double @llvm.fmuladd.f64(double %58, double %48, double %47)
  store double %62, ptr %44, align 8, !tbaa !54
  br label %63

63:                                               ; preds = %38, %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_he2o3(ptr nocapture noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !157 {
  %2 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.62) #36
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %73

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.63) #36
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.64) #36
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  %11 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.65) #36
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.66) #36
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %11, %9 ]
  %17 = icmp eq i32 %16, -1
  %18 = icmp eq i32 %10, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %73, label %20

20:                                               ; preds = %15
  tail call fastcc void @add_atom(ptr noundef %0) #36
  %21 = tail call fastcc i32 @find_atom(ptr noundef %0, ptr noundef nonnull @.str.62) #36
  %22 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %24, i32 17
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %26, i32 17
  %28 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %24, i32 17, i64 2
  %29 = load double, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %26, i32 17, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !54
  %32 = fsub double %29, %31
  %33 = sext i32 %21 to i64
  %34 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %33, i32 17
  %35 = load <2 x double>, ptr %25, align 8, !tbaa !54
  %36 = load <2 x double>, ptr %27, align 8, !tbaa !54
  %37 = fsub <2 x double> %35, %36
  %38 = fmul <2 x double> %37, %37
  %39 = extractelement <2 x double> %38, i64 1
  %40 = extractelement <2 x double> %37, i64 0
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %40, double %39)
  %42 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %41)
  %43 = tail call double @llvm.sqrt.f64(double %42)
  %44 = fdiv double 0x3FD37EC54D4F9170, %43
  %45 = insertelement <2 x double> poison, double %44, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = fmul <2 x double> %37, %46
  %48 = fmul double %32, %44
  %49 = extractelement <2 x double> %47, i64 1
  %50 = fcmp une double %49, 0.000000e+00
  %51 = extractelement <2 x double> %47, i64 0
  %52 = fneg double %51
  %53 = fdiv double %52, %49
  %54 = insertelement <2 x i1> poison, i1 %50, i64 0
  %55 = shufflevector <2 x i1> %54, <2 x i1> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %53, i64 1
  %57 = select <2 x i1> %55, <2 x double> %56, <2 x double> <double 0.000000e+00, double 1.000000e+00>
  %58 = fmul <2 x double> %57, %57
  %59 = extractelement <2 x double> %58, i64 1
  %60 = extractelement <2 x double> %57, i64 0
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %59)
  %62 = tail call double @llvm.sqrt.f64(double %61)
  %63 = fdiv double 0x3FED21EBB2374F7E, %62
  %64 = insertelement <2 x double> poison, double %63, i64 0
  %65 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %66 = fmul <2 x double> %57, %65
  %67 = fmul double %63, 0.000000e+00
  %68 = fadd <2 x double> %35, %47
  %69 = fadd <2 x double> %68, %66
  store <2 x double> %69, ptr %34, align 8, !tbaa !54
  %70 = fadd double %48, %29
  %71 = fadd double %70, %67
  %72 = getelementptr inbounds %struct.atom_t, ptr %23, i64 %33, i32 17, i64 2
  store double %71, ptr %72, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %15, %1, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copyextbonds(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !109 {
  %2 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5, !prof !158

5:                                                ; preds = %1, %24
  %6 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %7 = phi ptr [ %21, %24 ], [ null, %1 ]
  %8 = phi ptr [ %9, %24 ], [ null, %1 ]
  %9 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) @e_msg, ptr noundef nonnull align 1 dereferenceable(22) @.str.20, i64 22, i1 false)
  %12 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %27

13:                                               ; preds = %5
  store ptr null, ptr %9, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.extbond_t, ptr %6, i64 0, i32 1
  %15 = getelementptr inbounds %struct.extbond_t, ptr %9, i64 0, i32 1
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !159
  store <2 x i32> %16, ptr %15, align 8, !tbaa !159
  %17 = getelementptr inbounds %struct.extbond_t, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.extbond_t, ptr %9, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !123
  %20 = icmp eq ptr %7, null
  %21 = select i1 %20, ptr %9, ptr %7
  %22 = icmp eq ptr %8, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store ptr %9, ptr %8, align 8, !tbaa !71
  br label %24

24:                                               ; preds = %23, %13
  %25 = load ptr, ptr %6, align 8, !tbaa !91
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !prof !160, !llvm.loop !161

27:                                               ; preds = %24, %1, %11
  %28 = phi ptr [ null, %11 ], [ null, %1 ], [ %21, %24 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @setreskind(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #39
  %5 = load i8, ptr %2, align 1, !tbaa !162
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__ctype_b_loc() #41
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %7, %26
  %11 = phi i8 [ %5, %7 ], [ %31, %26 ]
  %12 = phi ptr [ %4, %7 ], [ %29, %26 ]
  %13 = phi ptr [ %2, %7 ], [ %30, %26 ]
  %14 = sext i8 %11 to i64
  %15 = getelementptr inbounds i16, ptr %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !163
  %17 = and i16 %16, 256
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = tail call ptr @__ctype_tolower_loc() #41
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds i32, ptr %21, i64 %14
  %23 = load i32, ptr %22, align 4, !tbaa !159
  br label %26

24:                                               ; preds = %10
  %25 = zext i8 %11 to i32
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %23, %19 ], [ %25, %24 ]
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %28, ptr %12, align 1, !tbaa !162
  %30 = getelementptr inbounds i8, ptr %13, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !162
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %10, !llvm.loop !165

33:                                               ; preds = %26, %3
  %34 = phi ptr [ %4, %3 ], [ %29, %26 ]
  store i8 0, ptr %34, align 1, !tbaa !162
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.21, i64 4)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.22, i64 4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.23, i64 3)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @stderr, align 8, !tbaa !91
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #38
  br label %46

46:                                               ; preds = %40, %37, %33, %43
  %47 = phi i32 [ 0, %43 ], [ 1, %33 ], [ 2, %37 ], [ 3, %40 ]
  %48 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %49 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52

52:                                               ; preds = %46, %74
  %53 = phi ptr [ %76, %74 ], [ %50, %46 ]
  %54 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !89
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  %60 = zext nneg i32 %55 to i64
  br label %61

61:                                               ; preds = %57, %71
  %62 = phi i64 [ 0, %57 ], [ %72, %71 ]
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct.residue_t, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !148
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.residue_t, ptr %64, i64 0, i32 7
  store i32 %47, ptr %70, align 4, !tbaa !166
  br label %71

71:                                               ; preds = %61, %69
  %72 = add nuw nsw i64 %62, 1
  %73 = icmp eq i64 %72, %60
  br i1 %73, label %74, label %61, !llvm.loop !167

74:                                               ; preds = %71, %52
  %75 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !91
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52, !llvm.loop !168

78:                                               ; preds = %74, %46
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #39
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @setxyz_from_mol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !52 {
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6, !prof !107

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15, !prof !110

15:                                               ; preds = %8, %64
  %16 = phi ptr [ %67, %64 ], [ %13, %8 ]
  %17 = phi i32 [ %65, %64 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %64, !prof !169

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %60
  %26 = phi i64 [ 0, %21 ], [ %62, %60 ]
  %27 = phi i32 [ %17, %21 ], [ %61, %60 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %60, !prof !158

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %56
  %38 = phi i64 [ 0, %33 ], [ %58, %56 ]
  %39 = phi i32 [ %27, %33 ], [ %57, %56 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !151
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44, !prof !170

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  %46 = load double, ptr %45, align 8, !tbaa !54
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds [3 x double], ptr %2, i64 %47
  store double %46, ptr %48, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  %50 = load double, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds [3 x double], ptr %2, i64 %47, i64 1
  store double %50, ptr %51, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  %53 = load double, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds [3 x double], ptr %2, i64 %47, i64 2
  store double %53, ptr %54, align 8, !tbaa !54
  %55 = add nsw i32 %39, 1
  br label %56

56:                                               ; preds = %37, %44
  %57 = phi i32 [ %55, %44 ], [ %39, %37 ]
  %58 = add nuw nsw i64 %38, 1
  %59 = icmp eq i64 %58, %36
  br i1 %59, label %60, label %37, !prof !171, !llvm.loop !172

60:                                               ; preds = %56, %25
  %61 = phi i32 [ %27, %25 ], [ %57, %56 ]
  %62 = add nuw nsw i64 %26, 1
  %63 = icmp eq i64 %62, %24
  br i1 %63, label %64, label %25, !prof !173, !llvm.loop !174

64:                                               ; preds = %60, %15
  %65 = phi i32 [ %17, %15 ], [ %61, %60 ]
  %66 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %15, !prof !175, !llvm.loop !176

69:                                               ; preds = %64, %8
  %70 = phi i32 [ 0, %8 ], [ %65, %64 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @setxyzw_from_mol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !66 {
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %8, %74
  %16 = phi ptr [ %77, %74 ], [ %13, %8 ]
  %17 = phi i32 [ %75, %74 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %70
  %26 = phi i64 [ 0, %21 ], [ %72, %70 ]
  %27 = phi i32 [ %17, %21 ], [ %71, %70 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %66
  %38 = phi i64 [ 0, %33 ], [ %68, %66 ]
  %39 = phi i32 [ %27, %33 ], [ %67, %66 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !151
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  %46 = load double, ptr %45, align 8, !tbaa !54
  %47 = shl nsw i32 %39, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  store double %46, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  %51 = load double, ptr %50, align 8, !tbaa !54
  %52 = or disjoint i32 %47, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  store double %51, ptr %54, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !54
  %57 = or disjoint i32 %47, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %2, i64 %58
  store double %56, ptr %59, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 18
  %61 = load double, ptr %60, align 8, !tbaa !177
  %62 = or disjoint i32 %47, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %2, i64 %63
  store double %61, ptr %64, align 8, !tbaa !54
  %65 = add nsw i32 %39, 1
  br label %66

66:                                               ; preds = %37, %44
  %67 = phi i32 [ %65, %44 ], [ %39, %37 ]
  %68 = add nuw nsw i64 %38, 1
  %69 = icmp eq i64 %68, %36
  br i1 %69, label %70, label %37, !llvm.loop !178

70:                                               ; preds = %66, %25
  %71 = phi i32 [ %27, %25 ], [ %67, %66 ]
  %72 = add nuw nsw i64 %26, 1
  %73 = icmp eq i64 %72, %24
  br i1 %73, label %74, label %25, !llvm.loop !179

74:                                               ; preds = %70, %15
  %75 = phi i32 [ %17, %15 ], [ %71, %70 ]
  %76 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %15, !llvm.loop !180

79:                                               ; preds = %74, %8
  %80 = phi i32 [ 0, %8 ], [ %75, %74 ]
  ret i32 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @setmol_from_xyz(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !66 {
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %8, %65
  %16 = phi ptr [ %68, %65 ], [ %13, %8 ]
  %17 = phi i32 [ %66, %65 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %61
  %26 = phi i64 [ 0, %21 ], [ %63, %61 ]
  %27 = phi i32 [ %17, %21 ], [ %62, %61 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %57
  %38 = phi i64 [ 0, %33 ], [ %59, %57 ]
  %39 = phi i32 [ %27, %33 ], [ %58, %57 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !151
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = mul nsw i32 %39, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %2, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  store double %48, ptr %49, align 8, !tbaa !54
  %50 = getelementptr double, ptr %47, i64 1
  %51 = load double, ptr %50, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  store double %51, ptr %52, align 8, !tbaa !54
  %53 = getelementptr double, ptr %47, i64 2
  %54 = load double, ptr %53, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  store double %54, ptr %55, align 8, !tbaa !54
  %56 = add nsw i32 %39, 1
  br label %57

57:                                               ; preds = %37, %44
  %58 = phi i32 [ %56, %44 ], [ %39, %37 ]
  %59 = add nuw nsw i64 %38, 1
  %60 = icmp eq i64 %59, %36
  br i1 %60, label %61, label %37, !llvm.loop !181

61:                                               ; preds = %57, %25
  %62 = phi i32 [ %27, %25 ], [ %58, %57 ]
  %63 = add nuw nsw i64 %26, 1
  %64 = icmp eq i64 %63, %24
  br i1 %64, label %65, label %25, !llvm.loop !182

65:                                               ; preds = %61, %15
  %66 = phi i32 [ %17, %15 ], [ %62, %61 ]
  %67 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15, !llvm.loop !183

70:                                               ; preds = %65, %8
  %71 = phi i32 [ 0, %8 ], [ %66, %65 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @setmol_from_xyzw(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !66 {
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %8, %74
  %16 = phi ptr [ %77, %74 ], [ %13, %8 ]
  %17 = phi i32 [ %75, %74 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %70
  %26 = phi i64 [ 0, %21 ], [ %72, %70 ]
  %27 = phi i32 [ %17, %21 ], [ %71, %70 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %66
  %38 = phi i64 [ 0, %33 ], [ %68, %66 ]
  %39 = phi i32 [ %27, %33 ], [ %67, %66 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !151
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = shl nsw i32 %39, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %2, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  store double %48, ptr %49, align 8, !tbaa !54
  %50 = or disjoint i32 %45, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %2, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  store double %53, ptr %54, align 8, !tbaa !54
  %55 = or disjoint i32 %45, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %2, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  store double %58, ptr %59, align 8, !tbaa !54
  %60 = or disjoint i32 %45, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %2, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !54
  %64 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 18
  store double %63, ptr %64, align 8, !tbaa !177
  %65 = add nsw i32 %39, 1
  br label %66

66:                                               ; preds = %37, %44
  %67 = phi i32 [ %65, %44 ], [ %39, %37 ]
  %68 = add nuw nsw i64 %38, 1
  %69 = icmp eq i64 %68, %36
  br i1 %69, label %70, label %37, !llvm.loop !184

70:                                               ; preds = %66, %25
  %71 = phi i32 [ %27, %25 ], [ %67, %66 ]
  %72 = add nuw nsw i64 %26, 1
  %73 = icmp eq i64 %72, %24
  br i1 %73, label %74, label %25, !llvm.loop !185

74:                                               ; preds = %70, %15
  %75 = phi i32 [ %17, %15 ], [ %71, %70 ]
  %76 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %15, !llvm.loop !186

79:                                               ; preds = %74, %8
  %80 = phi i32 [ 0, %8 ], [ %75, %74 ]
  ret i32 %80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @NAB_ainit(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !66 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %6, i1 false), !tbaa !91
  br label %7

7:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NAB_initres(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !187 {
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br i1 %3, label %6, label %4, !prof !188

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %9 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 12
  store ptr null, ptr %9, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 13
  store i32 0, ptr %10, align 8, !tbaa !189
  %11 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NAB_initatom(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !190 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4, !prof !191

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  store double 1.000000e+00, ptr %6, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 16
  store ptr null, ptr %8, align 8, !tbaa !84
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 72, i1 false)
  store double 1.000000e+00, ptr %11, align 8, !tbaa !192
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 11
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @NAB_mnext(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !193 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %23, !prof !194

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8, !prof !110

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !53

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %86, label %8, !prof !195, !llvm.loop !196

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  br label %86

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.atom_t, ptr %1, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = ptrtoint ptr %1 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 176
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !79
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %40, !prof !198

37:                                               ; preds = %23
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds %struct.atom_t, ptr %27, i64 %38
  br label %86

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  %43 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !89
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %62, !prof !199

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = zext nneg i32 %44 to i64
  br label %50

50:                                               ; preds = %46, %55
  %51 = phi i64 [ 0, %46 ], [ %56, %55 ]
  %52 = getelementptr inbounds ptr, ptr %48, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = icmp eq ptr %53, %25
  br i1 %54, label %58, label %55, !prof !200

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %49
  br i1 %57, label %62, label %50, !prof !201, !llvm.loop !202

58:                                               ; preds = %50
  %59 = trunc i64 %51 to i32
  %60 = add nuw nsw i32 %59, 1
  %61 = icmp slt i32 %60, %44
  br i1 %61, label %63, label %62, !prof !203

62:                                               ; preds = %55, %40, %58
  br label %71

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  %66 = sext i32 %60 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  %69 = getelementptr inbounds %struct.residue_t, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !78
  br label %86

71:                                               ; preds = %62, %76
  %72 = phi ptr [ %74, %76 ], [ %42, %62 ]
  %73 = getelementptr inbounds %struct.strand_t, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !86
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76, !prof !106

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.strand_t, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !89
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %71, label %80, !prof !102, !llvm.loop !204

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.strand_t, ptr %74, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !90
  %83 = load ptr, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.residue_t, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !78
  br label %86

86:                                               ; preds = %71, %13, %4, %80, %63, %37, %17
  %87 = phi ptr [ %39, %37 ], [ %70, %63 ], [ %85, %80 ], [ %22, %17 ], [ null, %4 ], [ null, %13 ], [ null, %71 ]
  ret ptr %87
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @NAB_rnext(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !66 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %8, !llvm.loop !205

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  br label %60

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.residue_t, ptr %1, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !117
  %23 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !89
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = zext nneg i32 %24 to i64
  br label %30

30:                                               ; preds = %26, %35
  %31 = phi i64 [ 0, %26 ], [ %36, %35 ]
  %32 = getelementptr inbounds ptr, ptr %28, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %29
  br i1 %37, label %42, label %30, !llvm.loop !206

38:                                               ; preds = %30
  %39 = trunc i64 %31 to i32
  %40 = add nuw nsw i32 %39, 1
  %41 = icmp slt i32 %40, %24
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %20, %38
  br label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  br label %60

48:                                               ; preds = %42, %53
  %49 = phi ptr [ %51, %53 ], [ %22, %42 ]
  %50 = getelementptr inbounds %struct.strand_t, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.strand_t, ptr %51, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !89
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %48, label %57, !llvm.loop !207

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.strand_t, ptr %51, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  br label %60

60:                                               ; preds = %17, %43, %57
  %61 = phi ptr [ %59, %57 ], [ %47, %43 ], [ %19, %17 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  br label %63

63:                                               ; preds = %48, %13, %60, %4
  %64 = phi ptr [ null, %4 ], [ %62, %60 ], [ null, %13 ], [ null, %48 ]
  ret ptr %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @NAB_anext(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !66 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  br i1 %3, label %19, label %6

6:                                                ; preds = %2
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 176
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.atom_t, ptr %5, i64 %17
  br label %19

19:                                               ; preds = %2, %6, %16
  %20 = phi ptr [ %18, %16 ], [ null, %6 ], [ %5, %2 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @NAB_mri(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !66 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.25) #37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @upd_molnumbers(ptr noundef nonnull %0) #36
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  br label %35

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.26) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @upd_molnumbers(ptr noundef nonnull %0) #36
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  br label %35

22:                                               ; preds = %12
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.27) #37
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @upd_molnumbers(ptr noundef nonnull %0) #36
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 4
  br label %35

32:                                               ; preds = %22
  %33 = load ptr, ptr @stderr, align 8, !tbaa !91
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.28, ptr noundef %1) #38
  br label %35

35:                                               ; preds = %32, %30, %20, %10
  %36 = phi ptr [ null, %32 ], [ %31, %30 ], [ %21, %20 ], [ %11, %10 ]
  ret ptr %36
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local nonnull ptr @NAB_rri(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !66 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.29) #37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.strand_t, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.molecule_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @upd_molnumbers(ptr noundef nonnull %9) #36
  br label %14

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 3
  br label %47

16:                                               ; preds = %2
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.30) #37
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !117
  %22 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.molecule_t, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @upd_molnumbers(ptr noundef nonnull %23) #36
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 2
  br label %47

30:                                               ; preds = %16
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.31) #37
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  %38 = getelementptr inbounds %struct.molecule_t, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  tail call void @upd_molnumbers(ptr noundef nonnull %37) #36
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 1
  br label %47

44:                                               ; preds = %30
  %45 = load ptr, ptr @stderr, align 8, !tbaa !91
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.32, ptr noundef %1) #38
  store i32 0, ptr @NAB_rri.rv_err, align 4, !tbaa !159
  br label %47

47:                                               ; preds = %44, %42, %28, %14
  %48 = phi ptr [ @NAB_rri.rv_err, %44 ], [ %43, %42 ], [ %29, %28 ], [ %15, %14 ]
  ret ptr %48
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @NAB_rrc(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !66 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.33) #37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  br label %21

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.34) #37
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  br label %21

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.35) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr @stderr, align 8, !tbaa !91
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.36, ptr noundef %1) #38
  br label %21

21:                                               ; preds = %18, %15, %10, %5
  %22 = phi ptr [ null, %18 ], [ %17, %15 ], [ %11, %10 ], [ %6, %5 ]
  ret ptr %22
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local nonnull ptr @NAB_ari(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !66 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.31) #37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.residue_t, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @upd_molnumbers(ptr noundef nonnull %11) #36
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 1
  br label %90

18:                                               ; preds = %2
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.29) #37
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  %26 = getelementptr inbounds %struct.strand_t, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.molecule_t, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !64
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  tail call void @upd_molnumbers(ptr noundef nonnull %27) #36
  br label %32

32:                                               ; preds = %31, %21
  %33 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 3
  br label %90

34:                                               ; preds = %18
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.30) #37
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = getelementptr inbounds %struct.residue_t, ptr %39, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = getelementptr inbounds %struct.strand_t, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  %44 = getelementptr inbounds %struct.molecule_t, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  tail call void @upd_molnumbers(ptr noundef nonnull %43) #36
  br label %48

48:                                               ; preds = %47, %37
  %49 = getelementptr inbounds %struct.residue_t, ptr %39, i64 0, i32 2
  br label %90

50:                                               ; preds = %34
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.37) #37
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !197
  %56 = getelementptr inbounds %struct.residue_t, ptr %55, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !117
  %58 = getelementptr inbounds %struct.strand_t, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !105
  %60 = getelementptr inbounds %struct.molecule_t, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  tail call void @upd_molnumbers(ptr noundef nonnull %59) #36
  br label %64

64:                                               ; preds = %63, %53
  %65 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 15
  br label %90

66:                                               ; preds = %50
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.38) #37
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !197
  %72 = getelementptr inbounds %struct.residue_t, ptr %71, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !117
  %74 = getelementptr inbounds %struct.strand_t, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !105
  %76 = getelementptr inbounds %struct.molecule_t, ptr %75, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  tail call void @upd_molnumbers(ptr noundef nonnull %75) #36
  br label %80

80:                                               ; preds = %79, %69
  %81 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 14
  br label %90

82:                                               ; preds = %66
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.39) #37
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 11
  br label %90

87:                                               ; preds = %82
  %88 = load ptr, ptr @stderr, align 8, !tbaa !91
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.40, ptr noundef %1) #38
  store i32 0, ptr @NAB_ari.rv_err, align 4, !tbaa !159
  br label %90

90:                                               ; preds = %87, %85, %80, %64, %48, %32, %16
  %91 = phi ptr [ @NAB_ari.rv_err, %87 ], [ %86, %85 ], [ %81, %80 ], [ %65, %64 ], [ %49, %48 ], [ %33, %32 ], [ %17, %16 ]
  ret ptr %91
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local nonnull ptr @NAB_arf(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #13 !prof !66 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.41) #37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  br label %40

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.42) #37
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 1
  br label %40

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.43) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 2
  br label %40

17:                                               ; preds = %12
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.44) #37
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 6
  br label %40

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.45) #37
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 7
  br label %40

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.46) #37
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 12
  br label %40

32:                                               ; preds = %27
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.47) #37
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 13
  br label %40

37:                                               ; preds = %32
  %38 = load ptr, ptr @stderr, align 8, !tbaa !91
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.48, ptr noundef %1) #38
  store double 0.000000e+00, ptr @NAB_arf.f, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %37, %35, %30, %25, %20, %15, %10, %5
  %41 = phi ptr [ @NAB_arf.f, %37 ], [ %36, %35 ], [ %31, %30 ], [ %26, %25 ], [ %21, %20 ], [ %16, %15 ], [ %11, %10 ], [ %6, %5 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @NAB_arc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #39
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.49) #37
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.33) #37
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds %struct.residue_t, ptr %11, i64 0, i32 4
  br label %88

13:                                               ; preds = %6
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.34) #37
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = getelementptr inbounds %struct.residue_t, ptr %18, i64 0, i32 5
  br label %88

20:                                               ; preds = %13
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.35) #37
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  br label %88

28:                                               ; preds = %20
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.50) #37
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !197
  %34 = getelementptr inbounds %struct.residue_t, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  tail call void @upd_molnumbers(ptr noundef %37) #36
  %38 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !89
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = zext nneg i32 %39 to i64
  br label %45

45:                                               ; preds = %41, %50
  %46 = phi i64 [ 0, %41 ], [ %51, %50 ]
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !91
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %55, label %45, !llvm.loop !208

53:                                               ; preds = %45
  %54 = trunc i64 %46 to i32
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi i32 [ %54, %53 ], [ %39, %50 ]
  %57 = add nuw nsw i32 %56, 1
  br label %58

58:                                               ; preds = %55, %31
  %59 = phi i32 [ 1, %31 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.molecule_t, ptr %37, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !91
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %67

63:                                               ; preds = %67
  %64 = getelementptr inbounds %struct.strand_t, ptr %68, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !llvm.loop !209

67:                                               ; preds = %58, %63
  %68 = phi ptr [ %65, %63 ], [ %61, %58 ]
  %69 = phi i32 [ %70, %63 ], [ 0, %58 ]
  %70 = add nuw nsw i32 %69, 1
  %71 = icmp eq ptr %68, %35
  br i1 %71, label %72, label %63

72:                                               ; preds = %63, %67, %58
  %73 = phi i32 [ 0, %58 ], [ %70, %67 ], [ %70, %63 ]
  %74 = load ptr, ptr %0, align 8, !tbaa !80
  %75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %73, i32 noundef %59, ptr noundef %74) #35
  %76 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 16
  %77 = load ptr, ptr %76, align 8, !tbaa !84
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  tail call void @free(ptr noundef nonnull %77) #35
  br label %80

80:                                               ; preds = %79, %72
  %81 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #37
  %82 = add i64 %81, 1
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #34
  store ptr %83, ptr %76, align 8, !tbaa !84
  %84 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %3) #35
  br label %88

85:                                               ; preds = %28
  %86 = load ptr, ptr @stderr, align 8, !tbaa !91
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.52, ptr noundef %1) #38
  br label %88

88:                                               ; preds = %2, %85, %80, %23, %16, %9
  %89 = phi ptr [ null, %85 ], [ %76, %80 ], [ %27, %23 ], [ %19, %16 ], [ %12, %9 ], [ %0, %2 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #39
  ret ptr %89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @NAB_arp(ptr noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #19 !prof !66 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @newtransform(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #20 !prof !66 {
  %7 = alloca [4 x [4 x double]], align 16
  %8 = alloca [4 x [4 x double]], align 16
  %9 = alloca [4 x [4 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #39
  tail call fastcc void @mk_idmat(ptr noundef nonnull @newtransform.mp) #36
  store double %0, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3), align 16, !tbaa !54
  store double %1, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3, i64 1), align 8, !tbaa !54
  store double %2, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3, i64 2), align 16, !tbaa !54
  call fastcc void @mk_idmat(ptr noundef nonnull %7) #36
  %10 = fcmp une double %3, 0.000000e+00
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  call fastcc void @mk_idmat(ptr noundef nonnull %8) #36
  %12 = fmul double %3, 0x3F91DF46A2529D39
  %13 = tail call double @cos(double noundef %12) #35
  %14 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %13, ptr %14, align 8, !tbaa !54
  %15 = tail call double @sin(double noundef %12) #35
  %16 = fneg double %15
  %17 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 2
  store double %16, ptr %17, align 16, !tbaa !54
  %18 = tail call double @sin(double noundef %12) #35
  %19 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 1
  store double %18, ptr %19, align 8, !tbaa !54
  %20 = tail call double @cos(double noundef %12) #35
  %21 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 2
  store double %20, ptr %21, align 16, !tbaa !54
  call fastcc void @concat_mat(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #36
  call fastcc void @copy_mat(ptr noundef nonnull %9, ptr noundef nonnull %7) #36
  br label %22

22:                                               ; preds = %11, %6
  %23 = fcmp une double %4, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  call fastcc void @mk_idmat(ptr noundef nonnull %8) #36
  %25 = fmul double %4, 0x3F91DF46A2529D39
  %26 = tail call double @cos(double noundef %25) #35
  store double %26, ptr %7, align 16, !tbaa !54
  %27 = tail call double @sin(double noundef %25) #35
  %28 = fneg double %27
  %29 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 2
  store double %28, ptr %29, align 16, !tbaa !54
  %30 = tail call double @sin(double noundef %25) #35
  %31 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2
  store double %30, ptr %31, align 16, !tbaa !54
  %32 = tail call double @cos(double noundef %25) #35
  %33 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 2
  store double %32, ptr %33, align 16, !tbaa !54
  call fastcc void @concat_mat(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #36
  call fastcc void @copy_mat(ptr noundef nonnull %9, ptr noundef nonnull %7) #36
  br label %34

34:                                               ; preds = %24, %22
  %35 = fcmp une double %5, 0.000000e+00
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  call fastcc void @mk_idmat(ptr noundef nonnull %8) #36
  %37 = fmul double %5, 0xBF91DF46A2529D39
  %38 = tail call double @cos(double noundef %37) #35
  store double %38, ptr %7, align 16, !tbaa !54
  %39 = tail call double @sin(double noundef %37) #35
  %40 = fneg double %39
  %41 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 1
  store double %40, ptr %41, align 8, !tbaa !54
  %42 = tail call double @sin(double noundef %37) #35
  %43 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1
  store double %42, ptr %43, align 16, !tbaa !54
  %44 = tail call double @cos(double noundef %37) #35
  %45 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %44, ptr %45, align 8, !tbaa !54
  call fastcc void @concat_mat(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #36
  call fastcc void @copy_mat(ptr noundef nonnull %9, ptr noundef nonnull %7) #36
  br label %46

46:                                               ; preds = %36, %34
  call fastcc void @concat_mat(ptr noundef nonnull %7, ptr noundef nonnull @newtransform.mp, ptr noundef nonnull %9) #36
  call fastcc void @copy_mat(ptr noundef nonnull %9, ptr noundef nonnull @newtransform.mp) #36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #39
  ret ptr @newtransform.mp
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @mk_idmat(ptr nocapture noundef writeonly %0) unnamed_addr #21 !prof !66 !PGOFuncName !210 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i64 [ 0, %1 ], [ %16, %15 ]
  %4 = insertelement <2 x i64> poison, i64 %3, i64 0
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %8 = phi <2 x i64> [ <i64 0, i64 1>, %2 ], [ %13, %6 ]
  %9 = icmp eq <2 x i64> %5, %8
  %10 = select <2 x i1> %9, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer
  %11 = getelementptr inbounds [4 x double], ptr %0, i64 %3, i64 %7
  store <2 x double> %10, ptr %11, align 8, !tbaa !54
  %12 = add nuw i64 %7, 2
  %13 = add <2 x i64> %8, <i64 2, i64 2>
  %14 = icmp eq i64 %12, 4
  br i1 %14, label %15, label %6, !llvm.loop !211

15:                                               ; preds = %6
  %16 = add nuw nsw i64 %3, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %2, !llvm.loop !214

18:                                               ; preds = %15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @concat_mat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #22 !prof !66 !PGOFuncName !215 {
  br label %4

4:                                                ; preds = %3, %22
  %5 = phi i64 [ 0, %3 ], [ %23, %22 ]
  br label %6

6:                                                ; preds = %4, %19
  %7 = phi i64 [ 0, %4 ], [ %20, %19 ]
  %8 = getelementptr inbounds [4 x double], ptr %2, i64 %5, i64 %7
  store double 0.000000e+00, ptr %8, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi double [ 0.000000e+00, %6 ], [ %16, %9 ]
  %12 = getelementptr inbounds [4 x double], ptr %0, i64 %5, i64 %10
  %13 = load double, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds [4 x double], ptr %1, i64 %10, i64 %7
  %15 = load double, ptr %14, align 8, !tbaa !54
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  store double %16, ptr %8, align 8, !tbaa !54
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %9, !llvm.loop !216

19:                                               ; preds = %9
  %20 = add nuw nsw i64 %7, 1
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %6, !llvm.loop !217

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %5, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %4, !llvm.loop !218

25:                                               ; preds = %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @copy_mat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #22 !prof !66 !PGOFuncName !219 {
  br label %3

3:                                                ; preds = %2, %12
  %4 = phi i64 [ 0, %2 ], [ %13, %12 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %10, %5 ]
  %7 = getelementptr inbounds [4 x double], ptr %0, i64 %4, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds [4 x double], ptr %1, i64 %4, i64 %6
  store double %8, ptr %9, align 8, !tbaa !54
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !220

12:                                               ; preds = %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %15, label %3, !llvm.loop !221

15:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @transformres(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  %6 = tail call ptr @copyresidue(ptr noundef %1) #35
  %7 = getelementptr inbounds %struct.residue_t, ptr %6, i64 0, i32 15
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.residue_t, ptr %6, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %12, i64 144
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i64 [ 0, %10 ], [ %19, %15 ]
  %17 = mul nuw nsw i64 %16, 176
  %18 = getelementptr i8, ptr %14, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa !54
  call fastcc void @xfm_xyz(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !54
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %15, !llvm.loop !222

21:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @xfm_xyz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #22 !prof !66 !PGOFuncName !223 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa !54
  %6 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  store double 1.000000e+00, ptr %6, align 8, !tbaa !54
  br label %7

7:                                                ; preds = %3, %20
  %8 = phi i64 [ 0, %3 ], [ %21, %20 ]
  %9 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 %8
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi double [ 0.000000e+00, %7 ], [ %17, %10 ]
  %13 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds [4 x double], ptr %1, i64 %11, i64 %8
  %16 = load double, ptr %15, align 8, !tbaa !54
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %16, double %12)
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %10, !llvm.loop !224

20:                                               ; preds = %10
  store double %17, ptr %9, align 8, !tbaa !54
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %23, label %7, !llvm.loop !225

23:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @transformmol(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  %6 = tail call i32 @select_atoms(ptr noundef %1, ptr noundef %2) #35
  %7 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %3, %52
  %11 = phi ptr [ %55, %52 ], [ %8, %3 ]
  %12 = phi i32 [ %53, %52 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !89
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = zext nneg i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %48
  %21 = phi i64 [ 0, %16 ], [ %50, %48 ]
  %22 = phi i32 [ %12, %16 ], [ %49, %48 ]
  %23 = getelementptr inbounds ptr, ptr %18, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr i8, ptr %30, i64 144
  br label %33

33:                                               ; preds = %28, %44
  %34 = phi i64 [ 0, %28 ], [ %46, %44 ]
  %35 = phi i32 [ %22, %28 ], [ %45, %44 ]
  %36 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %34, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !151
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = mul nuw nsw i64 %34, 176
  %42 = getelementptr i8, ptr %32, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !tbaa !54
  call fastcc void @xfm_xyz(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !54
  %43 = add nsw i32 %35, 1
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i32 [ %35, %33 ], [ %43, %40 ]
  %46 = add nuw nsw i64 %34, 1
  %47 = icmp eq i64 %46, %31
  br i1 %47, label %48, label %33, !llvm.loop !226

48:                                               ; preds = %44, %20
  %49 = phi i32 [ %22, %20 ], [ %45, %44 ]
  %50 = add nuw nsw i64 %21, 1
  %51 = icmp eq i64 %50, %19
  br i1 %51, label %52, label %20, !llvm.loop !227

52:                                               ; preds = %48, %10
  %53 = phi i32 [ %12, %10 ], [ %49, %48 ]
  %54 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !91
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %10, !llvm.loop !228

57:                                               ; preds = %52, %3
  %58 = phi i32 [ 0, %3 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  ret i32 %58
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef i32 @transformpts(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #22 !prof !66 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 %8
  tail call fastcc void @xfm_xyz(ptr noundef %9, ptr noundef %0, ptr noundef %9) #36
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, %6
  br i1 %11, label %12, label %7, !llvm.loop !229

12:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @updtransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !66 {
  tail call fastcc void @concat_mat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @updtransform.mr) #36
  ret ptr @updtransform.mr
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @trans4p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #23 !prof !66 {
  %4 = load double, ptr %1, align 8, !tbaa !54
  %5 = load double, ptr %0, align 8, !tbaa !54
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !54
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !54
  %16 = fsub double %13, %15
  %17 = fmul double %11, %11
  %18 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %18)
  %20 = tail call double @llvm.sqrt.f64(double %19)
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = tail call ptr @newtransform(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #36
  br label %32

24:                                               ; preds = %3
  %25 = fdiv double %6, %20
  %26 = fdiv double %11, %20
  %27 = fdiv double %16, %20
  %28 = fmul double %25, %2
  %29 = fmul double %26, %2
  %30 = fmul double %27, %2
  %31 = tail call ptr @newtransform(double noundef %28, double noundef %29, double noundef %30, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #36
  br label %32

32:                                               ; preds = %24, %22
  %33 = tail call ptr @NAB_matcpy(ptr noundef nonnull @trans4p.mat, ptr noundef nonnull @newtransform.mp) #36
  ret ptr @trans4p.mat
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @NAB_matcpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #24 !prof !66 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %1, i64 128, i1 false)
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @trans4(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %9 = call ptr @trans4p(ptr noundef nonnull %5, ptr noundef nonnull %6, double noundef %3) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  ret ptr @trans4p.mat
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @rot4p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [4 x [4 x double]], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x double]], align 16
  %7 = alloca [4 x [4 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #39
  %8 = load double, ptr %0, align 8, !tbaa !54
  %9 = fneg double %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !54
  %12 = fneg double %11
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = fneg double %14
  %16 = tail call ptr @newtransform(double noundef %9, double noundef %12, double noundef %15, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #36
  %17 = call ptr @NAB_matcpy(ptr noundef nonnull %4, ptr noundef nonnull @newtransform.mp) #36
  %18 = load double, ptr %1, align 8, !tbaa !54
  %19 = load double, ptr %0, align 8, !tbaa !54
  %20 = fsub double %18, %19
  %21 = getelementptr inbounds double, ptr %1, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !54
  %23 = load double, ptr %10, align 8, !tbaa !54
  %24 = fsub double %22, %23
  %25 = getelementptr inbounds double, ptr %1, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !54
  %27 = load double, ptr %13, align 8, !tbaa !54
  %28 = fsub double %26, %27
  %29 = fneg double %2
  call fastcc void @raa2mat(double noundef %20, double noundef %24, double noundef %28, double noundef %29, ptr noundef nonnull %5) #36
  %30 = load double, ptr %0, align 8, !tbaa !54
  %31 = load double, ptr %10, align 8, !tbaa !54
  %32 = load double, ptr %13, align 8, !tbaa !54
  %33 = call ptr @newtransform(double noundef %30, double noundef %31, double noundef %32, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #36
  %34 = call ptr @NAB_matcpy(ptr noundef nonnull %6, ptr noundef nonnull @newtransform.mp) #36
  call fastcc void @concat_mat(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #36
  call fastcc void @concat_mat(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull @rot4p.mat5) #36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39
  ret ptr @rot4p.mat5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @raa2mat(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !66 !PGOFuncName !230 {
  %6 = tail call double @hypot(double noundef %0, double noundef %1) #35
  %7 = tail call double @hypot(double noundef %6, double noundef %2) #35
  %8 = fcmp oeq double %7, 0.000000e+00
  %9 = insertelement <2 x double> poison, double %1, i64 0
  %10 = insertelement <2 x double> %9, double %2, i64 1
  %11 = select i1 %8, double 1.000000e+00, double %7
  %12 = select i1 %8, double 0.000000e+00, double %0
  %13 = select i1 %8, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %10
  %14 = fdiv double %12, %11
  %15 = insertelement <2 x double> poison, double %11, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fdiv <2 x double> %13, %16
  %18 = fmul double %14, %14
  %19 = extractelement <2 x double> %17, i64 0
  %20 = fmul <2 x double> %17, %17
  %21 = extractelement <2 x double> %20, i64 0
  %22 = extractelement <2 x double> %17, i64 1
  %23 = fmul double %22, %19
  %24 = fmul double %22, %22
  %25 = fmul double %3, 0x3F91DF46A2529D39
  %26 = tail call double @sin(double noundef %25) #35
  %27 = tail call double @cos(double noundef %25) #35
  %28 = fmul double %26, %14
  %29 = fsub double 1.000000e+00, %18
  %30 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %18)
  store double %30, ptr %4, align 8, !tbaa !54
  %31 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 1
  %32 = insertelement <2 x double> poison, double %14, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = fmul <2 x double> %17, %33
  %35 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %36 = insertelement <2 x double> poison, double %26, i64 0
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %38 = fmul <2 x double> %35, %37
  %39 = insertelement <2 x double> poison, double %27, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x double> %40, %34
  %42 = fsub <2 x double> %34, %41
  %43 = fsub <2 x double> %42, %38
  %44 = fadd <2 x double> %42, %38
  %45 = shufflevector <2 x double> %43, <2 x double> %44, <2 x i32> <i32 0, i32 3>
  store <2 x double> %45, ptr %31, align 8, !tbaa !54
  %46 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  store double 0.000000e+00, ptr %46, align 8, !tbaa !54
  %47 = fadd <2 x double> %38, %42
  %48 = extractelement <2 x double> %47, i64 0
  %49 = getelementptr inbounds [4 x double], ptr %4, i64 1
  store double %48, ptr %49, align 8, !tbaa !54
  %50 = fsub double 1.000000e+00, %21
  %51 = tail call double @llvm.fmuladd.f64(double %27, double %50, double %21)
  %52 = getelementptr inbounds [4 x double], ptr %4, i64 1, i64 1
  store double %51, ptr %52, align 8, !tbaa !54
  %53 = fmul double %23, %27
  %54 = fsub double %23, %53
  %55 = fsub double %54, %28
  %56 = getelementptr inbounds [4 x double], ptr %4, i64 1, i64 2
  store double %55, ptr %56, align 8, !tbaa !54
  %57 = getelementptr inbounds [4 x double], ptr %4, i64 1, i64 3
  store double 0.000000e+00, ptr %57, align 8, !tbaa !54
  %58 = fsub <2 x double> %42, %38
  %59 = extractelement <2 x double> %58, i64 1
  %60 = getelementptr inbounds [4 x double], ptr %4, i64 2
  store double %59, ptr %60, align 8, !tbaa !54
  %61 = fadd double %28, %54
  %62 = getelementptr inbounds [4 x double], ptr %4, i64 2, i64 1
  store double %61, ptr %62, align 8, !tbaa !54
  %63 = fsub double 1.000000e+00, %24
  %64 = tail call double @llvm.fmuladd.f64(double %27, double %63, double %24)
  %65 = getelementptr inbounds [4 x double], ptr %4, i64 2, i64 2
  store double %64, ptr %65, align 8, !tbaa !54
  %66 = getelementptr inbounds [4 x double], ptr %4, i64 2, i64 3
  %67 = getelementptr inbounds [4 x double], ptr %4, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %66, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %67, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @rot4(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %9 = call ptr @rot4p(ptr noundef nonnull %5, ptr noundef nonnull %6, double noundef %3) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  ret ptr @rot4p.mat5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !99 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8, !prof !231

8:                                                ; preds = %3, %61
  %9 = phi ptr [ %65, %61 ], [ %6, %3 ]
  %10 = phi i32 [ %63, %61 ], [ 0, %3 ]
  %11 = phi i32 [ %62, %61 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61, !prof !232

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  br label %18

18:                                               ; preds = %15, %54
  %19 = phi i32 [ %13, %15 ], [ %55, %54 ]
  %20 = phi i64 [ 0, %15 ], [ %58, %54 ]
  %21 = phi i32 [ %10, %15 ], [ %57, %54 ]
  %22 = phi i32 [ %11, %15 ], [ %56, %54 ]
  %23 = getelementptr inbounds ptr, ptr %17, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %54, !prof !233

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = sext i32 %22 to i64
  br label %32

32:                                               ; preds = %28, %42
  %33 = phi i64 [ 0, %28 ], [ %47, %42 ]
  %34 = phi i64 [ %31, %28 ], [ %46, %42 ]
  %35 = phi i32 [ %21, %28 ], [ %44, %42 ]
  %36 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %33, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !151
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42, !prof !234

40:                                               ; preds = %32
  %41 = add nsw i32 %35, 1
  br label %42

42:                                               ; preds = %32, %40
  %43 = phi i32 [ 1, %40 ], [ 0, %32 ]
  %44 = phi i32 [ %41, %40 ], [ %35, %32 ]
  %45 = getelementptr inbounds i32, ptr %2, i64 %34
  store i32 %43, ptr %45, align 4
  %46 = add nsw i64 %34, 1
  %47 = add nuw nsw i64 %33, 1
  %48 = load i32, ptr %25, align 8, !tbaa !79
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %32, label %51, !prof !235, !llvm.loop !236

51:                                               ; preds = %42
  %52 = trunc i64 %46 to i32
  %53 = load i32, ptr %12, align 8, !tbaa !89
  br label %54

54:                                               ; preds = %51, %18
  %55 = phi i32 [ %19, %18 ], [ %53, %51 ]
  %56 = phi i32 [ %22, %18 ], [ %52, %51 ]
  %57 = phi i32 [ %21, %18 ], [ %44, %51 ]
  %58 = add nuw nsw i64 %20, 1
  %59 = sext i32 %55 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %18, label %61, !prof !237, !llvm.loop !238

61:                                               ; preds = %54, %8
  %62 = phi i32 [ %11, %8 ], [ %56, %54 ]
  %63 = phi i32 [ %10, %8 ], [ %57, %54 ]
  %64 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %8, !prof !239, !llvm.loop !240

67:                                               ; preds = %61, %3
  %68 = phi i32 [ 0, %3 ], [ %63, %61 ]
  %69 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = icmp eq ptr %70, null
  br i1 %71, label %527, label %72, !prof !102

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !241
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %119, !prof !169

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 66
  %78 = load ptr, ptr %77, align 8, !tbaa !242
  %79 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 67
  %80 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 68
  %81 = load ptr, ptr %79, align 8, !tbaa !243
  br label %82

82:                                               ; preds = %76, %113
  %83 = phi i32 [ %74, %76 ], [ %114, %113 ]
  %84 = phi i64 [ 0, %76 ], [ %116, %113 ]
  %85 = phi i32 [ 0, %76 ], [ %115, %113 ]
  %86 = getelementptr inbounds i32, ptr %78, i64 %84
  %87 = load i32, ptr %86, align 4, !tbaa !159
  %88 = sdiv i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %2, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !159
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93, !prof !244

93:                                               ; preds = %82
  %94 = getelementptr inbounds i32, ptr %81, i64 %84
  %95 = load i32, ptr %94, align 4, !tbaa !159
  %96 = sdiv i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %2, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !159
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %93, %82
  %102 = sext i32 %85 to i64
  %103 = getelementptr inbounds i32, ptr %78, i64 %102
  store i32 %87, ptr %103, align 4, !tbaa !159
  %104 = getelementptr inbounds i32, ptr %81, i64 %84
  %105 = load i32, ptr %104, align 4, !tbaa !159
  %106 = getelementptr inbounds i32, ptr %81, i64 %102
  store i32 %105, ptr %106, align 4, !tbaa !159
  %107 = load ptr, ptr %80, align 8, !tbaa !245
  %108 = getelementptr inbounds i32, ptr %107, i64 %84
  %109 = load i32, ptr %108, align 4, !tbaa !159
  %110 = getelementptr inbounds i32, ptr %107, i64 %102
  store i32 %109, ptr %110, align 4, !tbaa !159
  %111 = add nsw i32 %85, 1
  %112 = load i32, ptr %73, align 8, !tbaa !241
  br label %113

113:                                              ; preds = %93, %101
  %114 = phi i32 [ %83, %93 ], [ %112, %101 ]
  %115 = phi i32 [ %85, %93 ], [ %111, %101 ]
  %116 = add nuw nsw i64 %84, 1
  %117 = sext i32 %114 to i64
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %82, label %119, !prof !246, !llvm.loop !247

119:                                              ; preds = %113, %72
  %120 = phi i32 [ 0, %72 ], [ %115, %113 ]
  store i32 %120, ptr %73, align 8, !tbaa !241
  %121 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 16
  %122 = load i32, ptr %121, align 8, !tbaa !248
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %167, !prof !169

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 69
  %126 = load ptr, ptr %125, align 8, !tbaa !249
  %127 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 70
  %128 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 71
  %129 = load ptr, ptr %127, align 8, !tbaa !250
  br label %130

130:                                              ; preds = %124, %161
  %131 = phi i32 [ %122, %124 ], [ %162, %161 ]
  %132 = phi i64 [ 0, %124 ], [ %164, %161 ]
  %133 = phi i32 [ 0, %124 ], [ %163, %161 ]
  %134 = getelementptr inbounds i32, ptr %126, i64 %132
  %135 = load i32, ptr %134, align 4, !tbaa !159
  %136 = sdiv i32 %135, 3
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %2, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !159
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141, !prof !251

141:                                              ; preds = %130
  %142 = getelementptr inbounds i32, ptr %129, i64 %132
  %143 = load i32, ptr %142, align 4, !tbaa !159
  %144 = sdiv i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %2, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !159
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %141, %130
  %150 = sext i32 %133 to i64
  %151 = getelementptr inbounds i32, ptr %126, i64 %150
  store i32 %135, ptr %151, align 4, !tbaa !159
  %152 = getelementptr inbounds i32, ptr %129, i64 %132
  %153 = load i32, ptr %152, align 4, !tbaa !159
  %154 = getelementptr inbounds i32, ptr %129, i64 %150
  store i32 %153, ptr %154, align 4, !tbaa !159
  %155 = load ptr, ptr %128, align 8, !tbaa !252
  %156 = getelementptr inbounds i32, ptr %155, i64 %132
  %157 = load i32, ptr %156, align 4, !tbaa !159
  %158 = getelementptr inbounds i32, ptr %155, i64 %150
  store i32 %157, ptr %158, align 4, !tbaa !159
  %159 = add nsw i32 %133, 1
  %160 = load i32, ptr %121, align 8, !tbaa !248
  br label %161

161:                                              ; preds = %141, %149
  %162 = phi i32 [ %131, %141 ], [ %160, %149 ]
  %163 = phi i32 [ %133, %141 ], [ %159, %149 ]
  %164 = add nuw nsw i64 %132, 1
  %165 = sext i32 %162 to i64
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %130, label %167, !prof !253, !llvm.loop !254

167:                                              ; preds = %161, %119
  %168 = phi i32 [ 0, %119 ], [ %163, %161 ]
  store i32 %168, ptr %121, align 8, !tbaa !248
  %169 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 7
  store i32 %168, ptr %169, align 4, !tbaa !255
  %170 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 8
  %171 = load i32, ptr %170, align 8, !tbaa !256
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %228, !prof !169

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 72
  %175 = load ptr, ptr %174, align 8, !tbaa !257
  %176 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 73
  %177 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 74
  %178 = load ptr, ptr %177, align 8, !tbaa !258
  %179 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 75
  %180 = load ptr, ptr %176, align 8, !tbaa !259
  br label %181

181:                                              ; preds = %173, %222
  %182 = phi i32 [ %171, %173 ], [ %223, %222 ]
  %183 = phi i64 [ 0, %173 ], [ %225, %222 ]
  %184 = phi i32 [ 0, %173 ], [ %224, %222 ]
  %185 = getelementptr inbounds i32, ptr %175, i64 %183
  %186 = load i32, ptr %185, align 4, !tbaa !159
  %187 = sdiv i32 %186, 3
  %188 = getelementptr inbounds i32, ptr %178, i64 %183
  %189 = load i32, ptr %188, align 4, !tbaa !159
  %190 = sdiv i32 %189, 3
  %191 = sext i32 %187 to i64
  %192 = getelementptr inbounds i32, ptr %2, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !159
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %208, label %195, !prof !260

195:                                              ; preds = %181
  %196 = getelementptr inbounds i32, ptr %180, i64 %183
  %197 = load i32, ptr %196, align 4, !tbaa !159
  %198 = sdiv i32 %197, 3
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %2, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !159
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %195
  %204 = sext i32 %190 to i64
  %205 = getelementptr inbounds i32, ptr %2, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !159
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %203, %195, %181
  %209 = sext i32 %184 to i64
  %210 = getelementptr inbounds i32, ptr %175, i64 %209
  store i32 %186, ptr %210, align 4, !tbaa !159
  %211 = getelementptr inbounds i32, ptr %180, i64 %183
  %212 = load i32, ptr %211, align 4, !tbaa !159
  %213 = getelementptr inbounds i32, ptr %180, i64 %209
  store i32 %212, ptr %213, align 4, !tbaa !159
  %214 = load i32, ptr %188, align 4, !tbaa !159
  %215 = getelementptr inbounds i32, ptr %178, i64 %209
  store i32 %214, ptr %215, align 4, !tbaa !159
  %216 = load ptr, ptr %179, align 8, !tbaa !261
  %217 = getelementptr inbounds i32, ptr %216, i64 %183
  %218 = load i32, ptr %217, align 4, !tbaa !159
  %219 = getelementptr inbounds i32, ptr %216, i64 %209
  store i32 %218, ptr %219, align 4, !tbaa !159
  %220 = add nsw i32 %184, 1
  %221 = load i32, ptr %170, align 8, !tbaa !256
  br label %222

222:                                              ; preds = %203, %208
  %223 = phi i32 [ %182, %203 ], [ %221, %208 ]
  %224 = phi i32 [ %184, %203 ], [ %220, %208 ]
  %225 = add nuw nsw i64 %183, 1
  %226 = sext i32 %223 to i64
  %227 = icmp slt i64 %225, %226
  br i1 %227, label %181, label %228, !prof !262, !llvm.loop !263

228:                                              ; preds = %222, %167
  %229 = phi i32 [ 0, %167 ], [ %224, %222 ]
  store i32 %229, ptr %170, align 8, !tbaa !256
  %230 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 17
  %231 = load i32, ptr %230, align 4, !tbaa !264
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %288, !prof !169

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 76
  %235 = load ptr, ptr %234, align 8, !tbaa !265
  %236 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 77
  %237 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 78
  %238 = load ptr, ptr %237, align 8, !tbaa !266
  %239 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 79
  %240 = load ptr, ptr %236, align 8, !tbaa !267
  br label %241

241:                                              ; preds = %233, %282
  %242 = phi i32 [ %231, %233 ], [ %283, %282 ]
  %243 = phi i64 [ 0, %233 ], [ %285, %282 ]
  %244 = phi i32 [ 0, %233 ], [ %284, %282 ]
  %245 = getelementptr inbounds i32, ptr %235, i64 %243
  %246 = load i32, ptr %245, align 4, !tbaa !159
  %247 = sdiv i32 %246, 3
  %248 = getelementptr inbounds i32, ptr %238, i64 %243
  %249 = load i32, ptr %248, align 4, !tbaa !159
  %250 = sdiv i32 %249, 3
  %251 = sext i32 %247 to i64
  %252 = getelementptr inbounds i32, ptr %2, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !159
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %268, label %255, !prof !268

255:                                              ; preds = %241
  %256 = getelementptr inbounds i32, ptr %240, i64 %243
  %257 = load i32, ptr %256, align 4, !tbaa !159
  %258 = sdiv i32 %257, 3
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %2, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !159
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %255
  %264 = sext i32 %250 to i64
  %265 = getelementptr inbounds i32, ptr %2, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !159
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %263, %255, %241
  %269 = sext i32 %244 to i64
  %270 = getelementptr inbounds i32, ptr %235, i64 %269
  store i32 %246, ptr %270, align 4, !tbaa !159
  %271 = getelementptr inbounds i32, ptr %240, i64 %243
  %272 = load i32, ptr %271, align 4, !tbaa !159
  %273 = getelementptr inbounds i32, ptr %240, i64 %269
  store i32 %272, ptr %273, align 4, !tbaa !159
  %274 = load i32, ptr %248, align 4, !tbaa !159
  %275 = getelementptr inbounds i32, ptr %238, i64 %269
  store i32 %274, ptr %275, align 4, !tbaa !159
  %276 = load ptr, ptr %239, align 8, !tbaa !269
  %277 = getelementptr inbounds i32, ptr %276, i64 %243
  %278 = load i32, ptr %277, align 4, !tbaa !159
  %279 = getelementptr inbounds i32, ptr %276, i64 %269
  store i32 %278, ptr %279, align 4, !tbaa !159
  %280 = add nsw i32 %244, 1
  %281 = load i32, ptr %230, align 4, !tbaa !264
  br label %282

282:                                              ; preds = %263, %268
  %283 = phi i32 [ %242, %263 ], [ %281, %268 ]
  %284 = phi i32 [ %244, %263 ], [ %280, %268 ]
  %285 = add nuw nsw i64 %243, 1
  %286 = sext i32 %283 to i64
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %241, label %288, !prof !270, !llvm.loop !271

288:                                              ; preds = %282, %228
  %289 = phi i32 [ 0, %228 ], [ %284, %282 ]
  store i32 %289, ptr %230, align 4, !tbaa !264
  %290 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 4
  %291 = load i32, ptr %290, align 8, !tbaa !272
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %295, label %293, !prof !169

293:                                              ; preds = %288
  %294 = sext i32 %291 to i64
  br label %305

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 91
  %297 = load ptr, ptr %296, align 8, !tbaa !273
  br label %298

298:                                              ; preds = %295, %298
  %299 = phi i64 [ 0, %295 ], [ %301, %298 ]
  %300 = getelementptr inbounds i32, ptr %297, i64 %299
  store i32 0, ptr %300, align 4, !tbaa !159
  %301 = add nuw nsw i64 %299, 1
  %302 = load i32, ptr %290, align 8, !tbaa !272
  %303 = sext i32 %302 to i64
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %298, label %305, !prof !274, !llvm.loop !275

305:                                              ; preds = %298, %293
  %306 = phi i64 [ %294, %293 ], [ %303, %298 ]
  %307 = mul nsw i64 %306, 48
  %308 = tail call fastcc ptr @get(i64 noundef %307) #36
  %309 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 10
  %310 = load i32, ptr %309, align 8, !tbaa !276
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %395, !prof !169

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 80
  %314 = load ptr, ptr %313, align 8, !tbaa !277
  %315 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 81
  %316 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 82
  %317 = load ptr, ptr %316, align 8, !tbaa !278
  %318 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 83
  %319 = load ptr, ptr %318, align 8, !tbaa !279
  %320 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 84
  %321 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 91
  %322 = load ptr, ptr %315, align 8, !tbaa !280
  br label %323

323:                                              ; preds = %312, %389
  %324 = phi i64 [ 0, %312 ], [ %391, %389 ]
  %325 = phi i32 [ 0, %312 ], [ %390, %389 ]
  %326 = getelementptr inbounds i32, ptr %314, i64 %324
  %327 = load i32, ptr %326, align 4, !tbaa !159
  %328 = sdiv i32 %327, 3
  %329 = getelementptr inbounds i32, ptr %317, i64 %324
  %330 = load i32, ptr %329, align 4, !tbaa !159
  %331 = sdiv i32 %330, 3
  %332 = getelementptr inbounds i32, ptr %319, i64 %324
  %333 = load i32, ptr %332, align 4, !tbaa !159
  %334 = sdiv i32 %333, 3
  %335 = tail call i32 @llvm.abs.i32(i32 %331, i1 true)
  %336 = tail call i32 @llvm.abs.i32(i32 %334, i1 true)
  %337 = sext i32 %328 to i64
  %338 = getelementptr inbounds i32, ptr %2, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !159
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %359, label %341, !prof !281

341:                                              ; preds = %323
  %342 = getelementptr inbounds i32, ptr %322, i64 %324
  %343 = load i32, ptr %342, align 4, !tbaa !159
  %344 = sdiv i32 %343, 3
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, ptr %2, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !159
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %341
  %350 = zext nneg i32 %335 to i64
  %351 = getelementptr inbounds i32, ptr %2, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !159
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %359, label %354

354:                                              ; preds = %349
  %355 = zext nneg i32 %336 to i64
  %356 = getelementptr inbounds i32, ptr %2, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !159
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %389

359:                                              ; preds = %354, %349, %341, %323
  %360 = sext i32 %325 to i64
  %361 = getelementptr inbounds i32, ptr %314, i64 %360
  store i32 %327, ptr %361, align 4, !tbaa !159
  %362 = getelementptr inbounds i32, ptr %322, i64 %324
  %363 = load i32, ptr %362, align 4, !tbaa !159
  %364 = getelementptr inbounds i32, ptr %322, i64 %360
  store i32 %363, ptr %364, align 4, !tbaa !159
  %365 = load i32, ptr %329, align 4, !tbaa !159
  %366 = getelementptr inbounds i32, ptr %317, i64 %360
  store i32 %365, ptr %366, align 4, !tbaa !159
  %367 = load i32, ptr %332, align 4, !tbaa !159
  %368 = getelementptr inbounds i32, ptr %319, i64 %360
  store i32 %367, ptr %368, align 4, !tbaa !159
  %369 = load ptr, ptr %320, align 8, !tbaa !282
  %370 = getelementptr inbounds i32, ptr %369, i64 %324
  %371 = load i32, ptr %370, align 4, !tbaa !159
  %372 = getelementptr inbounds i32, ptr %369, i64 %360
  store i32 %371, ptr %372, align 4, !tbaa !159
  %373 = add nsw i32 %325, 1
  %374 = icmp sgt i32 %330, -3
  %375 = icmp sgt i32 %333, -3
  %376 = select i1 %374, i1 %375, i1 false
  br i1 %376, label %377, label %389, !prof !283

377:                                              ; preds = %359
  %378 = tail call i32 @llvm.smin.i32(i32 %328, i32 %334)
  %379 = tail call i32 @llvm.smax.i32(i32 %328, i32 %334)
  %380 = mul nsw i32 %378, 12
  %381 = load ptr, ptr %321, align 8, !tbaa !273
  %382 = sext i32 %378 to i64
  %383 = getelementptr inbounds i32, ptr %381, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !159
  %385 = add nsw i32 %384, 1
  store i32 %385, ptr %383, align 4, !tbaa !159
  %386 = add nsw i32 %384, %380
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, ptr %308, i64 %387
  store i32 %379, ptr %388, align 4, !tbaa !159
  br label %389

389:                                              ; preds = %354, %377, %359
  %390 = phi i32 [ %325, %354 ], [ %373, %377 ], [ %373, %359 ]
  %391 = add nuw nsw i64 %324, 1
  %392 = load i32, ptr %309, align 8, !tbaa !276
  %393 = sext i32 %392 to i64
  %394 = icmp slt i64 %391, %393
  br i1 %394, label %323, label %395, !prof !284, !llvm.loop !285

395:                                              ; preds = %389, %305
  %396 = phi i32 [ 0, %305 ], [ %390, %389 ]
  store i32 %396, ptr %309, align 8, !tbaa !276
  %397 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 18
  %398 = load i32, ptr %397, align 8, !tbaa !286
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %483, !prof !169

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 85
  %402 = load ptr, ptr %401, align 8, !tbaa !287
  %403 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 86
  %404 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 87
  %405 = load ptr, ptr %404, align 8, !tbaa !288
  %406 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 88
  %407 = load ptr, ptr %406, align 8, !tbaa !289
  %408 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 89
  %409 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 91
  %410 = load ptr, ptr %403, align 8, !tbaa !290
  br label %411

411:                                              ; preds = %400, %477
  %412 = phi i64 [ 0, %400 ], [ %479, %477 ]
  %413 = phi i32 [ 0, %400 ], [ %478, %477 ]
  %414 = getelementptr inbounds i32, ptr %402, i64 %412
  %415 = load i32, ptr %414, align 4, !tbaa !159
  %416 = sdiv i32 %415, 3
  %417 = getelementptr inbounds i32, ptr %405, i64 %412
  %418 = load i32, ptr %417, align 4, !tbaa !159
  %419 = sdiv i32 %418, 3
  %420 = getelementptr inbounds i32, ptr %407, i64 %412
  %421 = load i32, ptr %420, align 4, !tbaa !159
  %422 = sdiv i32 %421, 3
  %423 = tail call i32 @llvm.abs.i32(i32 %419, i1 true)
  %424 = tail call i32 @llvm.abs.i32(i32 %422, i1 true)
  %425 = sext i32 %416 to i64
  %426 = getelementptr inbounds i32, ptr %2, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !159
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %447, label %429, !prof !291

429:                                              ; preds = %411
  %430 = getelementptr inbounds i32, ptr %410, i64 %412
  %431 = load i32, ptr %430, align 4, !tbaa !159
  %432 = sdiv i32 %431, 3
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, ptr %2, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !159
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %447, label %437

437:                                              ; preds = %429
  %438 = zext nneg i32 %423 to i64
  %439 = getelementptr inbounds i32, ptr %2, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !159
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %437
  %443 = zext nneg i32 %424 to i64
  %444 = getelementptr inbounds i32, ptr %2, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !159
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %477

447:                                              ; preds = %442, %437, %429, %411
  %448 = sext i32 %413 to i64
  %449 = getelementptr inbounds i32, ptr %402, i64 %448
  store i32 %415, ptr %449, align 4, !tbaa !159
  %450 = getelementptr inbounds i32, ptr %410, i64 %412
  %451 = load i32, ptr %450, align 4, !tbaa !159
  %452 = getelementptr inbounds i32, ptr %410, i64 %448
  store i32 %451, ptr %452, align 4, !tbaa !159
  %453 = load i32, ptr %417, align 4, !tbaa !159
  %454 = getelementptr inbounds i32, ptr %405, i64 %448
  store i32 %453, ptr %454, align 4, !tbaa !159
  %455 = load i32, ptr %420, align 4, !tbaa !159
  %456 = getelementptr inbounds i32, ptr %407, i64 %448
  store i32 %455, ptr %456, align 4, !tbaa !159
  %457 = load ptr, ptr %408, align 8, !tbaa !292
  %458 = getelementptr inbounds i32, ptr %457, i64 %412
  %459 = load i32, ptr %458, align 4, !tbaa !159
  %460 = getelementptr inbounds i32, ptr %457, i64 %448
  store i32 %459, ptr %460, align 4, !tbaa !159
  %461 = add nsw i32 %413, 1
  %462 = icmp sgt i32 %418, -3
  %463 = icmp sgt i32 %421, -3
  %464 = select i1 %462, i1 %463, i1 false
  br i1 %464, label %465, label %477, !prof !293

465:                                              ; preds = %447
  %466 = tail call i32 @llvm.smin.i32(i32 %416, i32 %422)
  %467 = tail call i32 @llvm.smax.i32(i32 %416, i32 %422)
  %468 = mul nsw i32 %466, 12
  %469 = load ptr, ptr %409, align 8, !tbaa !273
  %470 = sext i32 %466 to i64
  %471 = getelementptr inbounds i32, ptr %469, i64 %470
  %472 = load i32, ptr %471, align 4, !tbaa !159
  %473 = add nsw i32 %472, 1
  store i32 %473, ptr %471, align 4, !tbaa !159
  %474 = add nsw i32 %472, %468
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, ptr %308, i64 %475
  store i32 %467, ptr %476, align 4, !tbaa !159
  br label %477

477:                                              ; preds = %442, %465, %447
  %478 = phi i32 [ %413, %442 ], [ %461, %465 ], [ %461, %447 ]
  %479 = add nuw nsw i64 %412, 1
  %480 = load i32, ptr %397, align 8, !tbaa !286
  %481 = sext i32 %480 to i64
  %482 = icmp slt i64 %479, %481
  br i1 %482, label %411, label %483, !prof !294, !llvm.loop !295

483:                                              ; preds = %477, %395
  %484 = phi i32 [ 0, %395 ], [ %478, %477 ]
  store i32 %484, ptr %397, align 8, !tbaa !286
  %485 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 11
  store i32 %484, ptr %485, align 4, !tbaa !296
  %486 = load i32, ptr %290, align 8, !tbaa !272
  %487 = icmp sgt i32 %486, 1
  br i1 %487, label %488, label %526, !prof !169

488:                                              ; preds = %483
  %489 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 91
  %490 = load ptr, ptr %489, align 8, !tbaa !273
  %491 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 92
  br label %492

492:                                              ; preds = %488, %519
  %493 = phi i32 [ %486, %488 ], [ %520, %519 ]
  %494 = phi i64 [ 0, %488 ], [ %522, %519 ]
  %495 = phi i32 [ 0, %488 ], [ %521, %519 ]
  %496 = getelementptr inbounds i32, ptr %490, i64 %494
  %497 = load i32, ptr %496, align 4, !tbaa !159
  %498 = icmp sgt i32 %497, 0
  br i1 %498, label %499, label %519, !prof !297

499:                                              ; preds = %492
  %500 = load ptr, ptr %491, align 8, !tbaa !298
  %501 = sext i32 %495 to i64
  %502 = mul i64 %494, 12
  %503 = and i64 %502, 4294967292
  %504 = getelementptr i32, ptr %308, i64 %503
  br label %505

505:                                              ; preds = %499, %505
  %506 = phi i64 [ 0, %499 ], [ %512, %505 ]
  %507 = phi i64 [ %501, %499 ], [ %510, %505 ]
  %508 = getelementptr i32, ptr %504, i64 %506
  %509 = load i32, ptr %508, align 4, !tbaa !159
  %510 = add nsw i64 %507, 1
  %511 = getelementptr inbounds i32, ptr %500, i64 %507
  store i32 %509, ptr %511, align 4, !tbaa !159
  %512 = add nuw nsw i64 %506, 1
  %513 = load i32, ptr %496, align 4, !tbaa !159
  %514 = sext i32 %513 to i64
  %515 = icmp slt i64 %512, %514
  br i1 %515, label %505, label %516, !prof !299, !llvm.loop !300

516:                                              ; preds = %505
  %517 = trunc i64 %510 to i32
  %518 = load i32, ptr %290, align 8, !tbaa !272
  br label %519

519:                                              ; preds = %516, %492
  %520 = phi i32 [ %493, %492 ], [ %518, %516 ]
  %521 = phi i32 [ %495, %492 ], [ %517, %516 ]
  %522 = add nuw nsw i64 %494, 1
  %523 = add nsw i32 %520, -1
  %524 = sext i32 %523 to i64
  %525 = icmp slt i64 %522, %524
  br i1 %525, label %492, label %526, !prof !301, !llvm.loop !302

526:                                              ; preds = %519, %483
  tail call void @free(ptr noundef %308) #35
  br label %527

527:                                              ; preds = %526, %67
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @get(i64 noundef %0) unnamed_addr #0 !prof !99 !PGOFuncName !303 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %11, label %3, !prof !102

3:                                                ; preds = %1
  %4 = tail call noalias ptr @malloc(i64 noundef %0) #34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !102

6:                                                ; preds = %3
  %7 = load ptr, ptr @nabout, align 8, !tbaa !91
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.70, i64 noundef %0) #36
  %9 = load ptr, ptr @nabout, align 8, !tbaa !91
  %10 = tail call i32 @fflush(ptr noundef %9) #36
  tail call void @perror(ptr noundef nonnull @.str.71) #38
  tail call void @exit(i32 noundef 1) #42
  unreachable

11:                                               ; preds = %3, %1
  %12 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_cons_mask(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !99 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8, !prof !231

8:                                                ; preds = %3, %61
  %9 = phi ptr [ %65, %61 ], [ %6, %3 ]
  %10 = phi i32 [ %63, %61 ], [ 0, %3 ]
  %11 = phi i32 [ %62, %61 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61, !prof !232

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  br label %18

18:                                               ; preds = %15, %54
  %19 = phi i32 [ %13, %15 ], [ %55, %54 ]
  %20 = phi i64 [ 0, %15 ], [ %58, %54 ]
  %21 = phi i32 [ %10, %15 ], [ %57, %54 ]
  %22 = phi i32 [ %11, %15 ], [ %56, %54 ]
  %23 = getelementptr inbounds ptr, ptr %17, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %54, !prof !233

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = sext i32 %22 to i64
  br label %32

32:                                               ; preds = %28, %42
  %33 = phi i64 [ %31, %28 ], [ %46, %42 ]
  %34 = phi i64 [ 0, %28 ], [ %47, %42 ]
  %35 = phi i32 [ %21, %28 ], [ %44, %42 ]
  %36 = getelementptr inbounds %struct.atom_t, ptr %30, i64 %34, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !151
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !304

40:                                               ; preds = %32
  %41 = add nsw i32 %35, 1
  br label %42

42:                                               ; preds = %32, %40
  %43 = phi i32 [ 1, %40 ], [ 0, %32 ]
  %44 = phi i32 [ %41, %40 ], [ %35, %32 ]
  %45 = getelementptr inbounds i32, ptr %2, i64 %33
  store i32 %43, ptr %45, align 4
  %46 = add nsw i64 %33, 1
  %47 = add nuw nsw i64 %34, 1
  %48 = load i32, ptr %25, align 8, !tbaa !79
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %32, label %51, !prof !235, !llvm.loop !305

51:                                               ; preds = %42
  %52 = trunc i64 %46 to i32
  %53 = load i32, ptr %12, align 8, !tbaa !89
  br label %54

54:                                               ; preds = %51, %18
  %55 = phi i32 [ %19, %18 ], [ %53, %51 ]
  %56 = phi i32 [ %22, %18 ], [ %52, %51 ]
  %57 = phi i32 [ %21, %18 ], [ %44, %51 ]
  %58 = add nuw nsw i64 %20, 1
  %59 = sext i32 %55 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %18, label %61, !prof !237, !llvm.loop !306

61:                                               ; preds = %54, %8
  %62 = phi i32 [ %11, %8 ], [ %56, %54 ]
  %63 = phi i32 [ %10, %8 ], [ %57, %54 ]
  %64 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %8, !prof !239, !llvm.loop !307

67:                                               ; preds = %61, %3
  %68 = phi i32 [ 0, %3 ], [ %63, %61 ]
  ret i32 %68
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 !prof !66 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #39
  br label %11

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %19, %11 ]
  %13 = getelementptr inbounds double, ptr %1, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds double, ptr %0, i64 %12
  %16 = load double, ptr %15, align 8, !tbaa !54
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %12
  store double %17, ptr %18, align 8, !tbaa !54
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %11, !llvm.loop !308

21:                                               ; preds = %11, %21
  %22 = phi i64 [ %29, %21 ], [ 0, %11 ]
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds double, ptr %0, i64 %22
  %26 = load double, ptr %25, align 8, !tbaa !54
  %27 = fsub double %24, %26
  %28 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %22
  store double %27, ptr %28, align 8, !tbaa !54
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %21, !llvm.loop !309

31:                                               ; preds = %21, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %21 ]
  %33 = getelementptr inbounds double, ptr %2, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds double, ptr %1, i64 %32
  %36 = load double, ptr %35, align 8, !tbaa !54
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %32
  store double %37, ptr %38, align 8, !tbaa !54
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %31, !llvm.loop !310

41:                                               ; preds = %31, %41
  %42 = phi i64 [ %50, %41 ], [ 0, %31 ]
  %43 = getelementptr inbounds double, ptr %0, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds double, ptr %1, i64 %42
  %46 = load double, ptr %45, align 8, !tbaa !54
  %47 = fadd double %44, %46
  %48 = fmul double %47, 5.000000e-01
  %49 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %42
  store double %48, ptr %49, align 8, !tbaa !54
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %41, !llvm.loop !311

52:                                               ; preds = %41, %52
  %53 = phi i64 [ %60, %52 ], [ 0, %41 ]
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !54
  %56 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %53
  %57 = load double, ptr %56, align 8, !tbaa !54
  %58 = fsub double %55, %57
  %59 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %53
  store double %58, ptr %59, align 8, !tbaa !54
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %52, !llvm.loop !312

62:                                               ; preds = %52
  %63 = call fastcc double @vdot(ptr noundef nonnull %6, ptr noundef nonnull %7) #36
  %64 = call fastcc double @vdot(ptr noundef nonnull %6, ptr noundef nonnull %6) #36
  %65 = fneg double %63
  %66 = fdiv double %65, %64
  br label %67

67:                                               ; preds = %62, %67
  %68 = phi i64 [ 0, %62 ], [ %75, %67 ]
  %69 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !54
  %71 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %68
  %72 = load double, ptr %71, align 8, !tbaa !54
  %73 = tail call double @llvm.fmuladd.f64(double %66, double %72, double %70)
  %74 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %68
  store double %73, ptr %74, align 8, !tbaa !54
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %67, !llvm.loop !313

77:                                               ; preds = %67
  %78 = call fastcc double @vdot(ptr noundef nonnull %10, ptr noundef nonnull %5) #36
  %79 = tail call double @llvm.fabs.f64(double %78)
  %80 = fcmp olt double %79, 1.000000e-09
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load ptr, ptr @stderr, align 8, !tbaa !91
  %83 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 40, i64 1, ptr %82) #40
  br label %98

84:                                               ; preds = %77
  %85 = call fastcc double @vdot(ptr noundef nonnull %8, ptr noundef nonnull %7) #36
  %86 = fmul double %85, 5.000000e-01
  %87 = fdiv double %86, %78
  br label %88

88:                                               ; preds = %84, %88
  %89 = phi i64 [ 0, %84 ], [ %96, %88 ]
  %90 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %89
  %93 = load double, ptr %92, align 8, !tbaa !54
  %94 = tail call double @llvm.fmuladd.f64(double %87, double %93, double %91)
  %95 = getelementptr inbounds double, ptr %3, i64 %89
  store double %94, ptr %95, align 8, !tbaa !54
  %96 = add nuw nsw i64 %89, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %88, !llvm.loop !314

98:                                               ; preds = %88, %81
  %99 = phi i32 [ 1, %81 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39
  ret i32 %99
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @vdot(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !66 !PGOFuncName !315 {
  %3 = load double, ptr %0, align 8, !tbaa !54
  %4 = load double, ptr %1, align 8, !tbaa !54
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !54
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = tail call double @llvm.fmuladd.f64(double %12, double %14, double %10)
  ret double %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #26

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_atom(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #27 !prof !66 !PGOFuncName !316 {
  %3 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  br label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %8, %6 ]
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !80
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.atom_t, ptr %10, i64 1
  %18 = icmp eq i32 %16, %4
  br i1 %18, label %19, label %9, !llvm.loop !317

19:                                               ; preds = %9, %15, %2
  %20 = phi i32 [ -1, %2 ], [ -1, %15 ], [ %11, %9 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_atom(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !66 !PGOFuncName !318 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %112, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %112

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %11, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !319
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %10, i64 24
  br label %23

17:                                               ; preds = %66
  %18 = load i32, ptr %5, align 8, !tbaa !79
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ %18, %17 ], [ %6, %8 ]
  %21 = add nsw i32 %20, -1
  %22 = icmp sgt i32 %21, %1
  br i1 %22, label %71, label %81

23:                                               ; preds = %15, %66
  %24 = phi i64 [ 0, %15 ], [ %67, %66 ]
  %25 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %11, i32 4, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !159
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %27, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !319
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = zext nneg i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %63
  %34 = phi i64 [ 0, %31 ], [ %64, %63 ]
  %35 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %27, i32 4, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !159
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = trunc i64 %34 to i32
  %40 = add nsw i32 %29, -1
  %41 = icmp sgt i32 %40, %39
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = sext i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ %34, %42 ], [ %46, %44 ]
  %46 = add nuw nsw i64 %45, 1
  %47 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %27, i32 4, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !159
  %49 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %27, i32 4, i64 %45
  store i32 %48, ptr %49, align 4, !tbaa !159
  %50 = icmp slt i64 %46, %43
  br i1 %50, label %44, label %51, !llvm.loop !320

51:                                               ; preds = %44, %38
  store i32 %40, ptr %28, align 4, !tbaa !319
  %52 = icmp slt i32 %29, 9
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = mul nsw i64 %27, 176
  %55 = sext i32 %40 to i64
  %56 = shl nsw i64 %55, 2
  %57 = getelementptr i8, ptr %16, i64 %54
  %58 = getelementptr i8, ptr %57, i64 %56
  %59 = sub nsw i32 8, %29
  %60 = zext nneg i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 2
  %62 = add nuw nsw i64 %61, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %58, i8 -1, i64 %62, i1 false), !tbaa !159
  br label %66

63:                                               ; preds = %33
  %64 = add nuw nsw i64 %34, 1
  %65 = icmp eq i64 %64, %32
  br i1 %65, label %66, label %33, !llvm.loop !321

66:                                               ; preds = %63, %53, %23, %51
  %67 = add nuw nsw i64 %24, 1
  %68 = load i32, ptr %12, align 4, !tbaa !319
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %23, label %17, !llvm.loop !322

71:                                               ; preds = %19, %71
  %72 = phi i64 [ %75, %71 ], [ %11, %19 ]
  %73 = load ptr, ptr %9, align 8, !tbaa !78
  %74 = getelementptr inbounds %struct.atom_t, ptr %73, i64 %72
  %75 = add nuw nsw i64 %72, 1
  %76 = getelementptr inbounds %struct.atom_t, ptr %73, i64 %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %74, ptr noundef nonnull align 8 dereferenceable(176) %76, i64 176, i1 false), !tbaa.struct !323
  %77 = load i32, ptr %5, align 8, !tbaa !79
  %78 = add nsw i32 %77, -1
  %79 = trunc i64 %75 to i32
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %71, label %81, !llvm.loop !324

81:                                               ; preds = %71, %19
  %82 = phi i32 [ %21, %19 ], [ %78, %71 ]
  store i32 %82, ptr %5, align 8, !tbaa !79
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load ptr, ptr %9, align 8, !tbaa !78
  br label %86

86:                                               ; preds = %84, %106
  %87 = phi i32 [ %82, %84 ], [ %107, %106 ]
  %88 = phi i64 [ 0, %84 ], [ %108, %106 ]
  %89 = getelementptr inbounds %struct.atom_t, ptr %85, i64 %88, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !319
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = zext nneg i32 %90 to i64
  br label %94

94:                                               ; preds = %92, %101
  %95 = phi i64 [ 0, %92 ], [ %102, %101 ]
  %96 = getelementptr inbounds %struct.atom_t, ptr %85, i64 %88, i32 4, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !159
  %98 = icmp sgt i32 %97, %1
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = add nsw i32 %97, -1
  store i32 %100, ptr %96, align 4, !tbaa !159
  br label %101

101:                                              ; preds = %94, %99
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp ult i64 %102, %93
  br i1 %103, label %94, label %104, !llvm.loop !325

104:                                              ; preds = %101
  %105 = load i32, ptr %5, align 8, !tbaa !79
  br label %106

106:                                              ; preds = %104, %86
  %107 = phi i32 [ %105, %104 ], [ %87, %86 ]
  %108 = add nuw nsw i64 %88, 1
  %109 = add nsw i32 %107, -1
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %86, label %112, !llvm.loop !326

112:                                              ; preds = %106, %81, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_atom(ptr nocapture noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !79
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 176
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !91
  %11 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 28, i64 1, ptr %10) #40
  br label %107

12:                                               ; preds = %1
  %13 = shl nsw i64 %5, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !91
  %18 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 34, i64 1, ptr %17) #40
  br label %107

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = icmp sgt i32 %3, 0
  tail call void @llvm.assume(i1 %22)
  %23 = zext nneg i32 %3 to i64
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %28, %24 ]
  %26 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %25
  %27 = getelementptr inbounds %struct.atom_t, ptr %21, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %26, ptr noundef nonnull align 8 dereferenceable(176) %27, i64 176, i1 false), !tbaa.struct !323
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, %23
  br i1 %29, label %30, label %24, !llvm.loop !328

30:                                               ; preds = %24
  %31 = zext nneg i32 %3 to i64
  %32 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #37
  %35 = add i64 %34, 1
  %36 = tail call noalias ptr @malloc(i64 noundef %35) #34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load ptr, ptr @stderr, align 8, !tbaa !91
  %40 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %39) #40
  tail call void @exit(i32 noundef 1) #42
  unreachable

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31
  store ptr %36, ptr %42, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %36, ptr noundef nonnull align 1 dereferenceable(3) @.str.62, i64 3, i1 false) #35
  %43 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31, i32 2
  store i32 0, ptr %43, align 8, !tbaa !151
  %44 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31, i32 3
  store i32 0, ptr %44, align 4, !tbaa !319
  %45 = mul nuw nsw i64 %31, 176
  %46 = getelementptr i8, ptr %7, i64 %45
  %47 = getelementptr i8, ptr %46, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %47, i8 -1, i64 32, i1 false), !tbaa !159
  %48 = getelementptr inbounds %struct.atom_t, ptr %21, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !197
  %51 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31, i32 6
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %51, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.atom_t, ptr %7, i64 %31, i32 17
  %53 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, i8 0, i64 32, i1 false)
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  br i1 %22, label %57, label %103

57:                                               ; preds = %56
  %58 = zext nneg i32 %3 to i64
  br label %96

59:                                               ; preds = %41
  %60 = zext i32 %4 to i64
  %61 = add nuw nsw i64 %60, 3
  %62 = and i64 %61, 8589934588
  %63 = add nsw i64 %60, -1
  %64 = insertelement <4 x i64> poison, i64 %63, i64 0
  %65 = shufflevector <4 x i64> %64, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %92, %59
  %67 = phi i64 [ 0, %59 ], [ %93, %92 ]
  %68 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %59 ], [ %94, %92 ]
  %69 = trunc i64 %67 to i32
  %70 = icmp ule <4 x i64> %68, %65
  %71 = extractelement <4 x i1> %70, i64 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = getelementptr inbounds i32, ptr %14, i64 %67
  store i32 %69, ptr %73, align 4, !tbaa !159
  br label %74

74:                                               ; preds = %72, %66
  %75 = extractelement <4 x i1> %70, i64 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = or disjoint i64 %67, 1
  %78 = getelementptr inbounds i32, ptr %14, i64 %77
  %79 = or disjoint i32 %69, 1
  store i32 %79, ptr %78, align 4, !tbaa !159
  br label %80

80:                                               ; preds = %76, %74
  %81 = extractelement <4 x i1> %70, i64 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = or disjoint i64 %67, 2
  %84 = getelementptr inbounds i32, ptr %14, i64 %83
  %85 = or disjoint i32 %69, 2
  store i32 %85, ptr %84, align 4, !tbaa !159
  br label %86

86:                                               ; preds = %82, %80
  %87 = extractelement <4 x i1> %70, i64 3
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = or disjoint i64 %67, 3
  %90 = getelementptr inbounds i32, ptr %14, i64 %89
  %91 = or disjoint i32 %69, 3
  store i32 %91, ptr %90, align 4, !tbaa !159
  br label %92

92:                                               ; preds = %88, %86
  %93 = add i64 %67, 4
  %94 = add <4 x i64> %68, <i64 4, i64 4, i64 4, i64 4>
  %95 = icmp eq i64 %93, %62
  br i1 %95, label %105, label %66, !llvm.loop !329

96:                                               ; preds = %57, %96
  %97 = phi i64 [ 0, %57 ], [ %101, %96 ]
  %98 = getelementptr inbounds i32, ptr %54, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !159
  %100 = getelementptr inbounds i32, ptr %14, i64 %97
  store i32 %99, ptr %100, align 4, !tbaa !159
  %101 = add nuw nsw i64 %97, 1
  %102 = icmp eq i64 %101, %58
  br i1 %102, label %103, label %96, !llvm.loop !330

103:                                              ; preds = %96, %56
  %104 = getelementptr inbounds i32, ptr %14, i64 %31
  store i32 %3, ptr %104, align 4, !tbaa !159
  store ptr %14, ptr %53, align 8, !tbaa !77
  store i32 %4, ptr %2, align 8, !tbaa !79
  store ptr %7, ptr %20, align 8, !tbaa !78
  tail call void @free(ptr noundef nonnull %54) #35
  br label %106

105:                                              ; preds = %92
  store ptr %14, ptr %53, align 8, !tbaa !77
  store i32 %4, ptr %2, align 8, !tbaa !79
  store ptr %7, ptr %20, align 8, !tbaa !78
  br label %106

106:                                              ; preds = %105, %103
  tail call void @free(ptr noundef %21) #35
  br label %107

107:                                              ; preds = %106, %16, %9
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #29

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #31

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { nofree nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nounwind optsize allocsize(0) }
attributes #35 = { nounwind optsize }
attributes #36 = { optsize }
attributes #37 = { nounwind optsize willreturn memory(read) }
attributes #38 = { cold optsize }
attributes #39 = { nounwind }
attributes #40 = { cold }
attributes #41 = { nounwind optsize willreturn memory(none) }
attributes #42 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @newmolecule, ptr @malloc, i64 1}
!36 = !{ptr @addstrand, ptr @strcmp, i64 1}
!37 = !{ptr @addstrand, ptr @malloc, i64 3}
!38 = !{ptr @addstrand, ptr @strlen, i64 1}
!39 = !{ptr @addstrand, ptr @strcpy, i64 1}
!40 = !{ptr @addresidue, ptr @strcmp, i64 1789}
!41 = !{ptr @addresidue, ptr @rt_errormsg_s, i64 10}
!42 = !{ptr @addresidue, ptr @malloc, i64 1}
!43 = !{ptr @addresidue, ptr @copyresidue, i64 1192}
!44 = !{ptr @copyextbonds, ptr @malloc, i64 1}
!45 = !{ptr @setxyz_from_mol, ptr @select_atoms, i64 1}
!46 = !{ptr @set_belly_mask, ptr @select_atoms, i64 2}
!47 = !{ptr @set_belly_mask, ptr @get, i64 1}
!48 = !{ptr @set_belly_mask, ptr @free, i64 1}
!49 = !{ptr @get, ptr @malloc, i64 2}
!50 = !{ptr @set_cons_mask, ptr @select_atoms, i64 2}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!"branch_weights", i32 1, i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"double", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !60, i64 96}
!59 = !{!"molecule_t", !56, i64 0, !60, i64 96, !61, i64 104, !60, i64 112, !60, i64 116, !60, i64 120, !61, i64 128}
!60 = !{!"int", !56, i64 0}
!61 = !{!"any pointer", !56, i64 0}
!62 = !{!59, !61, i64 104}
!63 = !{!59, !60, i64 112}
!64 = !{!59, !60, i64 120}
!65 = !{!59, !61, i64 128}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !61, i64 24}
!68 = !{!"residue_t", !61, i64 0, !60, i64 8, !60, i64 12, !60, i64 16, !61, i64 24, !61, i64 32, !60, i64 40, !60, i64 44, !60, i64 48, !61, i64 56, !61, i64 64, !60, i64 72, !61, i64 80, !60, i64 88, !61, i64 96, !60, i64 104, !61, i64 112, !61, i64 120}
!69 = !{!68, !61, i64 32}
!70 = !{!68, !61, i64 64}
!71 = !{!72, !61, i64 0}
!72 = !{!"extbond_t", !61, i64 0, !60, i64 8, !60, i64 12, !60, i64 16}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!68, !61, i64 80}
!76 = !{!68, !61, i64 96}
!77 = !{!68, !61, i64 112}
!78 = !{!68, !61, i64 120}
!79 = !{!68, !60, i64 104}
!80 = !{!81, !61, i64 0}
!81 = !{!"atom_t", !61, i64 0, !61, i64 8, !60, i64 16, !60, i64 20, !56, i64 24, !61, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !61, i64 96, !60, i64 104, !55, i64 112, !55, i64 120, !60, i64 128, !60, i64 132, !61, i64 136, !56, i64 144, !55, i64 168}
!82 = !{!81, !61, i64 8}
!83 = !{!81, !61, i64 96}
!84 = !{!81, !61, i64 136}
!85 = distinct !{!85, !74}
!86 = !{!87, !61, i64 24}
!87 = !{!"strand_t", !61, i64 0, !60, i64 8, !60, i64 12, !61, i64 16, !61, i64 24, !60, i64 32, !60, i64 36, !61, i64 40}
!88 = !{!87, !61, i64 0}
!89 = !{!87, !60, i64 32}
!90 = !{!87, !61, i64 40}
!91 = !{!61, !61, i64 0}
!92 = distinct !{!92, !74}
!93 = distinct !{!93, !74}
!94 = !{!95, !61, i64 216}
!95 = !{!"parm", !56, i64 0, !60, i64 84, !60, i64 88, !60, i64 92, !60, i64 96, !60, i64 100, !60, i64 104, !60, i64 108, !60, i64 112, !60, i64 116, !60, i64 120, !60, i64 124, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !61, i64 216, !61, i64 224, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !61, i64 304, !61, i64 312, !61, i64 320, !61, i64 328, !61, i64 336, !61, i64 344, !61, i64 352, !61, i64 360, !61, i64 368, !56, i64 376, !55, i64 400, !55, i64 408, !55, i64 416, !55, i64 424, !55, i64 432, !61, i64 440, !61, i64 448, !61, i64 456, !61, i64 464, !61, i64 472, !61, i64 480, !61, i64 488, !61, i64 496, !61, i64 504, !61, i64 512, !61, i64 520, !61, i64 528, !61, i64 536, !61, i64 544, !61, i64 552, !61, i64 560, !61, i64 568, !61, i64 576, !61, i64 584, !61, i64 592, !61, i64 600, !61, i64 608, !61, i64 616, !61, i64 624, !61, i64 632, !61, i64 640, !61, i64 648, !61, i64 656, !61, i64 664, !61, i64 672, !61, i64 680, !61, i64 688, !61, i64 696, !61, i64 704, !61, i64 712}
!96 = !{!95, !61, i64 224}
!97 = !{!95, !61, i64 232}
!98 = !{!95, !61, i64 240}
!99 = !{!"function_entry_count", i64 2}
!100 = !{!"branch_weights", i32 2, i32 0}
!101 = distinct !{!101, !74}
!102 = !{!"branch_weights", i32 1, i32 3}
!103 = !{!87, !60, i64 8}
!104 = !{!87, !60, i64 12}
!105 = !{!87, !61, i64 16}
!106 = !{!"branch_weights", i32 2, i32 2}
!107 = !{!"branch_weights", i32 2, i32 1}
!108 = distinct !{!108, !74}
!109 = !{!"function_entry_count", i64 1202}
!110 = !{!"branch_weights", i32 1, i32 127}
!111 = !{!"branch_weights", i32 1203, i32 602}
!112 = !{!"branch_weights", i32 127, i32 230785}
!113 = distinct !{!113, !74}
!114 = !{!87, !60, i64 36}
!115 = !{!"branch_weights", i32 1, i32 1203}
!116 = distinct !{!116, !74}
!117 = !{!68, !61, i64 56}
!118 = distinct !{!118, !74}
!119 = distinct !{!119, !74}
!120 = distinct !{!120, !74}
!121 = !{!72, !60, i64 8}
!122 = !{!72, !60, i64 12}
!123 = !{!72, !60, i64 16}
!124 = distinct !{!124, !74}
!125 = distinct !{!125, !74}
!126 = distinct !{!126, !74}
!127 = distinct !{!127, !74}
!128 = distinct !{!128, !74}
!129 = distinct !{!129, !74}
!130 = distinct !{!130, !74}
!131 = distinct !{!131, !74}
!132 = distinct !{!132, !74}
!133 = distinct !{!133, !74}
!134 = !{!"molutil.c:fixextbonds"}
!135 = distinct !{!135, !74}
!136 = !{!"molutil.c:freestrand"}
!137 = distinct !{!137, !74}
!138 = distinct !{!138, !74}
!139 = !{!68, !60, i64 12}
!140 = !{!68, !60, i64 16}
!141 = !{!81, !60, i64 132}
!142 = !{!81, !60, i64 128}
!143 = distinct !{!143, !74}
!144 = distinct !{!144, !74}
!145 = !{!59, !60, i64 116}
!146 = distinct !{!146, !74}
!147 = distinct !{!147, !74}
!148 = !{!68, !60, i64 40}
!149 = distinct !{!149, !74}
!150 = distinct !{!150, !74}
!151 = !{!81, !60, i64 16}
!152 = distinct !{!152, !74}
!153 = distinct !{!153, !74}
!154 = distinct !{!154, !74}
!155 = distinct !{!155, !74}
!156 = !{!"molutil.c:cvt_p2hb"}
!157 = !{!"molutil.c:add_he2o3"}
!158 = !{!"branch_weights", i32 1202, i32 1}
!159 = !{!60, !60, i64 0}
!160 = !{!"branch_weights", i32 1, i32 0}
!161 = distinct !{!161, !74}
!162 = !{!56, !56, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"short", !56, i64 0}
!165 = distinct !{!165, !74}
!166 = !{!68, !60, i64 44}
!167 = distinct !{!167, !74}
!168 = distinct !{!168, !74}
!169 = !{!"branch_weights", i32 191, i32 1}
!170 = !{!"branch_weights", i32 1, i32 19031}
!171 = !{!"branch_weights", i32 1202, i32 17829}
!172 = distinct !{!172, !74}
!173 = !{!"branch_weights", i32 191, i32 76801}
!174 = distinct !{!174, !74}
!175 = !{!"branch_weights", i32 127, i32 65}
!176 = distinct !{!176, !74}
!177 = !{!81, !55, i64 168}
!178 = distinct !{!178, !74}
!179 = distinct !{!179, !74}
!180 = distinct !{!180, !74}
!181 = distinct !{!181, !74}
!182 = distinct !{!182, !74}
!183 = distinct !{!183, !74}
!184 = distinct !{!184, !74}
!185 = distinct !{!185, !74}
!186 = distinct !{!186, !74}
!187 = !{!"function_entry_count", i64 1203}
!188 = !{!"branch_weights", i32 1204, i32 1}
!189 = !{!68, !60, i64 88}
!190 = !{!"function_entry_count", i64 19030}
!191 = !{!"branch_weights", i32 19031, i32 1}
!192 = !{!81, !55, i64 88}
!193 = !{!"function_entry_count", i64 19031}
!194 = !{!"branch_weights", i32 2, i32 19031}
!195 = !{!"branch_weights", i32 127, i32 129}
!196 = distinct !{!196, !74}
!197 = !{!81, !61, i64 56}
!198 = !{!"branch_weights", i32 17829, i32 1203}
!199 = !{!"branch_weights", i32 127, i32 1}
!200 = !{!"branch_weights", i32 1203, i32 360601}
!201 = !{!"branch_weights", i32 127, i32 46310657}
!202 = distinct !{!202, !74}
!203 = !{!"branch_weights", i32 -2147483648, i32 0}
!204 = distinct !{!204, !74}
!205 = distinct !{!205, !74}
!206 = distinct !{!206, !74}
!207 = distinct !{!207, !74}
!208 = distinct !{!208, !74}
!209 = distinct !{!209, !74}
!210 = !{!"molutil.c:mk_idmat"}
!211 = distinct !{!211, !74, !212, !213}
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = distinct !{!214, !74}
!215 = !{!"molutil.c:concat_mat"}
!216 = distinct !{!216, !74}
!217 = distinct !{!217, !74}
!218 = distinct !{!218, !74}
!219 = !{!"molutil.c:copy_mat"}
!220 = distinct !{!220, !74}
!221 = distinct !{!221, !74}
!222 = distinct !{!222, !74}
!223 = !{!"molutil.c:xfm_xyz"}
!224 = distinct !{!224, !74}
!225 = distinct !{!225, !74}
!226 = distinct !{!226, !74}
!227 = distinct !{!227, !74}
!228 = distinct !{!228, !74}
!229 = distinct !{!229, !74}
!230 = !{!"molutil.c:raa2mat"}
!231 = !{!"branch_weights", i32 1, i32 191}
!232 = !{!"branch_weights", i32 159, i32 1}
!233 = !{!"branch_weights", i32 2404, i32 1}
!234 = !{!"branch_weights", i32 1, i32 38061}
!235 = !{!"branch_weights", i32 35657, i32 2404}
!236 = distinct !{!236, !74}
!237 = !{!"branch_weights", i32 76801, i32 159}
!238 = distinct !{!238, !74}
!239 = !{!"branch_weights", i32 191, i32 129}
!240 = distinct !{!240, !74}
!241 = !{!95, !60, i64 104}
!242 = !{!95, !61, i64 496}
!243 = !{!95, !61, i64 504}
!244 = !{!"branch_weights", i32 18737, i32 1}
!245 = !{!95, !61, i64 512}
!246 = !{!"branch_weights", i32 1198977, i32 191}
!247 = distinct !{!247, !74}
!248 = !{!95, !60, i64 144}
!249 = !{!95, !61, i64 520}
!250 = !{!95, !61, i64 528}
!251 = !{!"branch_weights", i32 19793, i32 1}
!252 = !{!95, !61, i64 536}
!253 = !{!"branch_weights", i32 1266561, i32 191}
!254 = distinct !{!254, !74}
!255 = !{!95, !60, i64 108}
!256 = !{!95, !60, i64 112}
!257 = !{!95, !61, i64 544}
!258 = !{!95, !61, i64 560}
!259 = !{!95, !61, i64 552}
!260 = !{!"branch_weights", i32 42641, i32 1}
!261 = !{!95, !61, i64 568}
!262 = !{!"branch_weights", i32 2728833, i32 191}
!263 = distinct !{!263, !74}
!264 = !{!95, !60, i64 148}
!265 = !{!95, !61, i64 576}
!266 = !{!95, !61, i64 592}
!267 = !{!95, !61, i64 584}
!268 = !{!"branch_weights", i32 26797, i32 1}
!269 = !{!95, !61, i64 600}
!270 = !{!"branch_weights", i32 1714817, i32 191}
!271 = distinct !{!271, !74}
!272 = !{!95, !60, i64 96}
!273 = !{!95, !61, i64 696}
!274 = !{!"branch_weights", i32 2435713, i32 191}
!275 = distinct !{!275, !74}
!276 = !{!95, !60, i64 120}
!277 = !{!95, !61, i64 608}
!278 = !{!95, !61, i64 624}
!279 = !{!95, !61, i64 632}
!280 = !{!95, !61, i64 616}
!281 = !{!"branch_weights", i32 77317, i32 1}
!282 = !{!95, !61, i64 640}
!283 = !{!"branch_weights", i32 -1820476396, i32 245169749}
!284 = !{!"branch_weights", i32 4948097, i32 191}
!285 = distinct !{!285, !74}
!286 = !{!95, !60, i64 152}
!287 = !{!95, !61, i64 648}
!288 = !{!95, !61, i64 664}
!289 = !{!95, !61, i64 672}
!290 = !{!95, !61, i64 656}
!291 = !{!"branch_weights", i32 47093, i32 1}
!292 = !{!95, !61, i64 680}
!293 = !{!"branch_weights", i32 881911809, i32 516685803}
!294 = !{!"branch_weights", i32 3013761, i32 191}
!295 = distinct !{!295, !74}
!296 = !{!95, !60, i64 124}
!297 = !{!"branch_weights", i32 38058, i32 1}
!298 = !{!95, !61, i64 704}
!299 = !{!"branch_weights", i32 61987, i32 38058}
!300 = distinct !{!300, !74}
!301 = !{!"branch_weights", i32 2435585, i32 191}
!302 = distinct !{!302, !74}
!303 = !{!"molutil.c:get"}
!304 = !{!"branch_weights", i32 38061, i32 1}
!305 = distinct !{!305, !74}
!306 = distinct !{!306, !74}
!307 = distinct !{!307, !74}
!308 = distinct !{!308, !74}
!309 = distinct !{!309, !74}
!310 = distinct !{!310, !74}
!311 = distinct !{!311, !74}
!312 = distinct !{!312, !74}
!313 = distinct !{!313, !74}
!314 = distinct !{!314, !74}
!315 = !{!"molutil.c:vdot"}
!316 = !{!"molutil.c:find_atom"}
!317 = distinct !{!317, !74}
!318 = !{!"molutil.c:delete_atom"}
!319 = !{!81, !60, i64 20}
!320 = distinct !{!320, !74}
!321 = distinct !{!321, !74}
!322 = distinct !{!322, !74}
!323 = !{i64 0, i64 8, !91, i64 8, i64 8, !91, i64 16, i64 4, !159, i64 20, i64 4, !159, i64 24, i64 32, !162, i64 56, i64 8, !91, i64 64, i64 8, !54, i64 72, i64 8, !54, i64 80, i64 8, !54, i64 88, i64 8, !54, i64 96, i64 8, !91, i64 104, i64 4, !159, i64 112, i64 8, !54, i64 120, i64 8, !54, i64 128, i64 4, !159, i64 132, i64 4, !159, i64 136, i64 8, !91, i64 144, i64 24, !162, i64 168, i64 8, !54}
!324 = distinct !{!324, !74}
!325 = distinct !{!325, !74}
!326 = distinct !{!326, !74}
!327 = !{!"molutil.c:add_atom"}
!328 = distinct !{!328, !74}
!329 = distinct !{!329, !74, !212, !213}
!330 = distinct !{!330, !74}
