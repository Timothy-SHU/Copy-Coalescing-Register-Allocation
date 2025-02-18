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

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @newmolecule() local_unnamed_addr #0 !prof !48 {
  %1 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !49

3:                                                ; preds = %0
  %4 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #35
  br label %16

5:                                                ; preds = %0
  %6 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 1, i64 1
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 2, i64 2
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 3
  store i32 0, ptr %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !61
  br label %16

16:                                               ; preds = %5, %3
  %17 = phi ptr [ null, %3 ], [ %1, %5 ]
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @freeresidue(ptr noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef %5) #35
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10) #35
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void @free(ptr noundef %18) #35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !69

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef %23) #35
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #35
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free(ptr noundef %33) #35
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %38 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !75
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !76
  br label %43

43:                                               ; preds = %41, %64
  %44 = phi ptr [ %66, %64 ], [ %42, %41 ]
  %45 = phi i32 [ %65, %64 ], [ 0, %41 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !77
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @free(ptr noundef %46) #35
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.atom_t, ptr %44, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @free(ptr noundef %51) #35
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.atom_t, ptr %44, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @free(ptr noundef %56) #35
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.atom_t, ptr %44, i64 0, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !81
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @free(ptr noundef %61) #35
  br label %64

64:                                               ; preds = %59, %63
  %65 = add nuw nsw i32 %45, 1
  %66 = getelementptr inbounds %struct.atom_t, ptr %44, i64 1
  %67 = load i32, ptr %38, align 8, !tbaa !75
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %43, label %69, !llvm.loop !82

69:                                               ; preds = %64, %36
  %70 = load ptr, ptr %37, align 8, !tbaa !76
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef %70) #35
  br label %73

73:                                               ; preds = %72, %69
  tail call void @free(ptr noundef %0) #35
  br label %74

74:                                               ; preds = %1, %73
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @freemolecule(ptr noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3, %35
  %8 = phi ptr [ %10, %35 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = load ptr, ptr %8, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @free(ptr noundef %11) #35
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %26, %20 ]
  %22 = load ptr, ptr %19, align 8, !tbaa !87
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = tail call i32 @freeresidue(ptr noundef %24)
  %26 = add nuw nsw i64 %21, 1
  %27 = load i32, ptr %15, align 8, !tbaa !86
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %20, label %30, !llvm.loop !89

30:                                               ; preds = %20, %14
  %31 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @free(ptr noundef %32) #35
  br label %35

35:                                               ; preds = %30, %34
  %36 = icmp eq ptr %10, null
  br i1 %36, label %37, label %7, !llvm.loop !90

37:                                               ; preds = %35, %3
  %38 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 33
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef %43) #35
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @free(ptr noundef %48) #35
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 35
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @free(ptr noundef %53) #35
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 36
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @free(ptr noundef %58) #35
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %38, align 8, !tbaa !61
  tail call void @free(ptr noundef %62) #35
  br label %63

63:                                               ; preds = %61, %37
  tail call void @free(ptr noundef %0) #35
  br label %64

64:                                               ; preds = %1, %63
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @addstrand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !96 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %10, !prof !97

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !98, !llvm.loop !99

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !prof !49

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !88
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef %1) #37
  br label %56

18:                                               ; preds = %6, %2
  %19 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24, !prof !100

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1) #35
  %23 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %56

24:                                               ; preds = %18
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %26 = shl i64 %25, 32
  %27 = add i64 %26, 4294967296
  %28 = ashr exact i64 %27, 32
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34, !prof !100

31:                                               ; preds = %24
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %1) #35
  %33 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %56

34:                                               ; preds = %24
  store ptr %29, ptr %19, align 8, !tbaa !85
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %1) #35
  %36 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 1
  store i32 0, ptr %36, align 8, !tbaa !101
  %37 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 2
  store i32 0, ptr %37, align 4, !tbaa !102
  %38 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 3
  store ptr %0, ptr %38, align 8, !tbaa !103
  %39 = getelementptr inbounds %struct.strand_t, ptr %19, i64 0, i32 4
  %40 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43, !prof !97

43:                                               ; preds = %34
  %44 = load ptr, ptr %3, align 8, !tbaa !58
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi ptr [ %44, %43 ], [ %48, %45 ]
  %47 = getelementptr inbounds %struct.strand_t, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %45, !prof !98, !llvm.loop !104

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.strand_t, ptr %46, i64 0, i32 4
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %3, %34 ]
  store ptr %19, ptr %53, align 8, !tbaa !88
  %54 = add nsw i32 %41, 1
  store i32 %54, ptr %40, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %55, align 8, !tbaa !60
  br label %56

56:                                               ; preds = %52, %31, %21, %15
  %57 = phi i32 [ 1, %15 ], [ 1, %21 ], [ 1, %31 ], [ 0, %52 ]
  ret i32 %57
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @addresidue(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !105 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !49

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %14, %12 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #36
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !106

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !prof !107, !llvm.loop !108

16:                                               ; preds = %12, %7, %3
  %17 = phi ptr [ null, %3 ], [ null, %12 ], [ %8, %7 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !109

19:                                               ; preds = %16
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %67

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !110
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %57, !prof !109

27:                                               ; preds = %21
  %28 = add nsw i32 %25, 10
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = icmp sgt i32 %23, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 7
  %37 = zext nneg i32 %23 to i64
  br label %42

38:                                               ; preds = %27
  %39 = load ptr, ptr %17, align 8, !tbaa !85
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %39) #35
  %41 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %67

42:                                               ; preds = %35, %42
  %43 = phi i64 [ 0, %35 ], [ %48, %42 ]
  %44 = load ptr, ptr %36, align 8, !tbaa !87
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !88
  %47 = getelementptr inbounds ptr, ptr %31, i64 %43
  store ptr %46, ptr %47, align 8, !tbaa !88
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %37
  br i1 %49, label %50, label %42, !llvm.loop !111

50:                                               ; preds = %42, %33
  %51 = icmp sgt i32 %25, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !87
  tail call void @free(ptr noundef %54) #35
  br label %55

55:                                               ; preds = %52, %50
  store i32 %28, ptr %24, align 4, !tbaa !110
  %56 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 7
  store ptr %31, ptr %56, align 8, !tbaa !87
  br label %57

57:                                               ; preds = %55, %21
  %58 = tail call ptr @copyresidue(ptr noundef %2) #35
  %59 = getelementptr inbounds %struct.strand_t, ptr %17, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  %61 = load i32, ptr %22, align 8, !tbaa !86
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  store ptr %58, ptr %63, align 8, !tbaa !88
  %64 = getelementptr inbounds %struct.residue_t, ptr %58, i64 0, i32 9
  store ptr %17, ptr %64, align 8, !tbaa !112
  %65 = add nsw i32 %61, 1
  store i32 %65, ptr %22, align 8, !tbaa !86
  %66 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %66, align 8, !tbaa !60
  br label %67

67:                                               ; preds = %57, %38, %19
  %68 = phi i32 [ 1, %19 ], [ 0, %38 ], [ 0, %57 ]
  ret i32 %68
}

declare ptr @copyresidue(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @connectres(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !62 {
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %15
  %11 = phi ptr [ %17, %15 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !113

19:                                               ; preds = %15, %6
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %134

21:                                               ; preds = %10
  %22 = icmp slt i32 %2, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !86
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %21
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %2, ptr noundef %1) #35
  %29 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @e_msg) #35
  br label %134

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = zext nneg i32 %2 to i64
  %34 = getelementptr ptr, ptr %32, i64 %33
  %35 = getelementptr ptr, ptr %34, i64 -1
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !75
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %40, %50
  %45 = phi i64 [ 0, %40 ], [ %51, %50 ]
  %46 = getelementptr inbounds %struct.atom_t, ptr %42, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %3) #36
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %43
  br i1 %52, label %55, label %44, !llvm.loop !114

53:                                               ; preds = %44
  %54 = trunc i64 %45 to i32
  br label %55

55:                                               ; preds = %53, %50, %30
  %56 = phi i32 [ -1, %30 ], [ %54, %53 ], [ -1, %50 ]
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  %61 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %3, ptr noundef %60) #35
  %62 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #35
  br label %134

63:                                               ; preds = %55
  %64 = icmp slt i32 %4, 1
  %65 = icmp slt i32 %25, %4
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %4, ptr noundef %1) #35
  %69 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @e_msg) #35
  br label %134

70:                                               ; preds = %63
  %71 = zext nneg i32 %4 to i64
  %72 = getelementptr ptr, ptr %32, i64 %71
  %73 = getelementptr ptr, ptr %72, i64 -1
  %74 = load ptr, ptr %73, align 8, !tbaa !88
  %75 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 15
  %76 = load i32, ptr %75, align 8, !tbaa !75
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !76
  %81 = zext nneg i32 %76 to i64
  br label %82

82:                                               ; preds = %78, %88
  %83 = phi i64 [ 0, %78 ], [ %89, %88 ]
  %84 = getelementptr inbounds %struct.atom_t, ptr %80, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !77
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(1) %5) #36
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = add nuw nsw i64 %83, 1
  %90 = icmp eq i64 %89, %81
  br i1 %90, label %93, label %82, !llvm.loop !115

91:                                               ; preds = %82
  %92 = trunc i64 %83 to i32
  br label %93

93:                                               ; preds = %91, %88, %70
  %94 = phi i32 [ -1, %70 ], [ %92, %91 ], [ -1, %88 ]
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %5, ptr noundef %98) #35
  %100 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @e_msg) #35
  br label %134

101:                                              ; preds = %93
  %102 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !63
  %107 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !63
  %109 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %106, i32 noundef %2, ptr noundef %3, ptr noundef %108, i32 noundef %4, ptr noundef %5) #35
  %110 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %134

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !66
  store ptr %113, ptr %102, align 8, !tbaa !67
  store ptr %102, ptr %112, align 8, !tbaa !66
  %114 = add nuw nsw i32 %56, 1
  %115 = getelementptr inbounds %struct.extbond_t, ptr %102, i64 0, i32 1
  store i32 %114, ptr %115, align 8, !tbaa !116
  %116 = getelementptr inbounds %struct.extbond_t, ptr %102, i64 0, i32 2
  store i32 %4, ptr %116, align 4, !tbaa !117
  %117 = add nuw nsw i32 %94, 1
  %118 = getelementptr inbounds %struct.extbond_t, ptr %102, i64 0, i32 3
  store i32 %117, ptr %118, align 8, !tbaa !118
  %119 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = getelementptr inbounds %struct.residue_t, ptr %36, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !63
  %126 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %123, i32 noundef %4, ptr noundef %5, ptr noundef %125, i32 noundef %2, ptr noundef %3) #35
  %127 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %134

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.residue_t, ptr %74, i64 0, i32 10
  %130 = load ptr, ptr %129, align 8, !tbaa !66
  store ptr %130, ptr %119, align 8, !tbaa !67
  store ptr %119, ptr %129, align 8, !tbaa !66
  %131 = getelementptr inbounds %struct.extbond_t, ptr %119, i64 0, i32 1
  store i32 %117, ptr %131, align 8, !tbaa !116
  %132 = getelementptr inbounds %struct.extbond_t, ptr %119, i64 0, i32 2
  store i32 %2, ptr %132, align 4, !tbaa !117
  %133 = getelementptr inbounds %struct.extbond_t, ptr %119, i64 0, i32 3
  store i32 %114, ptr %133, align 8, !tbaa !118
  br label %134

134:                                              ; preds = %128, %121, %104, %96, %67, %58, %27, %19
  %135 = phi i32 [ 1, %19 ], [ 1, %27 ], [ 1, %58 ], [ 1, %67 ], [ 1, %96 ], [ 1, %104 ], [ 1, %121 ], [ 0, %128 ]
  ret i32 %135
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @mergestr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !62 {
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.13) #36
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(6) @.str.14) #36
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9, %6
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.14) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #36
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %2, ptr noundef %5) #35
  %20 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @e_msg) #35
  br label %293

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ true, %15 ]
  %23 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %31
  %27 = phi ptr [ %33, %31 ], [ %24, %21 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %1) #36
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.strand_t, ptr %27, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !119

35:                                               ; preds = %31, %26, %21
  %36 = phi ptr [ null, %21 ], [ null, %31 ], [ %27, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1) #35
  br label %293

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.molecule_t, ptr %3, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %51, %49 ], [ %42, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %4) #36
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.strand_t, ptr %45, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !88
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !120

53:                                               ; preds = %49, %44, %40
  %54 = phi ptr [ null, %40 ], [ null, %49 ], [ %45, %44 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %4) #35
  br label %293

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !86
  %61 = getelementptr inbounds %struct.strand_t, ptr %54, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !86
  %63 = add nsw i32 %62, %60
  %64 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !110
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %58
  %68 = add nsw i32 %63, 10
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 3
  %71 = tail call noalias ptr @malloc(i64 noundef %70) #34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = icmp sgt i32 %60, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %77 = zext nneg i32 %60 to i64
  br label %80

78:                                               ; preds = %67
  %79 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #35
  br label %293

80:                                               ; preds = %75, %80
  %81 = phi i64 [ 0, %75 ], [ %86, %80 ]
  %82 = load ptr, ptr %76, align 8, !tbaa !87
  %83 = getelementptr inbounds ptr, ptr %82, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !88
  %85 = getelementptr inbounds ptr, ptr %71, i64 %81
  store ptr %84, ptr %85, align 8, !tbaa !88
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, %77
  br i1 %87, label %88, label %80, !llvm.loop !121

88:                                               ; preds = %80, %73
  %89 = icmp sgt i32 %65, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !87
  tail call void @free(ptr noundef %92) #35
  br label %93

93:                                               ; preds = %90, %88
  %94 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  store ptr %71, ptr %94, align 8, !tbaa !87
  store i32 %68, ptr %64, align 4, !tbaa !110
  br label %95

95:                                               ; preds = %93, %58
  %96 = icmp eq ptr %0, %3
  br i1 %22, label %169, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %59, align 8, !tbaa !86
  %99 = load i32, ptr %61, align 8, !tbaa !86
  %100 = icmp sgt i32 %99, 0
  br i1 %96, label %106, label %101

101:                                              ; preds = %97
  br i1 %100, label %102, label %143

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.strand_t, ptr %54, i64 0, i32 7
  %104 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %105 = sext i32 %98 to i64
  br label %112

106:                                              ; preds = %97
  br i1 %100, label %107, label %143

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.strand_t, ptr %54, i64 0, i32 7
  %109 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %110 = sext i32 %98 to i64
  %111 = zext nneg i32 %99 to i64
  br label %129

112:                                              ; preds = %102, %112
  %113 = phi i64 [ 0, %102 ], [ %125, %112 ]
  %114 = load ptr, ptr %103, align 8, !tbaa !87
  %115 = getelementptr inbounds ptr, ptr %114, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !88
  %117 = tail call ptr @copyresidue(ptr noundef %116) #35
  %118 = load ptr, ptr %104, align 8, !tbaa !87
  %119 = add nsw i64 %113, %105
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  store ptr %117, ptr %120, align 8, !tbaa !88
  %121 = load ptr, ptr %104, align 8, !tbaa !87
  %122 = getelementptr inbounds ptr, ptr %121, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !88
  %124 = getelementptr inbounds %struct.residue_t, ptr %123, i64 0, i32 9
  store ptr %36, ptr %124, align 8, !tbaa !112
  %125 = add nuw nsw i64 %113, 1
  %126 = load i32, ptr %61, align 8, !tbaa !86
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %112, label %143, !llvm.loop !122

129:                                              ; preds = %107, %129
  %130 = phi i64 [ 0, %107 ], [ %141, %129 ]
  %131 = load ptr, ptr %108, align 8, !tbaa !87
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !88
  %134 = load ptr, ptr %109, align 8, !tbaa !87
  %135 = add nsw i64 %130, %110
  %136 = getelementptr inbounds ptr, ptr %134, i64 %135
  store ptr %133, ptr %136, align 8, !tbaa !88
  %137 = load ptr, ptr %109, align 8, !tbaa !87
  %138 = getelementptr inbounds ptr, ptr %137, i64 %135
  %139 = load ptr, ptr %138, align 8, !tbaa !88
  %140 = getelementptr inbounds %struct.residue_t, ptr %139, i64 0, i32 9
  store ptr %36, ptr %140, align 8, !tbaa !112
  %141 = add nuw nsw i64 %130, 1
  %142 = icmp eq i64 %141, %111
  br i1 %142, label %143, label %129, !llvm.loop !123

143:                                              ; preds = %112, %129, %101, %106
  %144 = load i32, ptr %61, align 8, !tbaa !86
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %259

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !87
  %149 = sext i32 %98 to i64
  %150 = zext nneg i32 %144 to i64
  %151 = getelementptr ptr, ptr %148, i64 %149
  br label %152

152:                                              ; preds = %146, %166
  %153 = phi i64 [ 0, %146 ], [ %167, %166 ]
  %154 = getelementptr ptr, ptr %151, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !88
  %156 = getelementptr inbounds %struct.residue_t, ptr %155, i64 0, i32 10
  %157 = load ptr, ptr %156, align 8, !tbaa !88
  %158 = icmp eq ptr %157, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %152, %159
  %160 = phi ptr [ %164, %159 ], [ %157, %152 ]
  %161 = getelementptr inbounds %struct.extbond_t, ptr %160, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !117
  %163 = add nsw i32 %162, %98
  store i32 %163, ptr %161, align 4, !tbaa !117
  %164 = load ptr, ptr %160, align 8, !tbaa !88
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %159, !llvm.loop !124

166:                                              ; preds = %159, %152
  %167 = add nuw nsw i64 %153, 1
  %168 = icmp eq i64 %167, %150
  br i1 %168, label %259, label %152, !llvm.loop !125

169:                                              ; preds = %95
  %170 = load i32, ptr %61, align 8, !tbaa !86
  %171 = load i32, ptr %59, align 8, !tbaa !86
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %175 = zext nneg i32 %171 to i64
  %176 = sext i32 %170 to i64
  br label %177

177:                                              ; preds = %173, %177
  %178 = phi i64 [ %175, %173 ], [ %179, %177 ]
  %179 = add nsw i64 %178, -1
  %180 = load ptr, ptr %174, align 8, !tbaa !87
  %181 = getelementptr inbounds ptr, ptr %180, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !88
  %183 = getelementptr ptr, ptr %180, i64 %179
  %184 = getelementptr ptr, ptr %183, i64 %176
  store ptr %182, ptr %184, align 8, !tbaa !88
  %185 = icmp sgt i64 %178, 1
  br i1 %185, label %177, label %186, !llvm.loop !126

186:                                              ; preds = %177, %169
  br i1 %96, label %193, label %187

187:                                              ; preds = %186
  %188 = load i32, ptr %61, align 8, !tbaa !86
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %232

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.strand_t, ptr %54, i64 0, i32 7
  %192 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  br label %199

193:                                              ; preds = %186
  %194 = icmp sgt i32 %170, 0
  br i1 %194, label %195, label %232

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.strand_t, ptr %54, i64 0, i32 7
  %197 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %198 = zext nneg i32 %170 to i64
  br label %215

199:                                              ; preds = %190, %199
  %200 = phi i64 [ 0, %190 ], [ %211, %199 ]
  %201 = load ptr, ptr %191, align 8, !tbaa !87
  %202 = getelementptr inbounds ptr, ptr %201, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !88
  %204 = tail call ptr @copyresidue(ptr noundef %203) #35
  %205 = load ptr, ptr %192, align 8, !tbaa !87
  %206 = getelementptr inbounds ptr, ptr %205, i64 %200
  store ptr %204, ptr %206, align 8, !tbaa !88
  %207 = load ptr, ptr %192, align 8, !tbaa !87
  %208 = getelementptr inbounds ptr, ptr %207, i64 %200
  %209 = load ptr, ptr %208, align 8, !tbaa !88
  %210 = getelementptr inbounds %struct.residue_t, ptr %209, i64 0, i32 9
  store ptr %36, ptr %210, align 8, !tbaa !112
  %211 = add nuw nsw i64 %200, 1
  %212 = load i32, ptr %61, align 8, !tbaa !86
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %211, %213
  br i1 %214, label %199, label %230, !llvm.loop !127

215:                                              ; preds = %195, %215
  %216 = phi i64 [ 0, %195 ], [ %226, %215 ]
  %217 = load ptr, ptr %196, align 8, !tbaa !87
  %218 = getelementptr inbounds ptr, ptr %217, i64 %216
  %219 = load ptr, ptr %218, align 8, !tbaa !88
  %220 = load ptr, ptr %197, align 8, !tbaa !87
  %221 = getelementptr inbounds ptr, ptr %220, i64 %216
  store ptr %219, ptr %221, align 8, !tbaa !88
  %222 = load ptr, ptr %197, align 8, !tbaa !87
  %223 = getelementptr inbounds ptr, ptr %222, i64 %216
  %224 = load ptr, ptr %223, align 8, !tbaa !88
  %225 = getelementptr inbounds %struct.residue_t, ptr %224, i64 0, i32 9
  store ptr %36, ptr %225, align 8, !tbaa !112
  %226 = add nuw nsw i64 %216, 1
  %227 = icmp eq i64 %226, %198
  br i1 %227, label %228, label %215, !llvm.loop !128

228:                                              ; preds = %215
  %229 = trunc i64 %226 to i32
  br label %232

230:                                              ; preds = %199
  %231 = trunc i64 %211 to i32
  br label %232

232:                                              ; preds = %230, %228, %187, %193
  %233 = phi i32 [ 0, %193 ], [ 0, %187 ], [ %229, %228 ], [ %231, %230 ]
  %234 = load i32, ptr %59, align 8, !tbaa !86
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %259

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.strand_t, ptr %36, i64 0, i32 7
  %238 = load ptr, ptr %237, align 8, !tbaa !87
  %239 = zext i32 %233 to i64
  %240 = zext nneg i32 %234 to i64
  %241 = getelementptr ptr, ptr %238, i64 %239
  br label %242

242:                                              ; preds = %236, %256
  %243 = phi i64 [ 0, %236 ], [ %257, %256 ]
  %244 = getelementptr ptr, ptr %241, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !88
  %246 = getelementptr inbounds %struct.residue_t, ptr %245, i64 0, i32 10
  %247 = load ptr, ptr %246, align 8, !tbaa !88
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %242, %249
  %250 = phi ptr [ %254, %249 ], [ %247, %242 ]
  %251 = getelementptr inbounds %struct.extbond_t, ptr %250, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !117
  %253 = add nsw i32 %252, %233
  store i32 %253, ptr %251, align 4, !tbaa !117
  %254 = load ptr, ptr %250, align 8, !tbaa !88
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %249, !llvm.loop !124

256:                                              ; preds = %249, %242
  %257 = add nuw nsw i64 %243, 1
  %258 = icmp eq i64 %257, %240
  br i1 %258, label %259, label %242, !llvm.loop !129

259:                                              ; preds = %166, %256, %143, %232
  store i32 %63, ptr %59, align 8, !tbaa !86
  br i1 %96, label %260, label %291

260:                                              ; preds = %259
  %261 = load ptr, ptr %23, align 8, !tbaa !88
  %262 = icmp eq ptr %261, null
  br i1 %262, label %276, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %261, align 8, !tbaa !85
  %265 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(1) %4) #36
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %276, label %271

267:                                              ; preds = %271
  %268 = load ptr, ptr %274, align 8, !tbaa !85
  %269 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(1) %4) #36
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271, !llvm.loop !130

271:                                              ; preds = %263, %267
  %272 = phi ptr [ %274, %267 ], [ %261, %263 ]
  %273 = getelementptr inbounds %struct.strand_t, ptr %272, i64 0, i32 4
  %274 = load ptr, ptr %273, align 8, !tbaa !88
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %267, !llvm.loop !130

276:                                              ; preds = %267, %271, %263, %260
  %277 = phi ptr [ null, %260 ], [ null, %263 ], [ %272, %271 ], [ %272, %267 ]
  %278 = phi ptr [ null, %260 ], [ %261, %263 ], [ null, %271 ], [ %274, %267 ]
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %4) #35
  br label %291

282:                                              ; preds = %276
  %283 = icmp eq ptr %277, null
  %284 = getelementptr inbounds %struct.strand_t, ptr %278, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !83
  %286 = getelementptr inbounds %struct.strand_t, ptr %277, i64 0, i32 4
  %287 = select i1 %283, ptr %23, ptr %286
  store ptr %285, ptr %287, align 8, !tbaa !88
  %288 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !54
  %290 = add nsw i32 %289, -1
  store i32 %290, ptr %288, align 8, !tbaa !54
  br label %291

291:                                              ; preds = %282, %280, %259
  %292 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %292, align 8, !tbaa !60
  tail call void @upd_molnumbers(ptr noundef %0)
  br label %293

293:                                              ; preds = %291, %78, %56, %38, %18
  %294 = phi i32 [ 1, %38 ], [ 1, %56 ], [ 1, %78 ], [ 0, %291 ], [ 1, %18 ]
  ret i32 %294
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @upd_molnumbers(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !62 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %52
  %6 = phi ptr [ %56, %52 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %52 ], [ 0, %1 ]
  %8 = phi i32 [ %54, %52 ], [ 0, %1 ]
  %9 = phi i32 [ %53, %52 ], [ 0, %1 ]
  %10 = add nuw nsw i32 %7, 1
  %11 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !86
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = zext nneg i32 %13 to i64
  br label %23

19:                                               ; preds = %42, %23
  %20 = phi i32 [ %27, %23 ], [ %46, %42 ]
  %21 = phi i32 [ %26, %23 ], [ %48, %42 ]
  %22 = icmp eq i64 %32, %18
  br i1 %22, label %52, label %23, !llvm.loop !131

23:                                               ; preds = %15, %19
  %24 = phi i64 [ 0, %15 ], [ %32, %19 ]
  %25 = phi i32 [ %8, %15 ], [ %30, %19 ]
  %26 = phi i32 [ %9, %15 ], [ %21, %19 ]
  %27 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %28 = getelementptr inbounds ptr, ptr %17, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = add nsw i32 %25, 1
  %31 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 2
  store i32 %30, ptr %31, align 4, !tbaa !132
  %32 = add nuw nsw i64 %24, 1
  %33 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 3
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 8, !tbaa !133
  %35 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !75
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %19

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = zext nneg i32 %36 to i64
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ 0, %38 ], [ %50, %42 ]
  %44 = phi i32 [ %26, %38 ], [ %48, %42 ]
  %45 = phi i32 [ %27, %38 ], [ %46, %42 ]
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %43, i32 15
  store i32 %46, ptr %47, align 4, !tbaa !134
  %48 = add nsw i32 %44, 1
  %49 = getelementptr inbounds %struct.atom_t, ptr %40, i64 %43, i32 14
  store i32 %48, ptr %49, align 8, !tbaa !135
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %41
  br i1 %51, label %19, label %42, !llvm.loop !136

52:                                               ; preds = %19, %5
  %53 = phi i32 [ %9, %5 ], [ %21, %19 ]
  %54 = phi i32 [ %8, %5 ], [ %30, %19 ]
  %55 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !88
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !137

58:                                               ; preds = %52, %1
  %59 = phi i32 [ 0, %1 ], [ %53, %52 ]
  %60 = phi i32 [ 0, %1 ], [ %54, %52 ]
  %61 = phi i32 [ 0, %1 ], [ %10, %52 ]
  %62 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  store i32 %60, ptr %63, align 8, !tbaa !59
  %64 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 4
  store i32 %59, ptr %64, align 4, !tbaa !138
  %65 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 1, ptr %65, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @countmolstrands(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = and i32 %11, 1
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !139

17:                                               ; preds = %7, %2
  %18 = phi i32 [ 0, %2 ], [ %13, %7 ]
  ret i32 %18
}

declare i32 @select_atoms(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @countstrandresidues(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !62 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp ne ptr %4, null
  %6 = icmp sgt i32 %1, 1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %2 ]
  %10 = phi i32 [ %11, %8 ], [ 1, %2 ]
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp ne ptr %13, null
  %15 = icmp slt i32 %11, %1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17, !llvm.loop !140

17:                                               ; preds = %8, %2
  %18 = phi ptr [ %4, %2 ], [ %13, %8 ]
  %19 = getelementptr inbounds %struct.strand_t, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !86
  ret i32 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @countmolres(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2, %28
  %8 = phi ptr [ %31, %28 ], [ %5, %2 ]
  %9 = phi i32 [ %29, %28 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %26, %17 ]
  %19 = phi i32 [ %9, %13 ], [ %25, %17 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !141
  %24 = and i32 %23, 1
  %25 = add i32 %24, %19
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %17, !llvm.loop !142

28:                                               ; preds = %17, %7
  %29 = phi i32 [ %9, %7 ], [ %25, %17 ]
  %30 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !143

33:                                               ; preds = %28, %2
  %34 = phi i32 [ 0, %2 ], [ %29, %28 ]
  ret i32 %34
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @countmolatoms(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2, %42
  %8 = phi ptr [ %45, %42 ], [ %5, %2 ]
  %9 = phi i32 [ %43, %42 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %40, %38 ]
  %19 = phi i32 [ %9, %13 ], [ %39, %38 ]
  %20 = getelementptr inbounds ptr, ptr %15, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.residue_t, ptr %21, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %36, %29 ]
  %31 = phi i32 [ %19, %25 ], [ %35, %29 ]
  %32 = getelementptr inbounds %struct.atom_t, ptr %27, i64 %30, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !144
  %34 = and i32 %33, 1
  %35 = add i32 %34, %31
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !145

38:                                               ; preds = %29, %17
  %39 = phi i32 [ %19, %17 ], [ %35, %29 ]
  %40 = add nuw nsw i64 %18, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %42, label %17, !llvm.loop !146

42:                                               ; preds = %38, %7
  %43 = phi i32 [ %9, %7 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7, !llvm.loop !147

47:                                               ; preds = %42, %2
  %48 = phi i32 [ 0, %2 ], [ %43, %42 ]
  ret i32 %48
}

; Function Attrs: cold nounwind uwtable
define dso_local double @dist(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  %6 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #35
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #35
  %8 = load double, ptr %4, align 16, !tbaa !50
  %9 = load double, ptr %5, align 16, !tbaa !50
  %10 = fsub double %8, %9
  %11 = getelementptr inbounds double, ptr %4, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds double, ptr %5, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = fsub double %12, %14
  %16 = getelementptr inbounds double, ptr %4, i64 2
  %17 = load double, ptr %16, align 16, !tbaa !50
  %18 = getelementptr inbounds double, ptr %5, i64 2
  %19 = load double, ptr %18, align 16, !tbaa !50
  %20 = fsub double %17, %19
  %21 = fmul double %15, %15
  %22 = call double @llvm.fmuladd.f64(double %10, double %10, double %21)
  %23 = call double @llvm.fmuladd.f64(double %20, double %20, double %22)
  %24 = call double @sqrt(double noundef %23) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #35
  ret double %24
}

declare i32 @setpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @distp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !62 {
  %3 = load double, ptr %0, align 8, !tbaa !50
  %4 = load double, ptr %1, align 8, !tbaa !50
  %5 = fsub double %3, %4
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !50
  %10 = fsub double %7, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = fsub double %12, %14
  %16 = fmul double %10, %10
  %17 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %17)
  %19 = tail call double @sqrt(double noundef %18) #35
  ret double %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: cold nounwind uwtable
define dso_local double @angle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !62 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #35
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %9 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %10 = call i32 @setpoint(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7) #35
  %11 = call double @anglep(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  ret double %11
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local double @anglep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #13 !prof !62 {
  %4 = load double, ptr %0, align 8, !tbaa !50
  %5 = load double, ptr %1, align 8, !tbaa !50
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds double, ptr %1, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !50
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !50
  %16 = fsub double %13, %15
  %17 = load double, ptr %2, align 8, !tbaa !50
  %18 = fsub double %17, %5
  %19 = getelementptr inbounds double, ptr %2, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !50
  %21 = fsub double %20, %10
  %22 = getelementptr inbounds double, ptr %2, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !50
  %24 = fsub double %23, %15
  %25 = fmul double %11, %11
  %26 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %26)
  %28 = tail call double @sqrt(double noundef %27) #35
  %29 = fmul double %21, %21
  %30 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %29)
  %31 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %30)
  %32 = tail call double @sqrt(double noundef %31) #35
  %33 = fcmp oeq double %28, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load ptr, ptr @stderr, align 8, !tbaa !88
  %36 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 45, i64 1, ptr %35) #37
  br label %50

37:                                               ; preds = %3
  %38 = fcmp oeq double %32, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load ptr, ptr @stderr, align 8, !tbaa !88
  %41 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 45, i64 1, ptr %40) #37
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local double @torsion(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !62 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #35
  %10 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #35
  %11 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7) #35
  %12 = call i32 @setpoint(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %8) #35
  %13 = call i32 @setpoint(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %9) #35
  %14 = call double @torsionp(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #35
  ret double %14
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @torsionp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !prof !62 {
  %5 = load double, ptr %0, align 8, !tbaa !50
  %6 = load double, ptr %1, align 8, !tbaa !50
  %7 = fsub double %5, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds double, ptr %1, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !50
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds double, ptr %1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !50
  %17 = fsub double %14, %16
  %18 = load double, ptr %2, align 8, !tbaa !50
  %19 = fsub double %18, %6
  %20 = getelementptr inbounds double, ptr %2, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !50
  %22 = fsub double %21, %11
  %23 = getelementptr inbounds double, ptr %2, i64 2
  %24 = load double, ptr %23, align 8, !tbaa !50
  %25 = fsub double %24, %16
  %26 = load double, ptr %3, align 8, !tbaa !50
  %27 = fsub double %18, %26
  %28 = getelementptr inbounds double, ptr %3, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !50
  %30 = fsub double %21, %29
  %31 = getelementptr inbounds double, ptr %3, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !50
  %33 = fsub double %24, %32
  %34 = fneg double %17
  %35 = fmul double %22, %34
  %36 = tail call double @llvm.fmuladd.f64(double %12, double %25, double %35)
  %37 = fneg double %7
  %38 = fmul double %25, %37
  %39 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %38)
  %40 = fneg double %12
  %41 = fmul double %19, %40
  %42 = tail call double @llvm.fmuladd.f64(double %7, double %22, double %41)
  %43 = fneg double %22
  %44 = fmul double %33, %43
  %45 = tail call double @llvm.fmuladd.f64(double %25, double %30, double %44)
  %46 = fneg double %25
  %47 = fmul double %27, %46
  %48 = tail call double @llvm.fmuladd.f64(double %19, double %33, double %47)
  %49 = fneg double %19
  %50 = fmul double %30, %49
  %51 = tail call double @llvm.fmuladd.f64(double %22, double %27, double %50)
  %52 = fmul double %39, %39
  %53 = tail call double @llvm.fmuladd.f64(double %36, double %36, double %52)
  %54 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %53)
  %55 = fmul double %48, %48
  %56 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %55)
  %57 = tail call double @llvm.fmuladd.f64(double %51, double %51, double %56)
  %58 = fmul double %39, %48
  %59 = tail call double @llvm.fmuladd.f64(double %36, double %45, double %58)
  %60 = tail call double @llvm.fmuladd.f64(double %42, double %51, double %59)
  %61 = fmul double %54, %57
  %62 = tail call double @sqrt(double noundef %61) #35
  %63 = fdiv double %60, %62
  %64 = fcmp olt double %63, -1.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %4
  %66 = fcmp ogt double %63, 1.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %4, %65, %67
  %69 = phi double [ 1.000000e+00, %67 ], [ %63, %65 ], [ -1.000000e+00, %4 ]
  %70 = tail call double @acos(double noundef %69) #35
  %71 = fneg double %39
  %72 = fmul double %51, %71
  %73 = tail call double @llvm.fmuladd.f64(double %42, double %48, double %72)
  %74 = fneg double %42
  %75 = fmul double %45, %74
  %76 = tail call double @llvm.fmuladd.f64(double %36, double %51, double %75)
  %77 = fmul double %22, %76
  %78 = tail call double @llvm.fmuladd.f64(double %19, double %73, double %77)
  %79 = fneg double %36
  %80 = fmul double %48, %79
  %81 = tail call double @llvm.fmuladd.f64(double %39, double %45, double %80)
  %82 = tail call double @llvm.fmuladd.f64(double %25, double %81, double %78)
  %83 = fcmp olt double %82, 0.000000e+00
  %84 = fneg double %70
  %85 = select i1 %83, double %84, double %70
  %86 = fsub double 0x400921FB54442D18, %85
  %87 = fmul double %86, 1.800000e+02
  %88 = fdiv double %87, 0x400921FB54442D18
  %89 = fcmp ogt double %88, 1.800000e+02
  %90 = fadd double %88, -3.600000e+02
  %91 = select i1 %89, double %90, double %88
  ret double %91
}

; Function Attrs: cold mustprogress nofree nounwind willreturn uwtable
define dso_local noundef ptr @getresname(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !62 {
  %2 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #34
  store ptr %2, ptr @getresname.rname, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %6) #35
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %2, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !62 {
  %5 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %6 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %455, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  %11 = icmp eq i32 %3, 0
  br label %12

12:                                               ; preds = %9, %451
  %13 = phi ptr [ %7, %9 ], [ %453, %451 ]
  %14 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !86
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %451

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !102
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %451, label %22

22:                                               ; preds = %17
  br i1 %10, label %215, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.residue_t, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.residue_t, ptr %26, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !75
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23, %38
  %33 = phi ptr [ %40, %38 ], [ %28, %23 ]
  %34 = phi i32 [ %39, %38 ], [ 0, %23 ]
  %35 = load ptr, ptr %33, align 8, !tbaa !77
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(2) @.str.54) #36
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = add nuw nsw i32 %34, 1
  %40 = getelementptr inbounds %struct.atom_t, ptr %33, i64 1
  %41 = icmp eq i32 %39, %30
  br i1 %41, label %42, label %32, !llvm.loop !148

42:                                               ; preds = %38, %32, %23
  %43 = phi i32 [ -1, %23 ], [ -1, %38 ], [ %34, %32 ]
  %44 = getelementptr inbounds %struct.residue_t, ptr %26, i64 0, i32 15
  %45 = icmp sgt i32 %30, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %58, %42
  %47 = icmp slt i32 %30, 1
  br i1 %47, label %74, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %28, align 8, !tbaa !77
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(4) @.str.56) #36
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %67

52:                                               ; preds = %42, %58
  %53 = phi ptr [ %60, %58 ], [ %28, %42 ]
  %54 = phi i32 [ %59, %58 ], [ 0, %42 ]
  %55 = load ptr, ptr %53, align 8, !tbaa !77
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(4) @.str.55) #36
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %52
  %59 = add nuw nsw i32 %54, 1
  %60 = getelementptr inbounds %struct.atom_t, ptr %53, i64 1
  %61 = icmp eq i32 %59, %30
  br i1 %61, label %46, label %52, !llvm.loop !148

62:                                               ; preds = %67
  %63 = getelementptr inbounds %struct.atom_t, ptr %69, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(4) @.str.56) #36
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67, !llvm.loop !148

67:                                               ; preds = %48, %62
  %68 = phi i32 [ %70, %62 ], [ 0, %48 ]
  %69 = phi ptr [ %63, %62 ], [ %28, %48 ]
  %70 = add nuw nsw i32 %68, 1
  %71 = icmp eq i32 %70, %30
  br i1 %71, label %72, label %62, !llvm.loop !148

72:                                               ; preds = %67, %62
  %73 = icmp sge i32 %70, %30
  br label %74

74:                                               ; preds = %72, %48, %46
  %75 = phi i1 [ %47, %46 ], [ %47, %48 ], [ %73, %72 ]
  %76 = icmp eq i32 %43, -1
  %77 = or i1 %76, %75
  br i1 %77, label %215, label %80

78:                                               ; preds = %52
  %79 = icmp eq i32 %43, -1
  br i1 %79, label %215, label %80

80:                                               ; preds = %78, %74
  %81 = icmp sgt i32 %30, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %80, %88
  %83 = phi ptr [ %90, %88 ], [ %28, %80 ]
  %84 = phi i32 [ %89, %88 ], [ 0, %80 ]
  %85 = load ptr, ptr %83, align 8, !tbaa !77
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.57) #36
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = add nuw nsw i32 %84, 1
  %90 = getelementptr inbounds %struct.atom_t, ptr %83, i64 1
  %91 = icmp eq i32 %89, %30
  br i1 %91, label %92, label %82, !llvm.loop !148

92:                                               ; preds = %88, %82, %80
  %93 = phi i32 [ -1, %80 ], [ -1, %88 ], [ %84, %82 ]
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = icmp sgt i32 %30, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %95, %103
  %98 = phi ptr [ %105, %103 ], [ %28, %95 ]
  %99 = phi i32 [ %104, %103 ], [ 0, %95 ]
  %100 = load ptr, ptr %98, align 8, !tbaa !77
  %101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(4) @.str.58) #36
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = add nuw nsw i32 %99, 1
  %105 = getelementptr inbounds %struct.atom_t, ptr %98, i64 1
  %106 = icmp eq i32 %104, %30
  br i1 %106, label %107, label %97, !llvm.loop !148

107:                                              ; preds = %103, %97, %95
  %108 = phi i32 [ -1, %95 ], [ -1, %103 ], [ %99, %97 ]
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %112, label %110

110:                                              ; preds = %92, %107
  %111 = phi i32 [ %108, %107 ], [ %93, %92 ]
  tail call fastcc void @delete_atom(ptr noundef %26, i32 noundef %111)
  br label %112

112:                                              ; preds = %110, %107
  %113 = load ptr, ptr %27, align 8, !tbaa !76
  %114 = load i32, ptr %44, align 8, !tbaa !75
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112, %122
  %117 = phi ptr [ %124, %122 ], [ %113, %112 ]
  %118 = phi i32 [ %123, %122 ], [ 0, %112 ]
  %119 = load ptr, ptr %117, align 8, !tbaa !77
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(4) @.str.59) #36
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = add nuw nsw i32 %118, 1
  %124 = getelementptr inbounds %struct.atom_t, ptr %117, i64 1
  %125 = icmp eq i32 %123, %114
  br i1 %125, label %126, label %116, !llvm.loop !148

126:                                              ; preds = %122, %116, %112
  %127 = phi i32 [ -1, %112 ], [ -1, %122 ], [ %118, %116 ]
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = icmp sgt i32 %114, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %129, %137
  %132 = phi ptr [ %139, %137 ], [ %113, %129 ]
  %133 = phi i32 [ %138, %137 ], [ 0, %129 ]
  %134 = load ptr, ptr %132, align 8, !tbaa !77
  %135 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(4) @.str.60) #36
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = add nuw nsw i32 %133, 1
  %139 = getelementptr inbounds %struct.atom_t, ptr %132, i64 1
  %140 = icmp eq i32 %138, %114
  br i1 %140, label %141, label %131, !llvm.loop !148

141:                                              ; preds = %137, %131, %129
  %142 = phi i32 [ -1, %129 ], [ -1, %137 ], [ %133, %131 ]
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %146, label %144

144:                                              ; preds = %126, %141
  %145 = phi i32 [ %142, %141 ], [ %127, %126 ]
  tail call fastcc void @delete_atom(ptr noundef %26, i32 noundef %145)
  br label %146

146:                                              ; preds = %144, %141
  %147 = load ptr, ptr %27, align 8, !tbaa !76
  %148 = sext i32 %43 to i64
  %149 = getelementptr inbounds %struct.atom_t, ptr %147, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %150, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i64 3, i1 false) #35
  %151 = load ptr, ptr %27, align 8, !tbaa !76
  %152 = load i32, ptr %44, align 8, !tbaa !75
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146, %160
  %155 = phi ptr [ %162, %160 ], [ %151, %146 ]
  %156 = phi i32 [ %161, %160 ], [ 0, %146 ]
  %157 = load ptr, ptr %155, align 8, !tbaa !77
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %157, ptr noundef nonnull dereferenceable(4) @.str.55) #36
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %154
  %161 = add nuw nsw i32 %156, 1
  %162 = getelementptr inbounds %struct.atom_t, ptr %155, i64 1
  %163 = icmp eq i32 %161, %152
  br i1 %163, label %164, label %154, !llvm.loop !148

164:                                              ; preds = %160, %154, %146
  %165 = phi i32 [ -1, %146 ], [ -1, %160 ], [ %156, %154 ]
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = icmp sgt i32 %152, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %167, %175
  %170 = phi ptr [ %177, %175 ], [ %151, %167 ]
  %171 = phi i32 [ %176, %175 ], [ 0, %167 ]
  %172 = load ptr, ptr %170, align 8, !tbaa !77
  %173 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(4) @.str.56) #36
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = add nuw nsw i32 %171, 1
  %177 = getelementptr inbounds %struct.atom_t, ptr %170, i64 1
  %178 = icmp eq i32 %176, %152
  br i1 %178, label %179, label %169, !llvm.loop !148

179:                                              ; preds = %175, %169, %167, %164
  %180 = phi i32 [ %165, %164 ], [ -1, %167 ], [ %171, %169 ], [ -1, %175 ]
  %181 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %148, i32 17
  %182 = load double, ptr %181, align 8, !tbaa !50
  %183 = sext i32 %180 to i64
  %184 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %183, i32 17
  %185 = load double, ptr %184, align 8, !tbaa !50
  %186 = fsub double %182, %185
  %187 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %148, i32 17, i64 1
  %188 = load double, ptr %187, align 8, !tbaa !50
  %189 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %183, i32 17, i64 1
  %190 = load double, ptr %189, align 8, !tbaa !50
  %191 = fsub double %188, %190
  %192 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %148, i32 17, i64 2
  %193 = load double, ptr %192, align 8, !tbaa !50
  %194 = getelementptr inbounds %struct.atom_t, ptr %151, i64 %183, i32 17, i64 2
  %195 = load double, ptr %194, align 8, !tbaa !50
  %196 = fsub double %193, %195
  %197 = fmul double %191, %191
  %198 = tail call double @llvm.fmuladd.f64(double %186, double %186, double %197)
  %199 = tail call double @llvm.fmuladd.f64(double %196, double %196, double %198)
  %200 = tail call double @sqrt(double noundef %199) #35
  %201 = fdiv double 0x3FEEB851EB851EB8, %200
  %202 = load ptr, ptr %27, align 8, !tbaa !76
  %203 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %183, i32 17
  %204 = load double, ptr %203, align 8, !tbaa !50
  %205 = tail call double @llvm.fmuladd.f64(double %201, double %186, double %204)
  %206 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %148, i32 17
  store double %205, ptr %206, align 8, !tbaa !50
  %207 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %183, i32 17, i64 1
  %208 = load double, ptr %207, align 8, !tbaa !50
  %209 = tail call double @llvm.fmuladd.f64(double %201, double %191, double %208)
  %210 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %148, i32 17, i64 1
  store double %209, ptr %210, align 8, !tbaa !50
  %211 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %183, i32 17, i64 2
  %212 = load double, ptr %211, align 8, !tbaa !50
  %213 = tail call double @llvm.fmuladd.f64(double %201, double %196, double %212)
  %214 = getelementptr inbounds %struct.atom_t, ptr %202, i64 %148, i32 17, i64 2
  store double %213, ptr %214, align 8, !tbaa !50
  br label %215

215:                                              ; preds = %78, %179, %74, %22
  br i1 %11, label %451, label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 7
  %218 = load ptr, ptr %217, align 8, !tbaa !87
  %219 = load i32, ptr %14, align 8, !tbaa !86
  %220 = sext i32 %219 to i64
  %221 = getelementptr ptr, ptr %218, i64 %220
  %222 = getelementptr ptr, ptr %221, i64 -1
  %223 = load ptr, ptr %222, align 8, !tbaa !88
  %224 = getelementptr inbounds %struct.residue_t, ptr %223, i64 0, i32 17
  %225 = load ptr, ptr %224, align 8, !tbaa !76
  %226 = getelementptr inbounds %struct.residue_t, ptr %223, i64 0, i32 15
  %227 = load i32, ptr %226, align 8, !tbaa !75
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %238, %216
  %230 = getelementptr inbounds %struct.residue_t, ptr %223, i64 0, i32 15
  %231 = icmp sgt i32 %227, 0
  br i1 %231, label %242, label %252

232:                                              ; preds = %216, %238
  %233 = phi ptr [ %240, %238 ], [ %225, %216 ]
  %234 = phi i32 [ %239, %238 ], [ 0, %216 ]
  %235 = load ptr, ptr %233, align 8, !tbaa !77
  %236 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %235, ptr noundef nonnull dereferenceable(3) @.str.62) #36
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %451, label %238

238:                                              ; preds = %232
  %239 = add nuw nsw i32 %234, 1
  %240 = getelementptr inbounds %struct.atom_t, ptr %233, i64 1
  %241 = icmp eq i32 %239, %227
  br i1 %241, label %229, label %232, !llvm.loop !148

242:                                              ; preds = %229, %248
  %243 = phi ptr [ %250, %248 ], [ %225, %229 ]
  %244 = phi i32 [ %249, %248 ], [ 0, %229 ]
  %245 = load ptr, ptr %243, align 8, !tbaa !77
  %246 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(4) @.str.63) #36
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %242
  %249 = add nuw nsw i32 %244, 1
  %250 = getelementptr inbounds %struct.atom_t, ptr %243, i64 1
  %251 = icmp eq i32 %249, %227
  br i1 %251, label %252, label %242, !llvm.loop !148

252:                                              ; preds = %248, %242, %229
  %253 = phi i32 [ -1, %229 ], [ -1, %248 ], [ %244, %242 ]
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %267

255:                                              ; preds = %252
  %256 = icmp sgt i32 %227, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %255, %263
  %258 = phi ptr [ %265, %263 ], [ %225, %255 ]
  %259 = phi i32 [ %264, %263 ], [ 0, %255 ]
  %260 = load ptr, ptr %258, align 8, !tbaa !77
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %260, ptr noundef nonnull dereferenceable(4) @.str.64) #36
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %257
  %264 = add nuw nsw i32 %259, 1
  %265 = getelementptr inbounds %struct.atom_t, ptr %258, i64 1
  %266 = icmp eq i32 %264, %227
  br i1 %266, label %267, label %257, !llvm.loop !148

267:                                              ; preds = %263, %257, %255, %252
  %268 = phi i32 [ %253, %252 ], [ -1, %255 ], [ %259, %257 ], [ -1, %263 ]
  %269 = icmp sgt i32 %227, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %267, %276
  %271 = phi ptr [ %278, %276 ], [ %225, %267 ]
  %272 = phi i32 [ %277, %276 ], [ 0, %267 ]
  %273 = load ptr, ptr %271, align 8, !tbaa !77
  %274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %273, ptr noundef nonnull dereferenceable(4) @.str.65) #36
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %270
  %277 = add nuw nsw i32 %272, 1
  %278 = getelementptr inbounds %struct.atom_t, ptr %271, i64 1
  %279 = icmp eq i32 %277, %227
  br i1 %279, label %280, label %270, !llvm.loop !148

280:                                              ; preds = %276, %270, %267
  %281 = phi i32 [ -1, %267 ], [ -1, %276 ], [ %272, %270 ]
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = icmp sgt i32 %227, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %283, %291
  %286 = phi ptr [ %293, %291 ], [ %225, %283 ]
  %287 = phi i32 [ %292, %291 ], [ 0, %283 ]
  %288 = load ptr, ptr %286, align 8, !tbaa !77
  %289 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %288, ptr noundef nonnull dereferenceable(4) @.str.66) #36
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %285
  %292 = add nuw nsw i32 %287, 1
  %293 = getelementptr inbounds %struct.atom_t, ptr %286, i64 1
  %294 = icmp eq i32 %292, %227
  br i1 %294, label %295, label %285, !llvm.loop !148

295:                                              ; preds = %291, %285, %283, %280
  %296 = phi i32 [ %281, %280 ], [ -1, %283 ], [ %287, %285 ], [ -1, %291 ]
  %297 = icmp eq i32 %296, -1
  %298 = icmp eq i32 %268, -1
  %299 = or i1 %298, %297
  br i1 %299, label %451, label %300

300:                                              ; preds = %295
  %301 = add nsw i32 %227, 1
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %302, 176
  %304 = tail call noalias ptr @malloc(i64 noundef %303) #34
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %300
  %307 = load ptr, ptr @stderr, align 8, !tbaa !88
  %308 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 28, i64 1, ptr %307) #37
  br label %381

309:                                              ; preds = %300
  %310 = shl nsw i64 %302, 2
  %311 = tail call noalias ptr @malloc(i64 noundef %310) #34
  %312 = icmp eq ptr %311, null
  br i1 %312, label %317, label %313

313:                                              ; preds = %309
  %314 = icmp sgt i32 %227, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %313
  %316 = zext nneg i32 %227 to i64
  br label %320

317:                                              ; preds = %309
  %318 = load ptr, ptr @stderr, align 8, !tbaa !88
  %319 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 34, i64 1, ptr %318) #37
  br label %381

320:                                              ; preds = %315, %320
  %321 = phi i64 [ 0, %315 ], [ %324, %320 ]
  %322 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %321
  %323 = getelementptr inbounds %struct.atom_t, ptr %225, i64 %321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %322, ptr noundef nonnull align 8 dereferenceable(176) %323, i64 176, i1 false), !tbaa.struct !149
  %324 = add nuw nsw i64 %321, 1
  %325 = icmp eq i64 %324, %316
  br i1 %325, label %326, label %320, !llvm.loop !152

326:                                              ; preds = %320, %313
  %327 = sext i32 %227 to i64
  %328 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !77
  %330 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %329) #36
  %331 = add i64 %330, 1
  %332 = tail call noalias ptr @malloc(i64 noundef %331) #34
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %326
  %335 = load ptr, ptr @stderr, align 8, !tbaa !88
  %336 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 30, i64 1, ptr %335) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

337:                                              ; preds = %326
  store ptr %332, ptr %328, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %332, ptr noundef nonnull align 1 dereferenceable(3) @.str.62, i64 3, i1 false) #35
  %338 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 2
  store i32 0, ptr %338, align 8, !tbaa !144
  %339 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 3
  store i32 0, ptr %339, align 4, !tbaa !153
  %340 = getelementptr i8, ptr %304, i64 24
  %341 = mul nsw i64 %327, 176
  %342 = getelementptr i8, ptr %340, i64 %341
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %342, i8 -1, i64 32, i1 false), !tbaa !150
  %343 = getelementptr inbounds %struct.atom_t, ptr %225, i64 0, i32 5
  %344 = load ptr, ptr %343, align 8, !tbaa !154
  %345 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 5
  store ptr %344, ptr %345, align 8, !tbaa !154
  %346 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 6
  store double 0.000000e+00, ptr %346, align 8, !tbaa !155
  %347 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 7
  store double 1.000000e+00, ptr %347, align 8, !tbaa !156
  %348 = getelementptr inbounds %struct.atom_t, ptr %304, i64 %327, i32 17
  %349 = getelementptr inbounds %struct.residue_t, ptr %223, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %348, i8 0, i64 32, i1 false)
  %350 = load ptr, ptr %349, align 8, !tbaa !74
  %351 = icmp eq ptr %350, null
  br i1 %351, label %356, label %352

352:                                              ; preds = %337
  %353 = icmp sgt i32 %227, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %352
  %355 = zext nneg i32 %227 to i64
  br label %361

356:                                              ; preds = %337
  %357 = icmp slt i32 %227, 0
  br i1 %357, label %376, label %358

358:                                              ; preds = %356
  %359 = add nuw i32 %227, 1
  %360 = zext i32 %359 to i64
  br label %370

361:                                              ; preds = %354, %361
  %362 = phi i64 [ 0, %354 ], [ %366, %361 ]
  %363 = getelementptr inbounds i32, ptr %350, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !150
  %365 = getelementptr inbounds i32, ptr %311, i64 %362
  store i32 %364, ptr %365, align 4, !tbaa !150
  %366 = add nuw nsw i64 %362, 1
  %367 = icmp eq i64 %366, %355
  br i1 %367, label %368, label %361, !llvm.loop !157

368:                                              ; preds = %361, %352
  %369 = getelementptr inbounds i32, ptr %311, i64 %327
  store i32 %227, ptr %369, align 4, !tbaa !150
  br label %376

370:                                              ; preds = %358, %370
  %371 = phi i64 [ 0, %358 ], [ %374, %370 ]
  %372 = getelementptr inbounds i32, ptr %311, i64 %371
  %373 = trunc i64 %371 to i32
  store i32 %373, ptr %372, align 4, !tbaa !150
  %374 = add nuw nsw i64 %371, 1
  %375 = icmp eq i64 %374, %360
  br i1 %375, label %376, label %370, !llvm.loop !158

376:                                              ; preds = %370, %356, %368
  store ptr %311, ptr %349, align 8, !tbaa !74
  %377 = load i32, ptr %230, align 8, !tbaa !75
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %230, align 8, !tbaa !75
  store ptr %304, ptr %224, align 8, !tbaa !76
  br i1 %351, label %380, label %379

379:                                              ; preds = %376
  tail call void @free(ptr noundef %350) #35
  br label %380

380:                                              ; preds = %379, %376
  tail call void @free(ptr noundef %225) #35
  br label %381

381:                                              ; preds = %380, %317, %306
  %382 = load ptr, ptr %224, align 8, !tbaa !76
  %383 = load i32, ptr %230, align 8, !tbaa !75
  %384 = icmp sgt i32 %383, 0
  br i1 %384, label %385, label %395

385:                                              ; preds = %381, %391
  %386 = phi ptr [ %393, %391 ], [ %382, %381 ]
  %387 = phi i32 [ %392, %391 ], [ 0, %381 ]
  %388 = load ptr, ptr %386, align 8, !tbaa !77
  %389 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %388, ptr noundef nonnull dereferenceable(3) @.str.62) #36
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %385
  %392 = add nuw nsw i32 %387, 1
  %393 = getelementptr inbounds %struct.atom_t, ptr %386, i64 1
  %394 = icmp eq i32 %392, %383
  br i1 %394, label %395, label %385, !llvm.loop !148

395:                                              ; preds = %391, %385, %381
  %396 = phi i32 [ -1, %381 ], [ -1, %391 ], [ %387, %385 ]
  %397 = sext i32 %268 to i64
  %398 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %397, i32 17
  %399 = load double, ptr %398, align 8, !tbaa !50
  %400 = sext i32 %296 to i64
  %401 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %400, i32 17
  %402 = load double, ptr %401, align 8, !tbaa !50
  %403 = fsub double %399, %402
  %404 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %397, i32 17, i64 1
  %405 = load double, ptr %404, align 8, !tbaa !50
  %406 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %400, i32 17, i64 1
  %407 = load double, ptr %406, align 8, !tbaa !50
  %408 = fsub double %405, %407
  %409 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %397, i32 17, i64 2
  %410 = load double, ptr %409, align 8, !tbaa !50
  %411 = getelementptr inbounds %struct.atom_t, ptr %382, i64 %400, i32 17, i64 2
  %412 = load double, ptr %411, align 8, !tbaa !50
  %413 = fsub double %410, %412
  %414 = fmul double %408, %408
  %415 = tail call double @llvm.fmuladd.f64(double %403, double %403, double %414)
  %416 = tail call double @llvm.fmuladd.f64(double %413, double %413, double %415)
  %417 = tail call double @sqrt(double noundef %416) #35
  %418 = fdiv double 0x3FD37EC54D4F9170, %417
  %419 = fmul double %403, %418
  %420 = fmul double %408, %418
  %421 = fmul double %413, %418
  %422 = fcmp une double %420, 0.000000e+00
  %423 = fneg double %419
  %424 = fdiv double %423, %420
  %425 = select i1 %422, double 1.000000e+00, double 0.000000e+00
  %426 = select i1 %422, double %424, double 1.000000e+00
  %427 = fmul double %426, %426
  %428 = tail call double @llvm.fmuladd.f64(double %425, double %425, double %427)
  %429 = tail call double @sqrt(double noundef %428) #35
  %430 = fdiv double 0x3FED21EBB2374F7E, %429
  %431 = fmul double %430, %425
  %432 = fmul double %430, %426
  %433 = fmul double %430, 0.000000e+00
  %434 = load ptr, ptr %224, align 8, !tbaa !76
  %435 = sext i32 %396 to i64
  %436 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %397, i32 17
  %437 = load double, ptr %436, align 8, !tbaa !50
  %438 = fadd double %419, %437
  %439 = fadd double %438, %431
  %440 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %435, i32 17
  store double %439, ptr %440, align 8, !tbaa !50
  %441 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %397, i32 17, i64 1
  %442 = load double, ptr %441, align 8, !tbaa !50
  %443 = fadd double %420, %442
  %444 = fadd double %432, %443
  %445 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %435, i32 17, i64 1
  store double %444, ptr %445, align 8, !tbaa !50
  %446 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %397, i32 17, i64 2
  %447 = load double, ptr %446, align 8, !tbaa !50
  %448 = fadd double %421, %447
  %449 = fadd double %433, %448
  %450 = getelementptr inbounds %struct.atom_t, ptr %434, i64 %435, i32 17, i64 2
  store double %449, ptr %450, align 8, !tbaa !50
  br label %451

451:                                              ; preds = %232, %395, %295, %12, %17, %215
  %452 = getelementptr inbounds %struct.strand_t, ptr %13, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !88
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %12, !llvm.loop !159

455:                                              ; preds = %451, %4
  %456 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %456, align 8, !tbaa !60
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @copyextbonds(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !105 {
  %2 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5, !prof !98

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %28, %27 ], [ %3, %1 ]
  %7 = phi ptr [ %24, %27 ], [ null, %1 ]
  %8 = phi ptr [ %9, %27 ], [ null, %1 ]
  %9 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) @e_msg, ptr noundef nonnull align 1 dereferenceable(22) @.str.20, i64 22, i1 false)
  %12 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @e_msg) #35
  br label %30

13:                                               ; preds = %5
  store ptr null, ptr %9, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.extbond_t, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.extbond_t, ptr %9, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.extbond_t, ptr %6, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !117
  %19 = getelementptr inbounds %struct.extbond_t, ptr %9, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !117
  %20 = getelementptr inbounds %struct.extbond_t, ptr %6, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !118
  %22 = getelementptr inbounds %struct.extbond_t, ptr %9, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !118
  %23 = icmp eq ptr %7, null
  %24 = select i1 %23, ptr %9, ptr %7
  %25 = icmp eq ptr %8, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store ptr %9, ptr %8, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %26, %13
  %28 = load ptr, ptr %6, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !prof !98, !llvm.loop !160

30:                                               ; preds = %27, %1, %11
  %31 = phi ptr [ null, %11 ], [ null, %1 ], [ %24, %27 ]
  ret ptr %31
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @setreskind(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #35
  %5 = load i8, ptr %2, align 1, !tbaa !151
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__ctype_b_loc() #39
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  br label %10

10:                                               ; preds = %7, %26
  %11 = phi i8 [ %5, %7 ], [ %31, %26 ]
  %12 = phi ptr [ %4, %7 ], [ %29, %26 ]
  %13 = phi ptr [ %2, %7 ], [ %30, %26 ]
  %14 = sext i8 %11 to i64
  %15 = getelementptr inbounds i16, ptr %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !161
  %17 = and i16 %16, 256
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = tail call ptr @__ctype_tolower_loc() #39
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds i32, ptr %21, i64 %14
  %23 = load i32, ptr %22, align 4, !tbaa !150
  br label %26

24:                                               ; preds = %10
  %25 = zext i8 %11 to i32
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %23, %19 ], [ %25, %24 ]
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %28, ptr %12, align 1, !tbaa !151
  %30 = getelementptr inbounds i8, ptr %13, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !151
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %10, !llvm.loop !163

33:                                               ; preds = %26, %3
  %34 = phi ptr [ %4, %3 ], [ %29, %26 ]
  store i8 0, ptr %34, align 1, !tbaa !151
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
  %44 = load ptr, ptr @stderr, align 8, !tbaa !88
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #37
  br label %46

46:                                               ; preds = %40, %37, %33, %43
  %47 = phi i32 [ 0, %43 ], [ 1, %33 ], [ 2, %37 ], [ 3, %40 ]
  %48 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %49 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52

52:                                               ; preds = %46, %74
  %53 = phi ptr [ %76, %74 ], [ %50, %46 ]
  %54 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !86
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = zext nneg i32 %55 to i64
  br label %61

61:                                               ; preds = %57, %71
  %62 = phi i64 [ 0, %57 ], [ %72, %71 ]
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  %65 = getelementptr inbounds %struct.residue_t, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !141
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.residue_t, ptr %64, i64 0, i32 7
  store i32 %47, ptr %70, align 4, !tbaa !164
  br label %71

71:                                               ; preds = %61, %69
  %72 = add nuw nsw i64 %62, 1
  %73 = icmp eq i64 %72, %60
  br i1 %73, label %74, label %61, !llvm.loop !165

74:                                               ; preds = %71, %52
  %75 = getelementptr inbounds %struct.strand_t, ptr %53, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !88
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52, !llvm.loop !166

78:                                               ; preds = %74, %46
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #35
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local i32 @setxyz_from_mol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !prof !48 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6, !prof !98

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !88
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15, !prof !167

15:                                               ; preds = %8, %64
  %16 = phi ptr [ %67, %64 ], [ %13, %8 ]
  %17 = phi i32 [ %65, %64 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %64, !prof !168

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %60
  %26 = phi i64 [ 0, %21 ], [ %62, %60 ]
  %27 = phi i32 [ %17, %21 ], [ %61, %60 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %60, !prof !169

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %56
  %38 = phi i64 [ 0, %33 ], [ %58, %56 ]
  %39 = phi i32 [ %27, %33 ], [ %57, %56 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44, !prof !170

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  %46 = load double, ptr %45, align 8, !tbaa !50
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds [3 x double], ptr %2, i64 %47
  store double %46, ptr %48, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  %50 = load double, ptr %49, align 8, !tbaa !50
  %51 = getelementptr inbounds [3 x double], ptr %2, i64 %47, i64 1
  store double %50, ptr %51, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  %53 = load double, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds [3 x double], ptr %2, i64 %47, i64 2
  store double %53, ptr %54, align 8, !tbaa !50
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
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %15, !prof !175, !llvm.loop !176

69:                                               ; preds = %64, %8
  %70 = phi i32 [ 0, %8 ], [ %65, %64 ]
  ret i32 %70
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @setxyzw_from_mol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !62 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !88
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %8, %74
  %16 = phi ptr [ %77, %74 ], [ %13, %8 ]
  %17 = phi i32 [ %75, %74 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %70
  %26 = phi i64 [ 0, %21 ], [ %72, %70 ]
  %27 = phi i32 [ %17, %21 ], [ %71, %70 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %66
  %38 = phi i64 [ 0, %33 ], [ %68, %66 ]
  %39 = phi i32 [ %27, %33 ], [ %67, %66 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  %46 = load double, ptr %45, align 8, !tbaa !50
  %47 = shl nsw i32 %39, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  store double %46, ptr %49, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  %51 = load double, ptr %50, align 8, !tbaa !50
  %52 = or disjoint i32 %47, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  store double %51, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !50
  %57 = or disjoint i32 %47, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %2, i64 %58
  store double %56, ptr %59, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 18
  %61 = load double, ptr %60, align 8, !tbaa !177
  %62 = or disjoint i32 %47, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %2, i64 %63
  store double %61, ptr %64, align 8, !tbaa !50
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
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %15, !llvm.loop !180

79:                                               ; preds = %74, %8
  %80 = phi i32 [ 0, %8 ], [ %75, %74 ]
  ret i32 %80
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @setmol_from_xyz(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !62 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !88
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %8, %65
  %16 = phi ptr [ %68, %65 ], [ %13, %8 ]
  %17 = phi i32 [ %66, %65 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %61
  %26 = phi i64 [ 0, %21 ], [ %63, %61 ]
  %27 = phi i32 [ %17, %21 ], [ %62, %61 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %57
  %38 = phi i64 [ 0, %33 ], [ %59, %57 ]
  %39 = phi i32 [ %27, %33 ], [ %58, %57 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = mul nsw i32 %39, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %2, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  store double %48, ptr %49, align 8, !tbaa !50
  %50 = getelementptr double, ptr %47, i64 1
  %51 = load double, ptr %50, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  store double %51, ptr %52, align 8, !tbaa !50
  %53 = getelementptr double, ptr %47, i64 2
  %54 = load double, ptr %53, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  store double %54, ptr %55, align 8, !tbaa !50
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
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15, !llvm.loop !183

70:                                               ; preds = %65, %8
  %71 = phi i32 [ 0, %8 ], [ %66, %65 ]
  ret i32 %71
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @setmol_from_xyzw(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !62 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !88
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = tail call i32 @select_atoms(ptr noundef %4, ptr noundef %9) #35
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %8, %74
  %16 = phi ptr [ %77, %74 ], [ %13, %8 ]
  %17 = phi i32 [ %75, %74 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %70
  %26 = phi i64 [ 0, %21 ], [ %72, %70 ]
  %27 = phi i32 [ %17, %21 ], [ %71, %70 ]
  %28 = getelementptr inbounds ptr, ptr %23, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.residue_t, ptr %29, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = zext nneg i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %66
  %38 = phi i64 [ 0, %33 ], [ %68, %66 ]
  %39 = phi i32 [ %27, %33 ], [ %67, %66 ]
  %40 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = shl nsw i32 %39, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %2, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17
  store double %48, ptr %49, align 8, !tbaa !50
  %50 = or disjoint i32 %45, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %2, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 1
  store double %53, ptr %54, align 8, !tbaa !50
  %55 = or disjoint i32 %45, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %2, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.atom_t, ptr %35, i64 %38, i32 17, i64 2
  store double %58, ptr %59, align 8, !tbaa !50
  %60 = or disjoint i32 %45, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %2, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !50
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
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %15, !llvm.loop !186

79:                                               ; preds = %74, %8
  %80 = phi i32 [ 0, %8 ], [ %75, %74 ]
  ret i32 %80
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @NAB_ainit(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !62 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %6, i1 false), !tbaa !88
  br label %7

7:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NAB_initres(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !187 {
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
  store ptr null, ptr %9, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 13
  store i32 0, ptr %10, align 8, !tbaa !189
  %11 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %12, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NAB_initatom(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !190 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4, !prof !191

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %7, align 8, !tbaa !192
  %8 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 10
  store ptr null, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 11
  store i32 0, ptr %9, align 8, !tbaa !193
  %10 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %14, align 8, !tbaa !192
  %15 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 11
  store i32 0, ptr %15, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %17

17:                                               ; preds = %11, %4
  %18 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @NAB_mnext(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #19 !prof !194 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %23, !prof !195

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8, !prof !49

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !49

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %87, label %8, !prof !49, !llvm.loop !196

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  br label %87

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.atom_t, ptr %1, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = ptrtoint ptr %1 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 176
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !75
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %40, !prof !197

37:                                               ; preds = %23
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds %struct.atom_t, ptr %27, i64 %38
  br label %87

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !112
  %43 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !86
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %61, !prof !98

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  %49 = zext nneg i32 %44 to i64
  br label %50

50:                                               ; preds = %46, %58
  %51 = phi i64 [ 0, %46 ], [ %59, %58 ]
  %52 = getelementptr inbounds ptr, ptr %48, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = icmp eq ptr %53, %25
  br i1 %54, label %55, label %58, !prof !198

55:                                               ; preds = %50
  %56 = trunc i64 %51 to i32
  %57 = add nuw nsw i32 %56, 1
  br label %61

58:                                               ; preds = %50
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %61, label %50, !prof !199, !llvm.loop !200

61:                                               ; preds = %58, %40, %55
  %62 = phi i32 [ %57, %55 ], [ %44, %40 ], [ %44, %58 ]
  %63 = icmp slt i32 %62, %44
  br i1 %63, label %64, label %72, !prof !201

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.strand_t, ptr %42, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !87
  %67 = sext i32 %62 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !88
  %70 = getelementptr inbounds %struct.residue_t, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  br label %87

72:                                               ; preds = %61, %77
  %73 = phi ptr [ %75, %77 ], [ %42, %61 ]
  %74 = getelementptr inbounds %struct.strand_t, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77, !prof !97

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.strand_t, ptr %75, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !86
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %72, label %81, !prof !49, !llvm.loop !202

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.strand_t, ptr %75, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = load ptr, ptr %83, align 8, !tbaa !88
  %85 = getelementptr inbounds %struct.residue_t, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  br label %87

87:                                               ; preds = %72, %13, %4, %81, %64, %37, %17
  %88 = phi ptr [ %39, %37 ], [ %71, %64 ], [ %86, %81 ], [ %22, %17 ], [ null, %4 ], [ null, %13 ], [ null, %72 ]
  ret ptr %88
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @NAB_rnext(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !62 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %64, label %8, !llvm.loop !203

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  br label %61

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.residue_t, ptr %1, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !86
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = zext nneg i32 %24 to i64
  br label %30

30:                                               ; preds = %26, %38
  %31 = phi i64 [ 0, %26 ], [ %39, %38 ]
  %32 = getelementptr inbounds ptr, ptr %28, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = trunc i64 %31 to i32
  %37 = add nuw nsw i32 %36, 1
  br label %41

38:                                               ; preds = %30
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %39, %29
  br i1 %40, label %41, label %30, !llvm.loop !204

41:                                               ; preds = %38, %20, %35
  %42 = phi i32 [ %37, %35 ], [ %24, %20 ], [ %24, %38 ]
  %43 = icmp slt i32 %42, %24
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.strand_t, ptr %22, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  br label %61

49:                                               ; preds = %41, %54
  %50 = phi ptr [ %52, %54 ], [ %22, %41 ]
  %51 = getelementptr inbounds %struct.strand_t, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !83
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !86
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %49, label %58, !llvm.loop !205

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.strand_t, ptr %52, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  br label %61

61:                                               ; preds = %17, %44, %58
  %62 = phi ptr [ %60, %58 ], [ %48, %44 ], [ %19, %17 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  br label %64

64:                                               ; preds = %49, %13, %61, %4
  %65 = phi ptr [ null, %4 ], [ %63, %61 ], [ null, %13 ], [ null, %49 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @NAB_anext(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #20 !prof !62 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  br i1 %3, label %19, label %6

6:                                                ; preds = %2
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 176
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !75
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

; Function Attrs: cold nofree nounwind uwtable
define dso_local ptr @NAB_mri(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !62 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.25) #36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @upd_molnumbers(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  br label %35

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.26) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @upd_molnumbers(ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 3
  br label %35

22:                                               ; preds = %12
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.27) #36
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !60
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @upd_molnumbers(ptr noundef %0)
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 4
  br label %35

32:                                               ; preds = %22
  %33 = load ptr, ptr @stderr, align 8, !tbaa !88
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.28, ptr noundef %1) #37
  br label %35

35:                                               ; preds = %32, %30, %20, %10
  %36 = phi ptr [ null, %32 ], [ %31, %30 ], [ %21, %20 ], [ %11, %10 ]
  ret ptr %36
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local nonnull ptr @NAB_rri(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !62 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.29) #36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.strand_t, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.molecule_t, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @upd_molnumbers(ptr noundef %9)
  br label %14

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 3
  br label %47

16:                                               ; preds = %2
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.30) #36
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.strand_t, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.molecule_t, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @upd_molnumbers(ptr noundef %23)
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 2
  br label %47

30:                                               ; preds = %16
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.31) #36
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.molecule_t, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !60
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  tail call void @upd_molnumbers(ptr noundef %37)
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 1
  br label %47

44:                                               ; preds = %30
  %45 = load ptr, ptr @stderr, align 8, !tbaa !88
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.32, ptr noundef %1) #37
  store i32 0, ptr @NAB_rri.rv_err, align 4, !tbaa !150
  br label %47

47:                                               ; preds = %44, %42, %28, %14
  %48 = phi ptr [ @NAB_rri.rv_err, %44 ], [ %43, %42 ], [ %29, %28 ], [ %15, %14 ]
  ret ptr %48
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local ptr @NAB_rrc(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !62 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.33) #36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 4
  br label %21

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.34) #36
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 5
  br label %21

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.35) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr @stderr, align 8, !tbaa !88
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.36, ptr noundef %1) #37
  br label %21

21:                                               ; preds = %18, %15, %10, %5
  %22 = phi ptr [ null, %18 ], [ %17, %15 ], [ %11, %10 ], [ %6, %5 ]
  ret ptr %22
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local nonnull ptr @NAB_ari(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !62 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.31) #36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.residue_t, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.molecule_t, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @upd_molnumbers(ptr noundef %11)
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 1
  br label %90

18:                                               ; preds = %2
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.29) #36
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !154
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = getelementptr inbounds %struct.strand_t, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.molecule_t, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !60
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  tail call void @upd_molnumbers(ptr noundef %27)
  br label %32

32:                                               ; preds = %31, %21
  %33 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 3
  br label %90

34:                                               ; preds = %18
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.30) #36
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !154
  %40 = getelementptr inbounds %struct.residue_t, ptr %39, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = getelementptr inbounds %struct.strand_t, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = getelementptr inbounds %struct.molecule_t, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  tail call void @upd_molnumbers(ptr noundef %43)
  br label %48

48:                                               ; preds = %47, %37
  %49 = getelementptr inbounds %struct.residue_t, ptr %39, i64 0, i32 2
  br label %90

50:                                               ; preds = %34
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.37) #36
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !154
  %56 = getelementptr inbounds %struct.residue_t, ptr %55, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !112
  %58 = getelementptr inbounds %struct.strand_t, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !103
  %60 = getelementptr inbounds %struct.molecule_t, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  tail call void @upd_molnumbers(ptr noundef %59)
  br label %64

64:                                               ; preds = %63, %53
  %65 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 15
  br label %90

66:                                               ; preds = %50
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.38) #36
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !154
  %72 = getelementptr inbounds %struct.residue_t, ptr %71, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !112
  %74 = getelementptr inbounds %struct.strand_t, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !103
  %76 = getelementptr inbounds %struct.molecule_t, ptr %75, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !60
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  tail call void @upd_molnumbers(ptr noundef %75)
  br label %80

80:                                               ; preds = %79, %69
  %81 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 14
  br label %90

82:                                               ; preds = %66
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.39) #36
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 11
  br label %90

87:                                               ; preds = %82
  %88 = load ptr, ptr @stderr, align 8, !tbaa !88
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.40, ptr noundef %1) #37
  store i32 0, ptr @NAB_ari.rv_err, align 4, !tbaa !150
  br label %90

90:                                               ; preds = %87, %85, %80, %64, %48, %32, %16
  %91 = phi ptr [ @NAB_ari.rv_err, %87 ], [ %86, %85 ], [ %81, %80 ], [ %65, %64 ], [ %49, %48 ], [ %33, %32 ], [ %17, %16 ]
  ret ptr %91
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local nonnull ptr @NAB_arf(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #13 !prof !62 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.41) #36
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  br label %40

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.42) #36
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 1
  br label %40

12:                                               ; preds = %7
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.43) #36
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17, i64 2
  br label %40

17:                                               ; preds = %12
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.44) #36
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 6
  br label %40

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.45) #36
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 7
  br label %40

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.46) #36
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 12
  br label %40

32:                                               ; preds = %27
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.47) #36
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 13
  br label %40

37:                                               ; preds = %32
  %38 = load ptr, ptr @stderr, align 8, !tbaa !88
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.48, ptr noundef %1) #37
  store double 0.000000e+00, ptr @NAB_arf.f, align 8, !tbaa !50
  br label %40

40:                                               ; preds = %37, %35, %30, %25, %20, %15, %10, %5
  %41 = phi ptr [ @NAB_arf.f, %37 ], [ %36, %35 ], [ %31, %30 ], [ %26, %25 ], [ %21, %20 ], [ %16, %15 ], [ %11, %10 ], [ %6, %5 ]
  ret ptr %41
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @NAB_arc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #35
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.49) #36
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.33) #36
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = getelementptr inbounds %struct.residue_t, ptr %11, i64 0, i32 4
  br label %88

13:                                               ; preds = %6
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.34) #36
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !154
  %19 = getelementptr inbounds %struct.residue_t, ptr %18, i64 0, i32 5
  br label %88

20:                                               ; preds = %13
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.35) #36
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  br label %88

28:                                               ; preds = %20
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.50) #36
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !154
  %34 = getelementptr inbounds %struct.residue_t, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  tail call void @upd_molnumbers(ptr noundef %37)
  %38 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !86
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.strand_t, ptr %35, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = zext nneg i32 %39 to i64
  br label %45

45:                                               ; preds = %41, %50
  %46 = phi i64 [ 0, %41 ], [ %51, %50 ]
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %55, label %45, !llvm.loop !206

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
  %61 = load ptr, ptr %60, align 8, !tbaa !88
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %67

63:                                               ; preds = %67
  %64 = getelementptr inbounds %struct.strand_t, ptr %68, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !llvm.loop !207

67:                                               ; preds = %58, %63
  %68 = phi ptr [ %65, %63 ], [ %61, %58 ]
  %69 = phi i32 [ %70, %63 ], [ 0, %58 ]
  %70 = add nuw nsw i32 %69, 1
  %71 = icmp eq ptr %68, %35
  br i1 %71, label %72, label %63

72:                                               ; preds = %63, %67, %58
  %73 = phi i32 [ 0, %58 ], [ %70, %67 ], [ %70, %63 ]
  %74 = load ptr, ptr %0, align 8, !tbaa !77
  %75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %73, i32 noundef %59, ptr noundef %74) #35
  %76 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 16
  %77 = load ptr, ptr %76, align 8, !tbaa !81
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  tail call void @free(ptr noundef %77) #35
  br label %80

80:                                               ; preds = %79, %72
  %81 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #36
  %82 = add i64 %81, 1
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #34
  store ptr %83, ptr %76, align 8, !tbaa !81
  %84 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %3) #35
  br label %88

85:                                               ; preds = %28
  %86 = load ptr, ptr @stderr, align 8, !tbaa !88
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.52, ptr noundef %1) #37
  br label %88

88:                                               ; preds = %2, %85, %80, %23, %16, %9
  %89 = phi ptr [ null, %85 ], [ %76, %80 ], [ %27, %23 ], [ %19, %16 ], [ %12, %9 ], [ %0, %2 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #35
  ret ptr %89
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @NAB_arp(ptr noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #21 !prof !62 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 17
  ret ptr %3
}

; Function Attrs: cold nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @newtransform(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #22 !prof !62 {
  %7 = alloca [4 x [4 x double]], align 16
  %8 = alloca [4 x [4 x double]], align 16
  %9 = alloca [4 x [4 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #35
  br label %10

10:                                               ; preds = %6, %19
  %11 = phi i64 [ 0, %6 ], [ %20, %19 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %17, %12 ]
  %14 = icmp eq i64 %11, %13
  %15 = select i1 %14, double 1.000000e+00, double 0.000000e+00
  %16 = getelementptr inbounds [4 x double], ptr @newtransform.mp, i64 %11, i64 %13
  store double %15, ptr %16, align 8, !tbaa !50
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %12, !llvm.loop !208

19:                                               ; preds = %12
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %10, !llvm.loop !209

22:                                               ; preds = %19
  store double %0, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3), align 16, !tbaa !50
  store double %1, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3, i64 1), align 8, !tbaa !50
  store double %2, ptr getelementptr inbounds ([4 x [4 x double]], ptr @newtransform.mp, i64 0, i64 3, i64 2), align 16, !tbaa !50
  br label %23

23:                                               ; preds = %22, %32
  %24 = phi i64 [ 0, %22 ], [ %33, %32 ]
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  %27 = icmp eq i64 %24, %26
  %28 = select i1 %27, double 1.000000e+00, double 0.000000e+00
  %29 = getelementptr inbounds [4 x double], ptr %7, i64 %24, i64 %26
  store double %28, ptr %29, align 8, !tbaa !50
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %25, !llvm.loop !208

32:                                               ; preds = %25
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %23, !llvm.loop !209

35:                                               ; preds = %32
  %36 = fcmp une double %3, 0.000000e+00
  br i1 %36, label %37, label %82

37:                                               ; preds = %35, %46
  %38 = phi i64 [ %47, %46 ], [ 0, %35 ]
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %44, %39 ]
  %41 = icmp eq i64 %38, %40
  %42 = select i1 %41, double 1.000000e+00, double 0.000000e+00
  %43 = getelementptr inbounds [4 x double], ptr %8, i64 %38, i64 %40
  store double %42, ptr %43, align 8, !tbaa !50
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %39, !llvm.loop !208

46:                                               ; preds = %39
  %47 = add nuw nsw i64 %38, 1
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %37, !llvm.loop !209

49:                                               ; preds = %46
  %50 = fmul double %3, 0x3F91DF46A2529D39
  %51 = tail call double @cos(double noundef %50) #35
  %52 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %51, ptr %52, align 8, !tbaa !50
  %53 = tail call double @sin(double noundef %50) #35
  %54 = fneg double %53
  %55 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 2
  store double %54, ptr %55, align 16, !tbaa !50
  %56 = tail call double @sin(double noundef %50) #35
  %57 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 1
  store double %56, ptr %57, align 8, !tbaa !50
  %58 = tail call double @cos(double noundef %50) #35
  %59 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 2
  store double %58, ptr %59, align 16, !tbaa !50
  br label %60

60:                                               ; preds = %49, %78
  %61 = phi i64 [ 0, %49 ], [ %79, %78 ]
  br label %62

62:                                               ; preds = %60, %75
  %63 = phi i64 [ 0, %60 ], [ %76, %75 ]
  %64 = getelementptr inbounds [4 x double], ptr %9, i64 %61, i64 %63
  store double 0.000000e+00, ptr %64, align 8, !tbaa !50
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ 0, %62 ], [ %73, %65 ]
  %67 = phi double [ 0.000000e+00, %62 ], [ %72, %65 ]
  %68 = getelementptr inbounds [4 x double], ptr %7, i64 %61, i64 %66
  %69 = load double, ptr %68, align 8, !tbaa !50
  %70 = getelementptr inbounds [4 x double], ptr %8, i64 %66, i64 %63
  %71 = load double, ptr %70, align 8, !tbaa !50
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %71, double %67)
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %65, !llvm.loop !210

75:                                               ; preds = %65
  store double %72, ptr %64, align 8, !tbaa !50
  %76 = add nuw nsw i64 %63, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %62, !llvm.loop !211

78:                                               ; preds = %75
  %79 = add nuw nsw i64 %61, 1
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %60, !llvm.loop !212

81:                                               ; preds = %78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 16 dereferenceable(128) %9, i64 128, i1 false), !tbaa !50
  br label %82

82:                                               ; preds = %81, %35
  %83 = fcmp une double %4, 0.000000e+00
  br i1 %83, label %84, label %128

84:                                               ; preds = %82, %93
  %85 = phi i64 [ %94, %93 ], [ 0, %82 ]
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i64 [ 0, %84 ], [ %91, %86 ]
  %88 = icmp eq i64 %85, %87
  %89 = select i1 %88, double 1.000000e+00, double 0.000000e+00
  %90 = getelementptr inbounds [4 x double], ptr %8, i64 %85, i64 %87
  store double %89, ptr %90, align 8, !tbaa !50
  %91 = add nuw nsw i64 %87, 1
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %93, label %86, !llvm.loop !208

93:                                               ; preds = %86
  %94 = add nuw nsw i64 %85, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %84, !llvm.loop !209

96:                                               ; preds = %93
  %97 = fmul double %4, 0x3F91DF46A2529D39
  %98 = tail call double @cos(double noundef %97) #35
  store double %98, ptr %7, align 16, !tbaa !50
  %99 = tail call double @sin(double noundef %97) #35
  %100 = fneg double %99
  %101 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 2
  store double %100, ptr %101, align 16, !tbaa !50
  %102 = tail call double @sin(double noundef %97) #35
  %103 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2
  store double %102, ptr %103, align 16, !tbaa !50
  %104 = tail call double @cos(double noundef %97) #35
  %105 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 2, i64 2
  store double %104, ptr %105, align 16, !tbaa !50
  br label %106

106:                                              ; preds = %96, %124
  %107 = phi i64 [ 0, %96 ], [ %125, %124 ]
  br label %108

108:                                              ; preds = %106, %121
  %109 = phi i64 [ 0, %106 ], [ %122, %121 ]
  %110 = getelementptr inbounds [4 x double], ptr %9, i64 %107, i64 %109
  store double 0.000000e+00, ptr %110, align 8, !tbaa !50
  br label %111

111:                                              ; preds = %108, %111
  %112 = phi i64 [ 0, %108 ], [ %119, %111 ]
  %113 = phi double [ 0.000000e+00, %108 ], [ %118, %111 ]
  %114 = getelementptr inbounds [4 x double], ptr %7, i64 %107, i64 %112
  %115 = load double, ptr %114, align 8, !tbaa !50
  %116 = getelementptr inbounds [4 x double], ptr %8, i64 %112, i64 %109
  %117 = load double, ptr %116, align 8, !tbaa !50
  %118 = tail call double @llvm.fmuladd.f64(double %115, double %117, double %113)
  %119 = add nuw nsw i64 %112, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %121, label %111, !llvm.loop !210

121:                                              ; preds = %111
  store double %118, ptr %110, align 8, !tbaa !50
  %122 = add nuw nsw i64 %109, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %108, !llvm.loop !211

124:                                              ; preds = %121
  %125 = add nuw nsw i64 %107, 1
  %126 = icmp eq i64 %125, 4
  br i1 %126, label %127, label %106, !llvm.loop !212

127:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 16 dereferenceable(128) %9, i64 128, i1 false), !tbaa !50
  br label %128

128:                                              ; preds = %127, %82
  %129 = fcmp une double %5, 0.000000e+00
  br i1 %129, label %130, label %174

130:                                              ; preds = %128, %139
  %131 = phi i64 [ %140, %139 ], [ 0, %128 ]
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ 0, %130 ], [ %137, %132 ]
  %134 = icmp eq i64 %131, %133
  %135 = select i1 %134, double 1.000000e+00, double 0.000000e+00
  %136 = getelementptr inbounds [4 x double], ptr %8, i64 %131, i64 %133
  store double %135, ptr %136, align 8, !tbaa !50
  %137 = add nuw nsw i64 %133, 1
  %138 = icmp eq i64 %137, 4
  br i1 %138, label %139, label %132, !llvm.loop !208

139:                                              ; preds = %132
  %140 = add nuw nsw i64 %131, 1
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %142, label %130, !llvm.loop !209

142:                                              ; preds = %139
  %143 = fmul double %5, 0xBF91DF46A2529D39
  %144 = tail call double @cos(double noundef %143) #35
  store double %144, ptr %7, align 16, !tbaa !50
  %145 = tail call double @sin(double noundef %143) #35
  %146 = fneg double %145
  %147 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 1
  store double %146, ptr %147, align 8, !tbaa !50
  %148 = tail call double @sin(double noundef %143) #35
  %149 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1
  store double %148, ptr %149, align 16, !tbaa !50
  %150 = tail call double @cos(double noundef %143) #35
  %151 = getelementptr inbounds [4 x [4 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %150, ptr %151, align 8, !tbaa !50
  br label %152

152:                                              ; preds = %142, %170
  %153 = phi i64 [ 0, %142 ], [ %171, %170 ]
  br label %154

154:                                              ; preds = %152, %167
  %155 = phi i64 [ 0, %152 ], [ %168, %167 ]
  %156 = getelementptr inbounds [4 x double], ptr %9, i64 %153, i64 %155
  store double 0.000000e+00, ptr %156, align 8, !tbaa !50
  br label %157

157:                                              ; preds = %154, %157
  %158 = phi i64 [ 0, %154 ], [ %165, %157 ]
  %159 = phi double [ 0.000000e+00, %154 ], [ %164, %157 ]
  %160 = getelementptr inbounds [4 x double], ptr %7, i64 %153, i64 %158
  %161 = load double, ptr %160, align 8, !tbaa !50
  %162 = getelementptr inbounds [4 x double], ptr %8, i64 %158, i64 %155
  %163 = load double, ptr %162, align 8, !tbaa !50
  %164 = tail call double @llvm.fmuladd.f64(double %161, double %163, double %159)
  %165 = add nuw nsw i64 %158, 1
  %166 = icmp eq i64 %165, 4
  br i1 %166, label %167, label %157, !llvm.loop !210

167:                                              ; preds = %157
  store double %164, ptr %156, align 8, !tbaa !50
  %168 = add nuw nsw i64 %155, 1
  %169 = icmp eq i64 %168, 4
  br i1 %169, label %170, label %154, !llvm.loop !211

170:                                              ; preds = %167
  %171 = add nuw nsw i64 %153, 1
  %172 = icmp eq i64 %171, 4
  br i1 %172, label %173, label %152, !llvm.loop !212

173:                                              ; preds = %170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 16 dereferenceable(128) %9, i64 128, i1 false), !tbaa !50
  br label %174

174:                                              ; preds = %173, %128
  br label %175

175:                                              ; preds = %174, %193
  %176 = phi i64 [ %194, %193 ], [ 0, %174 ]
  br label %177

177:                                              ; preds = %175, %190
  %178 = phi i64 [ 0, %175 ], [ %191, %190 ]
  %179 = getelementptr inbounds [4 x double], ptr %9, i64 %176, i64 %178
  store double 0.000000e+00, ptr %179, align 8, !tbaa !50
  br label %180

180:                                              ; preds = %177, %180
  %181 = phi i64 [ 0, %177 ], [ %188, %180 ]
  %182 = phi double [ 0.000000e+00, %177 ], [ %187, %180 ]
  %183 = getelementptr inbounds [4 x double], ptr %7, i64 %176, i64 %181
  %184 = load double, ptr %183, align 8, !tbaa !50
  %185 = getelementptr inbounds [4 x double], ptr @newtransform.mp, i64 %181, i64 %178
  %186 = load double, ptr %185, align 8, !tbaa !50
  %187 = tail call double @llvm.fmuladd.f64(double %184, double %186, double %182)
  %188 = add nuw nsw i64 %181, 1
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %190, label %180, !llvm.loop !210

190:                                              ; preds = %180
  store double %187, ptr %179, align 8, !tbaa !50
  %191 = add nuw nsw i64 %178, 1
  %192 = icmp eq i64 %191, 4
  br i1 %192, label %193, label %177, !llvm.loop !211

193:                                              ; preds = %190
  %194 = add nuw nsw i64 %176, 1
  %195 = icmp eq i64 %194, 4
  br i1 %195, label %196, label %175, !llvm.loop !212

196:                                              ; preds = %193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @newtransform.mp, ptr noundef nonnull align 16 dereferenceable(128) %9, i64 128, i1 false), !tbaa !50
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #35
  ret ptr @newtransform.mp
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local ptr @transformres(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !62 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %7 = tail call ptr @copyresidue(ptr noundef %1) #35
  %8 = getelementptr inbounds %struct.residue_t, ptr %7, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.residue_t, ptr %7, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr i8, ptr %13, i64 144
  %17 = getelementptr i8, ptr %13, i64 144
  br label %18

18:                                               ; preds = %11, %40
  %19 = phi i64 [ 0, %11 ], [ %41, %40 ]
  %20 = mul nuw nsw i64 %19, 176
  %21 = getelementptr i8, ptr %16, i64 %20
  %22 = mul nuw nsw i64 %19, 176
  %23 = getelementptr i8, ptr %17, i64 %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  store double 1.000000e+00, ptr %14, align 8, !tbaa !50
  br label %24

24:                                               ; preds = %37, %18
  %25 = phi i64 [ 0, %18 ], [ %38, %37 ]
  %26 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 %25
  store double 0.000000e+00, ptr %26, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 0, %24 ], [ %35, %27 ]
  %29 = phi double [ 0.000000e+00, %24 ], [ %34, %27 ]
  %30 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 %28
  %31 = load double, ptr %30, align 8, !tbaa !50
  %32 = getelementptr inbounds [4 x double], ptr %0, i64 %28, i64 %25
  %33 = load double, ptr %32, align 8, !tbaa !50
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %33, double %29)
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %27, !llvm.loop !213

37:                                               ; preds = %27
  store double %34, ptr %26, align 8, !tbaa !50
  %38 = add nuw nsw i64 %25, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %24, !llvm.loop !214

40:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa !50
  %41 = add nuw nsw i64 %19, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %18, !llvm.loop !215

43:                                               ; preds = %40, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @transformmol(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %7 = tail call i32 @select_atoms(ptr noundef %1, ptr noundef %2) #35
  %8 = getelementptr inbounds %struct.molecule_t, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %80, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  br label %13

13:                                               ; preds = %11, %75
  %14 = phi ptr [ %9, %11 ], [ %78, %75 ]
  %15 = phi i32 [ 0, %11 ], [ %76, %75 ]
  %16 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !86
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %71
  %24 = phi i64 [ 0, %19 ], [ %73, %71 ]
  %25 = phi i32 [ %15, %19 ], [ %72, %71 ]
  %26 = getelementptr inbounds ptr, ptr %21, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = getelementptr inbounds %struct.residue_t, ptr %27, i64 0, i32 15
  %29 = load i32, ptr %28, align 8, !tbaa !75
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.residue_t, ptr %27, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr i8, ptr %33, i64 144
  %36 = getelementptr i8, ptr %33, i64 144
  br label %37

37:                                               ; preds = %31, %67
  %38 = phi i64 [ 0, %31 ], [ %69, %67 ]
  %39 = phi i32 [ %25, %31 ], [ %68, %67 ]
  %40 = mul nuw nsw i64 %38, 176
  %41 = getelementptr i8, ptr %35, i64 %40
  %42 = getelementptr inbounds %struct.atom_t, ptr %33, i64 %38, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !144
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %37
  %47 = mul nuw nsw i64 %38, 176
  %48 = getelementptr i8, ptr %36, i64 %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %48, i64 24, i1 false)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %62, %46
  %50 = phi i64 [ 0, %46 ], [ %63, %62 ]
  %51 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 %50
  store double 0.000000e+00, ptr %51, align 8, !tbaa !50
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i64 [ 0, %49 ], [ %60, %52 ]
  %54 = phi double [ 0.000000e+00, %49 ], [ %59, %52 ]
  %55 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 %53
  %56 = load double, ptr %55, align 8, !tbaa !50
  %57 = getelementptr inbounds [4 x double], ptr %0, i64 %53, i64 %50
  %58 = load double, ptr %57, align 8, !tbaa !50
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %54)
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %52, !llvm.loop !213

62:                                               ; preds = %52
  store double %59, ptr %51, align 8, !tbaa !50
  %63 = add nuw nsw i64 %50, 1
  %64 = icmp eq i64 %63, 4
  br i1 %64, label %65, label %49, !llvm.loop !214

65:                                               ; preds = %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa !50
  %66 = add nsw i32 %39, 1
  br label %67

67:                                               ; preds = %65, %37
  %68 = phi i32 [ %39, %37 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %38, 1
  %70 = icmp eq i64 %69, %34
  br i1 %70, label %71, label %37, !llvm.loop !216

71:                                               ; preds = %67, %23
  %72 = phi i32 [ %25, %23 ], [ %68, %67 ]
  %73 = add nuw nsw i64 %24, 1
  %74 = icmp eq i64 %73, %22
  br i1 %74, label %75, label %23, !llvm.loop !217

75:                                               ; preds = %71, %13
  %76 = phi i32 [ %15, %13 ], [ %72, %71 ]
  %77 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %13, !llvm.loop !218

80:                                               ; preds = %75, %3
  %81 = phi i32 [ 0, %3 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  ret i32 %81
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @transformpts(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #23 !prof !62 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi i64 [ 0, %7 ], [ %30, %29 ]
  %12 = getelementptr inbounds [3 x double], ptr %1, i64 %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa !50
  store double 1.000000e+00, ptr %8, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %26, %10
  %14 = phi i64 [ 0, %10 ], [ %27, %26 ]
  %15 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 %14
  store double 0.000000e+00, ptr %15, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = phi double [ 0.000000e+00, %13 ], [ %23, %16 ]
  %19 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds [4 x double], ptr %0, i64 %17, i64 %14
  %22 = load double, ptr %21, align 8, !tbaa !50
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %18)
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %16, !llvm.loop !213

26:                                               ; preds = %16
  store double %23, ptr %15, align 8, !tbaa !50
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %13, !llvm.loop !214

29:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #35
  %30 = add nuw nsw i64 %11, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %32, label %10, !llvm.loop !219

32:                                               ; preds = %29, %3
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @updtransform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #24 !prof !62 {
  br label %3

3:                                                ; preds = %2, %21
  %4 = phi i64 [ 0, %2 ], [ %22, %21 ]
  br label %5

5:                                                ; preds = %3, %18
  %6 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %7 = getelementptr inbounds [4 x double], ptr @updtransform.mr, i64 %4, i64 %6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %16, %8 ]
  %10 = phi double [ 0.000000e+00, %5 ], [ %15, %8 ]
  %11 = getelementptr inbounds [4 x double], ptr %0, i64 %4, i64 %9
  %12 = load double, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds [4 x double], ptr %1, i64 %9, i64 %6
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = tail call double @llvm.fmuladd.f64(double %12, double %14, double %10)
  store double %15, ptr %7, align 8, !tbaa !50
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %8, !llvm.loop !210

18:                                               ; preds = %8
  %19 = add nuw nsw i64 %6, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %5, !llvm.loop !211

21:                                               ; preds = %18
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %3, !llvm.loop !212

24:                                               ; preds = %21
  ret ptr @updtransform.mr
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @trans4p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #25 !prof !62 {
  %4 = load double, ptr %1, align 8, !tbaa !50
  %5 = load double, ptr %0, align 8, !tbaa !50
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !50
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !50
  %16 = fsub double %13, %15
  %17 = fmul double %11, %11
  %18 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %18)
  %20 = tail call double @sqrt(double noundef %19) #35
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = tail call ptr @newtransform(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  br label %32

24:                                               ; preds = %3
  %25 = fdiv double %6, %20
  %26 = fdiv double %11, %20
  %27 = fdiv double %16, %20
  %28 = fmul double %25, %2
  %29 = fmul double %26, %2
  %30 = fmul double %27, %2
  %31 = tail call ptr @newtransform(double noundef %28, double noundef %29, double noundef %30, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %24, %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @trans4p.mat, ptr noundef nonnull align 16 dereferenceable(128) @newtransform.mp, i64 128, i1 false)
  ret ptr @trans4p.mat
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @NAB_matcpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #26 !prof !62 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %1, i64 128, i1 false)
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @trans4(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #0 !prof !62 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #35
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %9 = call ptr @trans4p(ptr noundef nonnull %5, ptr noundef nonnull %6, double noundef %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  ret ptr @trans4p.mat
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @rot4p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #0 !prof !62 {
  %4 = alloca [4 x [4 x double]], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x double]], align 16
  %7 = alloca [4 x [4 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #35
  %8 = load double, ptr %0, align 8, !tbaa !50
  %9 = fneg double %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !50
  %12 = fneg double %11
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = fneg double %14
  %16 = tail call ptr @newtransform(double noundef %9, double noundef %12, double noundef %15, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, ptr noundef nonnull align 16 dereferenceable(128) @newtransform.mp, i64 128, i1 false)
  %17 = load double, ptr %1, align 8, !tbaa !50
  %18 = load double, ptr %0, align 8, !tbaa !50
  %19 = fsub double %17, %18
  %20 = getelementptr inbounds double, ptr %1, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !50
  %22 = load double, ptr %10, align 8, !tbaa !50
  %23 = fsub double %21, %22
  %24 = getelementptr inbounds double, ptr %1, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !50
  %26 = load double, ptr %13, align 8, !tbaa !50
  %27 = fsub double %25, %26
  %28 = tail call double @hypot(double noundef %19, double noundef %23) #35
  %29 = tail call double @hypot(double noundef %28, double noundef %27) #35
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = phi double [ 1.000000e+00, %31 ], [ %29, %3 ]
  %34 = phi double [ 1.000000e+00, %31 ], [ %27, %3 ]
  %35 = phi double [ 0.000000e+00, %31 ], [ %23, %3 ]
  %36 = phi double [ 0.000000e+00, %31 ], [ %19, %3 ]
  %37 = fdiv double %36, %33
  %38 = fdiv double %35, %33
  %39 = fdiv double %34, %33
  %40 = fmul double %37, %37
  %41 = fmul double %38, %37
  %42 = fmul double %39, %37
  %43 = fmul double %38, %38
  %44 = fmul double %39, %38
  %45 = fmul double %39, %39
  %46 = fmul double %2, 0xBF91DF46A2529D39
  %47 = tail call double @sin(double noundef %46) #35
  %48 = tail call double @cos(double noundef %46) #35
  %49 = fmul double %47, %37
  %50 = fmul double %38, %47
  %51 = fmul double %39, %47
  %52 = fsub double 1.000000e+00, %40
  %53 = tail call double @llvm.fmuladd.f64(double %48, double %52, double %40)
  store double %53, ptr %5, align 16, !tbaa !50
  %54 = fmul double %48, %41
  %55 = fsub double %41, %54
  %56 = fsub double %55, %51
  %57 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 1
  store double %56, ptr %57, align 8, !tbaa !50
  %58 = fmul double %48, %42
  %59 = fsub double %42, %58
  %60 = fadd double %50, %59
  %61 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 2
  store double %60, ptr %61, align 16, !tbaa !50
  %62 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 3
  store double 0.000000e+00, ptr %62, align 8, !tbaa !50
  %63 = fadd double %51, %55
  %64 = getelementptr inbounds [4 x double], ptr %5, i64 1
  store double %63, ptr %64, align 16, !tbaa !50
  %65 = fsub double 1.000000e+00, %43
  %66 = tail call double @llvm.fmuladd.f64(double %48, double %65, double %43)
  %67 = getelementptr inbounds [4 x double], ptr %5, i64 1, i64 1
  store double %66, ptr %67, align 8, !tbaa !50
  %68 = fmul double %44, %48
  %69 = fsub double %44, %68
  %70 = fsub double %69, %49
  %71 = getelementptr inbounds [4 x double], ptr %5, i64 1, i64 2
  store double %70, ptr %71, align 16, !tbaa !50
  %72 = getelementptr inbounds [4 x double], ptr %5, i64 1, i64 3
  store double 0.000000e+00, ptr %72, align 8, !tbaa !50
  %73 = fsub double %59, %50
  %74 = getelementptr inbounds [4 x double], ptr %5, i64 2
  store double %73, ptr %74, align 16, !tbaa !50
  %75 = fadd double %49, %69
  %76 = getelementptr inbounds [4 x double], ptr %5, i64 2, i64 1
  store double %75, ptr %76, align 8, !tbaa !50
  %77 = fsub double 1.000000e+00, %45
  %78 = tail call double @llvm.fmuladd.f64(double %48, double %77, double %45)
  %79 = getelementptr inbounds [4 x double], ptr %5, i64 2, i64 2
  store double %78, ptr %79, align 16, !tbaa !50
  %80 = getelementptr inbounds [4 x double], ptr %5, i64 2, i64 3
  %81 = getelementptr inbounds [4 x double], ptr %5, i64 3, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %80, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %81, align 8, !tbaa !50
  %82 = load double, ptr %0, align 8, !tbaa !50
  %83 = load double, ptr %10, align 8, !tbaa !50
  %84 = load double, ptr %13, align 8, !tbaa !50
  %85 = tail call ptr @newtransform(double noundef %82, double noundef %83, double noundef %84, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %6, ptr noundef nonnull align 16 dereferenceable(128) @newtransform.mp, i64 128, i1 false)
  br label %86

86:                                               ; preds = %32, %104
  %87 = phi i64 [ 0, %32 ], [ %105, %104 ]
  br label %88

88:                                               ; preds = %86, %101
  %89 = phi i64 [ 0, %86 ], [ %102, %101 ]
  %90 = getelementptr inbounds [4 x double], ptr %7, i64 %87, i64 %89
  store double 0.000000e+00, ptr %90, align 8, !tbaa !50
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ 0, %88 ], [ %99, %91 ]
  %93 = phi double [ 0.000000e+00, %88 ], [ %98, %91 ]
  %94 = getelementptr inbounds [4 x double], ptr %4, i64 %87, i64 %92
  %95 = load double, ptr %94, align 8, !tbaa !50
  %96 = getelementptr inbounds [4 x double], ptr %5, i64 %92, i64 %89
  %97 = load double, ptr %96, align 8, !tbaa !50
  %98 = tail call double @llvm.fmuladd.f64(double %95, double %97, double %93)
  %99 = add nuw nsw i64 %92, 1
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %91, !llvm.loop !210

101:                                              ; preds = %91
  store double %98, ptr %90, align 8, !tbaa !50
  %102 = add nuw nsw i64 %89, 1
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %104, label %88, !llvm.loop !211

104:                                              ; preds = %101
  %105 = add nuw nsw i64 %87, 1
  %106 = icmp eq i64 %105, 4
  br i1 %106, label %107, label %86, !llvm.loop !212

107:                                              ; preds = %104, %125
  %108 = phi i64 [ %126, %125 ], [ 0, %104 ]
  br label %109

109:                                              ; preds = %107, %122
  %110 = phi i64 [ 0, %107 ], [ %123, %122 ]
  %111 = getelementptr inbounds [4 x double], ptr @rot4p.mat5, i64 %108, i64 %110
  store double 0.000000e+00, ptr %111, align 8, !tbaa !50
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ 0, %109 ], [ %120, %112 ]
  %114 = phi double [ 0.000000e+00, %109 ], [ %119, %112 ]
  %115 = getelementptr inbounds [4 x double], ptr %7, i64 %108, i64 %113
  %116 = load double, ptr %115, align 8, !tbaa !50
  %117 = getelementptr inbounds [4 x double], ptr %6, i64 %113, i64 %110
  %118 = load double, ptr %117, align 8, !tbaa !50
  %119 = tail call double @llvm.fmuladd.f64(double %116, double %118, double %114)
  %120 = add nuw nsw i64 %113, 1
  %121 = icmp eq i64 %120, 4
  br i1 %121, label %122, label %112, !llvm.loop !210

122:                                              ; preds = %112
  store double %119, ptr %111, align 8, !tbaa !50
  %123 = add nuw nsw i64 %110, 1
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %109, !llvm.loop !211

125:                                              ; preds = %122
  %126 = add nuw nsw i64 %108, 1
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %128, label %107, !llvm.loop !212

128:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #35
  ret ptr @rot4p.mat5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @rot4(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #0 !prof !62 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #35
  %7 = call i32 @setpoint(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #35
  %8 = call i32 @setpoint(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #35
  %9 = call ptr @rot4p(ptr noundef nonnull %5, ptr noundef nonnull %6, double noundef %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  ret ptr @rot4p.mat5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #16 !prof !96 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8, !prof !167

8:                                                ; preds = %3, %59
  %9 = phi ptr [ %63, %59 ], [ %6, %3 ]
  %10 = phi i32 [ %61, %59 ], [ 0, %3 ]
  %11 = phi i32 [ %60, %59 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !86
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %59, !prof !168

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %15, %52
  %19 = phi i64 [ 0, %15 ], [ %55, %52 ]
  %20 = phi i32 [ %10, %15 ], [ %54, %52 ]
  %21 = phi i32 [ %11, %15 ], [ %53, %52 ]
  %22 = getelementptr inbounds ptr, ptr %17, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %52, !prof !220

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = sext i32 %21 to i64
  br label %31

31:                                               ; preds = %27, %43
  %32 = phi i64 [ 0, %27 ], [ %46, %43 ]
  %33 = phi i64 [ %30, %27 ], [ %45, %43 ]
  %34 = phi i32 [ %20, %27 ], [ %44, %43 ]
  %35 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %32, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !144
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds i32, ptr %2, i64 %33
  br i1 %38, label %41, label %40, !prof !221

40:                                               ; preds = %31
  store i32 0, ptr %39, align 4, !tbaa !150
  br label %43

41:                                               ; preds = %31
  store i32 1, ptr %39, align 4, !tbaa !150
  %42 = add nsw i32 %34, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %34, %40 ], [ %42, %41 ]
  %45 = add nsw i64 %33, 1
  %46 = add nuw nsw i64 %32, 1
  %47 = load i32, ptr %24, align 8, !tbaa !75
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %31, label %50, !prof !222, !llvm.loop !223

50:                                               ; preds = %43
  %51 = trunc i64 %45 to i32
  br label %52

52:                                               ; preds = %50, %18
  %53 = phi i32 [ %21, %18 ], [ %51, %50 ]
  %54 = phi i32 [ %20, %18 ], [ %44, %50 ]
  %55 = add nuw nsw i64 %19, 1
  %56 = load i32, ptr %12, align 8, !tbaa !86
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %18, label %59, !prof !224, !llvm.loop !225

59:                                               ; preds = %52, %8
  %60 = phi i32 [ %11, %8 ], [ %53, %52 ]
  %61 = phi i32 [ %10, %8 ], [ %54, %52 ]
  %62 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %8, !prof !175, !llvm.loop !226

65:                                               ; preds = %59, %3
  %66 = phi i32 [ 0, %3 ], [ %61, %59 ]
  %67 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = icmp eq ptr %68, null
  br i1 %69, label %537, label %70, !prof !100

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !227
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %116, !prof !168

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 66
  %76 = load ptr, ptr %75, align 8, !tbaa !228
  %77 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 67
  %78 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 68
  br label %79

79:                                               ; preds = %74, %110
  %80 = phi i64 [ 0, %74 ], [ %112, %110 ]
  %81 = phi i32 [ 0, %74 ], [ %111, %110 ]
  %82 = getelementptr inbounds i32, ptr %76, i64 %80
  %83 = load i32, ptr %82, align 4, !tbaa !150
  %84 = sdiv i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !150
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89, !prof !229

89:                                               ; preds = %79
  %90 = load ptr, ptr %77, align 8, !tbaa !230
  %91 = getelementptr inbounds i32, ptr %90, i64 %80
  %92 = load i32, ptr %91, align 4, !tbaa !150
  %93 = sdiv i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %2, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !150
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %89, %79
  %99 = sext i32 %81 to i64
  %100 = getelementptr inbounds i32, ptr %76, i64 %99
  store i32 %83, ptr %100, align 4, !tbaa !150
  %101 = load ptr, ptr %77, align 8, !tbaa !230
  %102 = getelementptr inbounds i32, ptr %101, i64 %80
  %103 = load i32, ptr %102, align 4, !tbaa !150
  %104 = getelementptr inbounds i32, ptr %101, i64 %99
  store i32 %103, ptr %104, align 4, !tbaa !150
  %105 = load ptr, ptr %78, align 8, !tbaa !231
  %106 = getelementptr inbounds i32, ptr %105, i64 %80
  %107 = load i32, ptr %106, align 4, !tbaa !150
  %108 = getelementptr inbounds i32, ptr %105, i64 %99
  store i32 %107, ptr %108, align 4, !tbaa !150
  %109 = add nsw i32 %81, 1
  br label %110

110:                                              ; preds = %89, %98
  %111 = phi i32 [ %81, %89 ], [ %109, %98 ]
  %112 = add nuw nsw i64 %80, 1
  %113 = load i32, ptr %71, align 8, !tbaa !227
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %79, label %116, !prof !232, !llvm.loop !233

116:                                              ; preds = %110, %70
  %117 = phi i32 [ 0, %70 ], [ %111, %110 ]
  %118 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 6
  store i32 %117, ptr %118, align 8, !tbaa !227
  %119 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 16
  %120 = load i32, ptr %119, align 8, !tbaa !234
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %164, !prof !168

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 69
  %124 = load ptr, ptr %123, align 8, !tbaa !235
  %125 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 70
  %126 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 71
  br label %127

127:                                              ; preds = %122, %158
  %128 = phi i64 [ 0, %122 ], [ %160, %158 ]
  %129 = phi i32 [ 0, %122 ], [ %159, %158 ]
  %130 = getelementptr inbounds i32, ptr %124, i64 %128
  %131 = load i32, ptr %130, align 4, !tbaa !150
  %132 = sdiv i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %2, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !150
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %146, label %137, !prof !236

137:                                              ; preds = %127
  %138 = load ptr, ptr %125, align 8, !tbaa !237
  %139 = getelementptr inbounds i32, ptr %138, i64 %128
  %140 = load i32, ptr %139, align 4, !tbaa !150
  %141 = sdiv i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %2, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !150
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %137, %127
  %147 = sext i32 %129 to i64
  %148 = getelementptr inbounds i32, ptr %124, i64 %147
  store i32 %131, ptr %148, align 4, !tbaa !150
  %149 = load ptr, ptr %125, align 8, !tbaa !237
  %150 = getelementptr inbounds i32, ptr %149, i64 %128
  %151 = load i32, ptr %150, align 4, !tbaa !150
  %152 = getelementptr inbounds i32, ptr %149, i64 %147
  store i32 %151, ptr %152, align 4, !tbaa !150
  %153 = load ptr, ptr %126, align 8, !tbaa !238
  %154 = getelementptr inbounds i32, ptr %153, i64 %128
  %155 = load i32, ptr %154, align 4, !tbaa !150
  %156 = getelementptr inbounds i32, ptr %153, i64 %147
  store i32 %155, ptr %156, align 4, !tbaa !150
  %157 = add nsw i32 %129, 1
  br label %158

158:                                              ; preds = %137, %146
  %159 = phi i32 [ %129, %137 ], [ %157, %146 ]
  %160 = add nuw nsw i64 %128, 1
  %161 = load i32, ptr %119, align 8, !tbaa !234
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %127, label %164, !prof !239, !llvm.loop !240

164:                                              ; preds = %158, %116
  %165 = phi i32 [ 0, %116 ], [ %159, %158 ]
  %166 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 16
  store i32 %165, ptr %166, align 8, !tbaa !234
  %167 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 7
  store i32 %165, ptr %167, align 4, !tbaa !241
  %168 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 8
  %169 = load i32, ptr %168, align 8, !tbaa !242
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %225, !prof !168

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 72
  %173 = load ptr, ptr %172, align 8, !tbaa !243
  %174 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 73
  %175 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 74
  %176 = load ptr, ptr %175, align 8, !tbaa !244
  %177 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 75
  br label %178

178:                                              ; preds = %171, %219
  %179 = phi i64 [ 0, %171 ], [ %221, %219 ]
  %180 = phi i32 [ 0, %171 ], [ %220, %219 ]
  %181 = getelementptr inbounds i32, ptr %173, i64 %179
  %182 = load i32, ptr %181, align 4, !tbaa !150
  %183 = sdiv i32 %182, 3
  %184 = getelementptr inbounds i32, ptr %176, i64 %179
  %185 = load i32, ptr %184, align 4, !tbaa !150
  %186 = sdiv i32 %185, 3
  %187 = sext i32 %183 to i64
  %188 = getelementptr inbounds i32, ptr %2, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !150
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %205, label %191, !prof !245

191:                                              ; preds = %178
  %192 = load ptr, ptr %174, align 8, !tbaa !246
  %193 = getelementptr inbounds i32, ptr %192, i64 %179
  %194 = load i32, ptr %193, align 4, !tbaa !150
  %195 = sdiv i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %2, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !150
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %191
  %201 = sext i32 %186 to i64
  %202 = getelementptr inbounds i32, ptr %2, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !150
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %200, %191, %178
  %206 = sext i32 %180 to i64
  %207 = getelementptr inbounds i32, ptr %173, i64 %206
  store i32 %182, ptr %207, align 4, !tbaa !150
  %208 = load ptr, ptr %174, align 8, !tbaa !246
  %209 = getelementptr inbounds i32, ptr %208, i64 %179
  %210 = load i32, ptr %209, align 4, !tbaa !150
  %211 = getelementptr inbounds i32, ptr %208, i64 %206
  store i32 %210, ptr %211, align 4, !tbaa !150
  %212 = load i32, ptr %184, align 4, !tbaa !150
  %213 = getelementptr inbounds i32, ptr %176, i64 %206
  store i32 %212, ptr %213, align 4, !tbaa !150
  %214 = load ptr, ptr %177, align 8, !tbaa !247
  %215 = getelementptr inbounds i32, ptr %214, i64 %179
  %216 = load i32, ptr %215, align 4, !tbaa !150
  %217 = getelementptr inbounds i32, ptr %214, i64 %206
  store i32 %216, ptr %217, align 4, !tbaa !150
  %218 = add nsw i32 %180, 1
  br label %219

219:                                              ; preds = %200, %205
  %220 = phi i32 [ %180, %200 ], [ %218, %205 ]
  %221 = add nuw nsw i64 %179, 1
  %222 = load i32, ptr %168, align 8, !tbaa !242
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %178, label %225, !prof !248, !llvm.loop !249

225:                                              ; preds = %219, %164
  %226 = phi i32 [ 0, %164 ], [ %220, %219 ]
  %227 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 8
  store i32 %226, ptr %227, align 8, !tbaa !242
  %228 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 17
  %229 = load i32, ptr %228, align 4, !tbaa !250
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %285, !prof !168

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 76
  %233 = load ptr, ptr %232, align 8, !tbaa !251
  %234 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 77
  %235 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 78
  %236 = load ptr, ptr %235, align 8, !tbaa !252
  %237 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 79
  br label %238

238:                                              ; preds = %231, %279
  %239 = phi i64 [ 0, %231 ], [ %281, %279 ]
  %240 = phi i32 [ 0, %231 ], [ %280, %279 ]
  %241 = getelementptr inbounds i32, ptr %233, i64 %239
  %242 = load i32, ptr %241, align 4, !tbaa !150
  %243 = sdiv i32 %242, 3
  %244 = getelementptr inbounds i32, ptr %236, i64 %239
  %245 = load i32, ptr %244, align 4, !tbaa !150
  %246 = sdiv i32 %245, 3
  %247 = sext i32 %243 to i64
  %248 = getelementptr inbounds i32, ptr %2, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !150
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %265, label %251, !prof !253

251:                                              ; preds = %238
  %252 = load ptr, ptr %234, align 8, !tbaa !254
  %253 = getelementptr inbounds i32, ptr %252, i64 %239
  %254 = load i32, ptr %253, align 4, !tbaa !150
  %255 = sdiv i32 %254, 3
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, ptr %2, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !150
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %251
  %261 = sext i32 %246 to i64
  %262 = getelementptr inbounds i32, ptr %2, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !150
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %260, %251, %238
  %266 = sext i32 %240 to i64
  %267 = getelementptr inbounds i32, ptr %233, i64 %266
  store i32 %242, ptr %267, align 4, !tbaa !150
  %268 = load ptr, ptr %234, align 8, !tbaa !254
  %269 = getelementptr inbounds i32, ptr %268, i64 %239
  %270 = load i32, ptr %269, align 4, !tbaa !150
  %271 = getelementptr inbounds i32, ptr %268, i64 %266
  store i32 %270, ptr %271, align 4, !tbaa !150
  %272 = load i32, ptr %244, align 4, !tbaa !150
  %273 = getelementptr inbounds i32, ptr %236, i64 %266
  store i32 %272, ptr %273, align 4, !tbaa !150
  %274 = load ptr, ptr %237, align 8, !tbaa !255
  %275 = getelementptr inbounds i32, ptr %274, i64 %239
  %276 = load i32, ptr %275, align 4, !tbaa !150
  %277 = getelementptr inbounds i32, ptr %274, i64 %266
  store i32 %276, ptr %277, align 4, !tbaa !150
  %278 = add nsw i32 %240, 1
  br label %279

279:                                              ; preds = %260, %265
  %280 = phi i32 [ %240, %260 ], [ %278, %265 ]
  %281 = add nuw nsw i64 %239, 1
  %282 = load i32, ptr %228, align 4, !tbaa !250
  %283 = sext i32 %282 to i64
  %284 = icmp slt i64 %281, %283
  br i1 %284, label %238, label %285, !prof !256, !llvm.loop !257

285:                                              ; preds = %279, %225
  %286 = phi i32 [ 0, %225 ], [ %280, %279 ]
  %287 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 17
  store i32 %286, ptr %287, align 4, !tbaa !250
  %288 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %289 = load i32, ptr %288, align 8, !tbaa !258
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %301, !prof !168

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 91
  %293 = load ptr, ptr %292, align 8, !tbaa !259
  br label %294

294:                                              ; preds = %291, %294
  %295 = phi i64 [ 0, %291 ], [ %297, %294 ]
  %296 = getelementptr inbounds i32, ptr %293, i64 %295
  store i32 0, ptr %296, align 4, !tbaa !150
  %297 = add nuw nsw i64 %295, 1
  %298 = load i32, ptr %288, align 8, !tbaa !258
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %297, %299
  br i1 %300, label %294, label %301, !prof !260, !llvm.loop !261

301:                                              ; preds = %294, %285
  %302 = phi i32 [ %289, %285 ], [ %298, %294 ]
  %303 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %304 = sext i32 %302 to i64
  %305 = mul nsw i64 %304, 48
  %306 = icmp eq i32 %302, 0
  br i1 %306, label %315, label %307, !prof !100

307:                                              ; preds = %301
  %308 = tail call noalias ptr @malloc(i64 noundef %305) #34
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %315, !prof !100

310:                                              ; preds = %307
  %311 = load ptr, ptr @nabout, align 8, !tbaa !88
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.70, i64 noundef %305)
  %313 = load ptr, ptr @nabout, align 8, !tbaa !88
  %314 = tail call i32 @fflush(ptr noundef %313)
  tail call void @perror(ptr noundef nonnull @.str.71) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

315:                                              ; preds = %301, %307
  %316 = phi ptr [ null, %301 ], [ %308, %307 ]
  %317 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 10
  %318 = load i32, ptr %317, align 8, !tbaa !262
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %404, !prof !168

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 80
  %322 = load ptr, ptr %321, align 8, !tbaa !263
  %323 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 81
  %324 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 82
  %325 = load ptr, ptr %324, align 8, !tbaa !264
  %326 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 83
  %327 = load ptr, ptr %326, align 8, !tbaa !265
  %328 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 84
  %329 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 91
  br label %330

330:                                              ; preds = %320, %398
  %331 = phi i64 [ 0, %320 ], [ %400, %398 ]
  %332 = phi i32 [ 0, %320 ], [ %399, %398 ]
  %333 = getelementptr inbounds i32, ptr %322, i64 %331
  %334 = load i32, ptr %333, align 4, !tbaa !150
  %335 = sdiv i32 %334, 3
  %336 = getelementptr inbounds i32, ptr %325, i64 %331
  %337 = load i32, ptr %336, align 4, !tbaa !150
  %338 = sdiv i32 %337, 3
  %339 = getelementptr inbounds i32, ptr %327, i64 %331
  %340 = load i32, ptr %339, align 4, !tbaa !150
  %341 = sdiv i32 %340, 3
  %342 = tail call i32 @llvm.abs.i32(i32 %338, i1 true)
  %343 = tail call i32 @llvm.abs.i32(i32 %341, i1 true)
  %344 = sext i32 %335 to i64
  %345 = getelementptr inbounds i32, ptr %2, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !150
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %367, label %348, !prof !266

348:                                              ; preds = %330
  %349 = load ptr, ptr %323, align 8, !tbaa !267
  %350 = getelementptr inbounds i32, ptr %349, i64 %331
  %351 = load i32, ptr %350, align 4, !tbaa !150
  %352 = sdiv i32 %351, 3
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, ptr %2, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !150
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %367, label %357

357:                                              ; preds = %348
  %358 = zext nneg i32 %342 to i64
  %359 = getelementptr inbounds i32, ptr %2, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !150
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %357
  %363 = zext nneg i32 %343 to i64
  %364 = getelementptr inbounds i32, ptr %2, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !150
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %398

367:                                              ; preds = %362, %357, %348, %330
  %368 = sext i32 %332 to i64
  %369 = getelementptr inbounds i32, ptr %322, i64 %368
  store i32 %334, ptr %369, align 4, !tbaa !150
  %370 = load ptr, ptr %323, align 8, !tbaa !267
  %371 = getelementptr inbounds i32, ptr %370, i64 %331
  %372 = load i32, ptr %371, align 4, !tbaa !150
  %373 = getelementptr inbounds i32, ptr %370, i64 %368
  store i32 %372, ptr %373, align 4, !tbaa !150
  %374 = load i32, ptr %336, align 4, !tbaa !150
  %375 = getelementptr inbounds i32, ptr %325, i64 %368
  store i32 %374, ptr %375, align 4, !tbaa !150
  %376 = load i32, ptr %339, align 4, !tbaa !150
  %377 = getelementptr inbounds i32, ptr %327, i64 %368
  store i32 %376, ptr %377, align 4, !tbaa !150
  %378 = load ptr, ptr %328, align 8, !tbaa !268
  %379 = getelementptr inbounds i32, ptr %378, i64 %331
  %380 = load i32, ptr %379, align 4, !tbaa !150
  %381 = getelementptr inbounds i32, ptr %378, i64 %368
  store i32 %380, ptr %381, align 4, !tbaa !150
  %382 = add nsw i32 %332, 1
  %383 = icmp sgt i32 %337, -3
  %384 = icmp sgt i32 %340, -3
  %385 = select i1 %383, i1 %384, i1 false, !prof !269
  br i1 %385, label %386, label %398, !prof !269

386:                                              ; preds = %367
  %387 = tail call i32 @llvm.smin.i32(i32 %335, i32 %341)
  %388 = tail call i32 @llvm.smax.i32(i32 %335, i32 %341)
  %389 = mul nsw i32 %387, 12
  %390 = load ptr, ptr %329, align 8, !tbaa !259
  %391 = sext i32 %387 to i64
  %392 = getelementptr inbounds i32, ptr %390, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !150
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %392, align 4, !tbaa !150
  %395 = add nsw i32 %393, %389
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, ptr %316, i64 %396
  store i32 %388, ptr %397, align 4, !tbaa !150
  br label %398

398:                                              ; preds = %362, %386, %367
  %399 = phi i32 [ %332, %362 ], [ %382, %386 ], [ %382, %367 ]
  %400 = add nuw nsw i64 %331, 1
  %401 = load i32, ptr %317, align 8, !tbaa !262
  %402 = sext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %330, label %404, !prof !270, !llvm.loop !271

404:                                              ; preds = %398, %315
  %405 = phi i32 [ 0, %315 ], [ %399, %398 ]
  %406 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 10
  store i32 %405, ptr %406, align 8, !tbaa !262
  %407 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 18
  %408 = load i32, ptr %407, align 8, !tbaa !272
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %494, !prof !168

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 85
  %412 = load ptr, ptr %411, align 8, !tbaa !273
  %413 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 86
  %414 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 87
  %415 = load ptr, ptr %414, align 8, !tbaa !274
  %416 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 88
  %417 = load ptr, ptr %416, align 8, !tbaa !275
  %418 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 89
  %419 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 91
  br label %420

420:                                              ; preds = %410, %488
  %421 = phi i64 [ 0, %410 ], [ %490, %488 ]
  %422 = phi i32 [ 0, %410 ], [ %489, %488 ]
  %423 = getelementptr inbounds i32, ptr %412, i64 %421
  %424 = load i32, ptr %423, align 4, !tbaa !150
  %425 = sdiv i32 %424, 3
  %426 = getelementptr inbounds i32, ptr %415, i64 %421
  %427 = load i32, ptr %426, align 4, !tbaa !150
  %428 = sdiv i32 %427, 3
  %429 = getelementptr inbounds i32, ptr %417, i64 %421
  %430 = load i32, ptr %429, align 4, !tbaa !150
  %431 = sdiv i32 %430, 3
  %432 = tail call i32 @llvm.abs.i32(i32 %428, i1 true)
  %433 = tail call i32 @llvm.abs.i32(i32 %431, i1 true)
  %434 = sext i32 %425 to i64
  %435 = getelementptr inbounds i32, ptr %2, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !150
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %457, label %438, !prof !276

438:                                              ; preds = %420
  %439 = load ptr, ptr %413, align 8, !tbaa !277
  %440 = getelementptr inbounds i32, ptr %439, i64 %421
  %441 = load i32, ptr %440, align 4, !tbaa !150
  %442 = sdiv i32 %441, 3
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %2, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !150
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %438
  %448 = zext nneg i32 %432 to i64
  %449 = getelementptr inbounds i32, ptr %2, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !150
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %447
  %453 = zext nneg i32 %433 to i64
  %454 = getelementptr inbounds i32, ptr %2, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !150
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %488

457:                                              ; preds = %452, %447, %438, %420
  %458 = sext i32 %422 to i64
  %459 = getelementptr inbounds i32, ptr %412, i64 %458
  store i32 %424, ptr %459, align 4, !tbaa !150
  %460 = load ptr, ptr %413, align 8, !tbaa !277
  %461 = getelementptr inbounds i32, ptr %460, i64 %421
  %462 = load i32, ptr %461, align 4, !tbaa !150
  %463 = getelementptr inbounds i32, ptr %460, i64 %458
  store i32 %462, ptr %463, align 4, !tbaa !150
  %464 = load i32, ptr %426, align 4, !tbaa !150
  %465 = getelementptr inbounds i32, ptr %415, i64 %458
  store i32 %464, ptr %465, align 4, !tbaa !150
  %466 = load i32, ptr %429, align 4, !tbaa !150
  %467 = getelementptr inbounds i32, ptr %417, i64 %458
  store i32 %466, ptr %467, align 4, !tbaa !150
  %468 = load ptr, ptr %418, align 8, !tbaa !278
  %469 = getelementptr inbounds i32, ptr %468, i64 %421
  %470 = load i32, ptr %469, align 4, !tbaa !150
  %471 = getelementptr inbounds i32, ptr %468, i64 %458
  store i32 %470, ptr %471, align 4, !tbaa !150
  %472 = add nsw i32 %422, 1
  %473 = icmp sgt i32 %427, -3
  %474 = icmp sgt i32 %430, -3
  %475 = select i1 %473, i1 %474, i1 false, !prof !279
  br i1 %475, label %476, label %488, !prof !279

476:                                              ; preds = %457
  %477 = tail call i32 @llvm.smin.i32(i32 %425, i32 %431)
  %478 = tail call i32 @llvm.smax.i32(i32 %425, i32 %431)
  %479 = mul nsw i32 %477, 12
  %480 = load ptr, ptr %419, align 8, !tbaa !259
  %481 = sext i32 %477 to i64
  %482 = getelementptr inbounds i32, ptr %480, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !150
  %484 = add nsw i32 %483, 1
  store i32 %484, ptr %482, align 4, !tbaa !150
  %485 = add nsw i32 %483, %479
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, ptr %316, i64 %486
  store i32 %478, ptr %487, align 4, !tbaa !150
  br label %488

488:                                              ; preds = %452, %476, %457
  %489 = phi i32 [ %422, %452 ], [ %472, %476 ], [ %472, %457 ]
  %490 = add nuw nsw i64 %421, 1
  %491 = load i32, ptr %407, align 8, !tbaa !272
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %420, label %494, !prof !280, !llvm.loop !281

494:                                              ; preds = %488, %404
  %495 = phi i32 [ 0, %404 ], [ %489, %488 ]
  %496 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 18
  store i32 %495, ptr %496, align 8, !tbaa !272
  %497 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 11
  store i32 %495, ptr %497, align 4, !tbaa !282
  %498 = load i32, ptr %303, align 8, !tbaa !258
  %499 = icmp sgt i32 %498, 1
  br i1 %499, label %500, label %536, !prof !168

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 91
  %502 = load ptr, ptr %501, align 8, !tbaa !259
  %503 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 92
  br label %504

504:                                              ; preds = %500, %529
  %505 = phi i64 [ 0, %500 ], [ %531, %529 ]
  %506 = phi i32 [ 0, %500 ], [ %530, %529 ]
  %507 = getelementptr inbounds i32, ptr %502, i64 %505
  %508 = load i32, ptr %507, align 4, !tbaa !150
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %529, !prof !283

510:                                              ; preds = %504
  %511 = load ptr, ptr %503, align 8, !tbaa !284
  %512 = sext i32 %506 to i64
  %513 = mul i64 %505, 12
  %514 = and i64 %513, 4294967292
  br label %515

515:                                              ; preds = %510, %515
  %516 = phi i64 [ 0, %510 ], [ %523, %515 ]
  %517 = phi i64 [ %512, %510 ], [ %521, %515 ]
  %518 = add nuw nsw i64 %516, %514
  %519 = getelementptr inbounds i32, ptr %316, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !150
  %521 = add nsw i64 %517, 1
  %522 = getelementptr inbounds i32, ptr %511, i64 %517
  store i32 %520, ptr %522, align 4, !tbaa !150
  %523 = add nuw nsw i64 %516, 1
  %524 = load i32, ptr %507, align 4, !tbaa !150
  %525 = sext i32 %524 to i64
  %526 = icmp slt i64 %523, %525
  br i1 %526, label %515, label %527, !prof !285, !llvm.loop !286

527:                                              ; preds = %515
  %528 = trunc i64 %521 to i32
  br label %529

529:                                              ; preds = %527, %504
  %530 = phi i32 [ %506, %504 ], [ %528, %527 ]
  %531 = add nuw nsw i64 %505, 1
  %532 = load i32, ptr %303, align 8, !tbaa !258
  %533 = add nsw i32 %532, -1
  %534 = sext i32 %533 to i64
  %535 = icmp slt i64 %531, %534
  br i1 %535, label %504, label %536, !prof !287, !llvm.loop !288

536:                                              ; preds = %529, %494
  tail call void @free(ptr noundef %316) #35
  br label %537

537:                                              ; preds = %536, %65
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @set_cons_mask(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !prof !96 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #35
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8, !prof !167

8:                                                ; preds = %3, %59
  %9 = phi ptr [ %63, %59 ], [ %6, %3 ]
  %10 = phi i32 [ %61, %59 ], [ 0, %3 ]
  %11 = phi i32 [ %60, %59 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !86
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %59, !prof !168

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %15, %52
  %19 = phi i64 [ 0, %15 ], [ %55, %52 ]
  %20 = phi i32 [ %10, %15 ], [ %54, %52 ]
  %21 = phi i32 [ %11, %15 ], [ %53, %52 ]
  %22 = getelementptr inbounds ptr, ptr %17, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %52, !prof !220

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = sext i32 %21 to i64
  br label %31

31:                                               ; preds = %27, %43
  %32 = phi i64 [ %30, %27 ], [ %45, %43 ]
  %33 = phi i64 [ 0, %27 ], [ %46, %43 ]
  %34 = phi i32 [ %20, %27 ], [ %44, %43 ]
  %35 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %33, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !144
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds i32, ptr %2, i64 %32
  br i1 %38, label %42, label %40, !prof !289

40:                                               ; preds = %31
  store i32 1, ptr %39, align 4, !tbaa !150
  %41 = add nsw i32 %34, 1
  br label %43

42:                                               ; preds = %31
  store i32 0, ptr %39, align 4, !tbaa !150
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ %34, %42 ]
  %45 = add nsw i64 %32, 1
  %46 = add nuw nsw i64 %33, 1
  %47 = load i32, ptr %24, align 8, !tbaa !75
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %31, label %50, !prof !222, !llvm.loop !290

50:                                               ; preds = %43
  %51 = trunc i64 %45 to i32
  br label %52

52:                                               ; preds = %50, %18
  %53 = phi i32 [ %21, %18 ], [ %51, %50 ]
  %54 = phi i32 [ %20, %18 ], [ %44, %50 ]
  %55 = add nuw nsw i64 %19, 1
  %56 = load i32, ptr %12, align 8, !tbaa !86
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %18, label %59, !prof !224, !llvm.loop !291

59:                                               ; preds = %52, %8
  %60 = phi i32 [ %11, %8 ], [ %53, %52 ]
  %61 = phi i32 [ %10, %8 ], [ %54, %52 ]
  %62 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %8, !prof !175, !llvm.loop !292

65:                                               ; preds = %59, %3
  %66 = phi i32 [ 0, %3 ], [ %61, %59 ]
  ret i32 %66
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 !prof !62 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #35
  br label %11

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %19, %11 ]
  %13 = getelementptr inbounds double, ptr %1, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds double, ptr %0, i64 %12
  %16 = load double, ptr %15, align 8, !tbaa !50
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %12
  store double %17, ptr %18, align 8, !tbaa !50
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %11, !llvm.loop !293

21:                                               ; preds = %11, %21
  %22 = phi i64 [ %29, %21 ], [ 0, %11 ]
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds double, ptr %0, i64 %22
  %26 = load double, ptr %25, align 8, !tbaa !50
  %27 = fsub double %24, %26
  %28 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %22
  store double %27, ptr %28, align 8, !tbaa !50
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %21, !llvm.loop !294

31:                                               ; preds = %21, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %21 ]
  %33 = getelementptr inbounds double, ptr %2, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds double, ptr %1, i64 %32
  %36 = load double, ptr %35, align 8, !tbaa !50
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %32
  store double %37, ptr %38, align 8, !tbaa !50
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %31, !llvm.loop !295

41:                                               ; preds = %31, %41
  %42 = phi i64 [ %50, %41 ], [ 0, %31 ]
  %43 = getelementptr inbounds double, ptr %0, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !50
  %45 = getelementptr inbounds double, ptr %1, i64 %42
  %46 = load double, ptr %45, align 8, !tbaa !50
  %47 = fadd double %44, %46
  %48 = fmul double %47, 5.000000e-01
  %49 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %42
  store double %48, ptr %49, align 8, !tbaa !50
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %41, !llvm.loop !296

52:                                               ; preds = %41, %52
  %53 = phi i64 [ %60, %52 ], [ 0, %41 ]
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %53
  %57 = load double, ptr %56, align 8, !tbaa !50
  %58 = fsub double %55, %57
  %59 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %53
  store double %58, ptr %59, align 8, !tbaa !50
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %52, !llvm.loop !297

62:                                               ; preds = %52
  %63 = load double, ptr %6, align 16, !tbaa !50
  %64 = load double, ptr %7, align 16, !tbaa !50
  %65 = getelementptr inbounds double, ptr %6, i64 1
  %66 = load double, ptr %65, align 8, !tbaa !50
  %67 = getelementptr inbounds double, ptr %7, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !50
  %69 = fmul double %66, %68
  %70 = tail call double @llvm.fmuladd.f64(double %63, double %64, double %69)
  %71 = getelementptr inbounds double, ptr %6, i64 2
  %72 = load double, ptr %71, align 16, !tbaa !50
  %73 = getelementptr inbounds double, ptr %7, i64 2
  %74 = load double, ptr %73, align 16, !tbaa !50
  %75 = tail call double @llvm.fmuladd.f64(double %72, double %74, double %70)
  %76 = fmul double %66, %66
  %77 = tail call double @llvm.fmuladd.f64(double %63, double %63, double %76)
  %78 = tail call double @llvm.fmuladd.f64(double %72, double %72, double %77)
  %79 = fneg double %75
  %80 = fdiv double %79, %78
  br label %81

81:                                               ; preds = %62, %81
  %82 = phi i64 [ 0, %62 ], [ %89, %81 ]
  %83 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %82
  %84 = load double, ptr %83, align 8, !tbaa !50
  %85 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %82
  %86 = load double, ptr %85, align 8, !tbaa !50
  %87 = tail call double @llvm.fmuladd.f64(double %80, double %86, double %84)
  %88 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %82
  store double %87, ptr %88, align 8, !tbaa !50
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, 3
  br i1 %90, label %91, label %81, !llvm.loop !298

91:                                               ; preds = %81
  %92 = load double, ptr %10, align 16, !tbaa !50
  %93 = load double, ptr %5, align 16, !tbaa !50
  %94 = getelementptr inbounds double, ptr %10, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !50
  %96 = getelementptr inbounds double, ptr %5, i64 1
  %97 = load double, ptr %96, align 8, !tbaa !50
  %98 = fmul double %95, %97
  %99 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %98)
  %100 = getelementptr inbounds double, ptr %10, i64 2
  %101 = load double, ptr %100, align 16, !tbaa !50
  %102 = getelementptr inbounds double, ptr %5, i64 2
  %103 = load double, ptr %102, align 16, !tbaa !50
  %104 = tail call double @llvm.fmuladd.f64(double %101, double %103, double %99)
  %105 = tail call double @llvm.fabs.f64(double %104)
  %106 = fcmp olt double %105, 1.000000e-09
  br i1 %106, label %107, label %110

107:                                              ; preds = %91
  %108 = load ptr, ptr @stderr, align 8, !tbaa !88
  %109 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 40, i64 1, ptr %108) #37
  br label %131

110:                                              ; preds = %91
  %111 = load double, ptr %8, align 16, !tbaa !50
  %112 = getelementptr inbounds double, ptr %8, i64 1
  %113 = load double, ptr %112, align 8, !tbaa !50
  %114 = fmul double %68, %113
  %115 = tail call double @llvm.fmuladd.f64(double %111, double %64, double %114)
  %116 = getelementptr inbounds double, ptr %8, i64 2
  %117 = load double, ptr %116, align 16, !tbaa !50
  %118 = tail call double @llvm.fmuladd.f64(double %117, double %74, double %115)
  %119 = fmul double %118, 5.000000e-01
  %120 = fdiv double %119, %104
  br label %121

121:                                              ; preds = %110, %121
  %122 = phi i64 [ 0, %110 ], [ %129, %121 ]
  %123 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !50
  %125 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %122
  %126 = load double, ptr %125, align 8, !tbaa !50
  %127 = tail call double @llvm.fmuladd.f64(double %120, double %126, double %124)
  %128 = getelementptr inbounds double, ptr %3, i64 %122
  store double %127, ptr %128, align 8, !tbaa !50
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, 3
  br i1 %130, label %131, label %121, !llvm.loop !299

131:                                              ; preds = %121, %107
  %132 = phi i32 [ 1, %107 ], [ 0, %121 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  ret i32 %132
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #28

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_atom(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !62 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %110, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %110

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.residue_t, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %11, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !153
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %10, i64 24
  br label %21

17:                                               ; preds = %67, %8
  %18 = load i32, ptr %5, align 8, !tbaa !75
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %72, label %82

21:                                               ; preds = %15, %67
  %22 = phi i64 [ 0, %15 ], [ %68, %67 ]
  %23 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %11, i32 4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !150
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %25, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !153
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %21
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %64
  %32 = phi i64 [ 0, %29 ], [ %65, %64 ]
  %33 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %25, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !150
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = trunc i64 %32 to i32
  %38 = load i32, ptr %26, align 4, !tbaa !153
  %39 = add nsw i32 %38, -1
  %40 = icmp sgt i32 %39, %37
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %41
  %42 = phi i64 [ %43, %41 ], [ %32, %36 ]
  %43 = add nuw nsw i64 %42, 1
  %44 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %25, i32 4, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !150
  %46 = getelementptr inbounds %struct.atom_t, ptr %10, i64 %25, i32 4, i64 %42
  store i32 %45, ptr %46, align 4, !tbaa !150
  %47 = load i32, ptr %26, align 4, !tbaa !153
  %48 = add nsw i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %43, %49
  br i1 %50, label %41, label %51, !llvm.loop !300

51:                                               ; preds = %41, %36
  %52 = phi i32 [ %39, %36 ], [ %48, %41 ]
  store i32 %52, ptr %26, align 4, !tbaa !153
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = mul nsw i64 %25, 176
  %56 = sext i32 %52 to i64
  %57 = shl nsw i64 %56, 2
  %58 = getelementptr i8, ptr %16, i64 %55
  %59 = getelementptr i8, ptr %58, i64 %57
  %60 = sub i32 7, %52
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 2
  %63 = add nuw nsw i64 %62, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %59, i8 -1, i64 %63, i1 false), !tbaa !150
  br label %67

64:                                               ; preds = %31
  %65 = add nuw nsw i64 %32, 1
  %66 = icmp eq i64 %65, %30
  br i1 %66, label %67, label %31, !llvm.loop !301

67:                                               ; preds = %64, %54, %21, %51
  %68 = add nuw nsw i64 %22, 1
  %69 = load i32, ptr %12, align 4, !tbaa !153
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %21, label %17, !llvm.loop !302

72:                                               ; preds = %17, %72
  %73 = phi i64 [ %76, %72 ], [ %11, %17 ]
  %74 = load ptr, ptr %9, align 8, !tbaa !76
  %75 = getelementptr inbounds %struct.atom_t, ptr %74, i64 %73
  %76 = add nuw nsw i64 %73, 1
  %77 = getelementptr inbounds %struct.atom_t, ptr %74, i64 %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %75, ptr noundef nonnull align 8 dereferenceable(176) %77, i64 176, i1 false), !tbaa.struct !149
  %78 = load i32, ptr %5, align 8, !tbaa !75
  %79 = add nsw i32 %78, -1
  %80 = trunc i64 %76 to i32
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %72, label %82, !llvm.loop !303

82:                                               ; preds = %72, %17
  %83 = phi i32 [ %19, %17 ], [ %79, %72 ]
  store i32 %83, ptr %5, align 8, !tbaa !75
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load ptr, ptr %9, align 8, !tbaa !76
  br label %87

87:                                               ; preds = %85, %104
  %88 = phi i64 [ 0, %85 ], [ %105, %104 ]
  %89 = getelementptr inbounds %struct.atom_t, ptr %86, i64 %88, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !153
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87, %99
  %93 = phi i64 [ %100, %99 ], [ 0, %87 ]
  %94 = getelementptr inbounds %struct.atom_t, ptr %86, i64 %88, i32 4, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !150
  %96 = icmp sgt i32 %95, %1
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = add nsw i32 %95, -1
  store i32 %98, ptr %94, align 4, !tbaa !150
  br label %99

99:                                               ; preds = %92, %97
  %100 = add nuw nsw i64 %93, 1
  %101 = load i32, ptr %89, align 4, !tbaa !153
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %92, label %104, !llvm.loop !304

104:                                              ; preds = %99, %87
  %105 = add nuw nsw i64 %88, 1
  %106 = load i32, ptr %5, align 8, !tbaa !75
  %107 = add nsw i32 %106, -1
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %87, label %110, !llvm.loop !305

110:                                              ; preds = %104, %82, %2, %4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #30

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #33

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind }
attributes #31 = { nofree nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { cold }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @newmolecule, ptr @malloc, i64 1}
!36 = !{ptr @addstrand, ptr @strcmp, i64 1}
!37 = !{ptr @addstrand, ptr @malloc, i64 4}
!38 = !{ptr @addstrand, ptr @strlen, i64 2}
!39 = !{ptr @addstrand, ptr @strcpy, i64 2}
!40 = !{ptr @addresidue, ptr @strcmp, i64 1803}
!41 = !{ptr @addresidue, ptr @copyresidue, i64 1202}
!42 = !{ptr @setxyz_from_mol, ptr @select_atoms, i64 1}
!43 = !{ptr @set_belly_mask, ptr @select_atoms, i64 2}
!44 = !{ptr @set_belly_mask, ptr @malloc, i64 2}
!45 = !{ptr @set_belly_mask, ptr @free, i64 2}
!46 = !{ptr @set_cons_mask, ptr @select_atoms, i64 2}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"branch_weights", i32 0, i32 1}
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !56, i64 96}
!55 = !{!"molecule_t", !52, i64 0, !56, i64 96, !57, i64 104, !56, i64 112, !56, i64 116, !56, i64 120, !57, i64 128}
!56 = !{!"int", !52, i64 0}
!57 = !{!"any pointer", !52, i64 0}
!58 = !{!55, !57, i64 104}
!59 = !{!55, !56, i64 112}
!60 = !{!55, !56, i64 120}
!61 = !{!55, !57, i64 128}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !57, i64 24}
!64 = !{!"residue_t", !57, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !57, i64 24, !57, i64 32, !56, i64 40, !56, i64 44, !56, i64 48, !57, i64 56, !57, i64 64, !56, i64 72, !57, i64 80, !56, i64 88, !57, i64 96, !56, i64 104, !57, i64 112, !57, i64 120}
!65 = !{!64, !57, i64 32}
!66 = !{!64, !57, i64 64}
!67 = !{!68, !57, i64 0}
!68 = !{!"extbond_t", !57, i64 0, !56, i64 8, !56, i64 12, !56, i64 16}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!64, !57, i64 80}
!73 = !{!64, !57, i64 96}
!74 = !{!64, !57, i64 112}
!75 = !{!64, !56, i64 104}
!76 = !{!64, !57, i64 120}
!77 = !{!78, !57, i64 0}
!78 = !{!"atom_t", !57, i64 0, !57, i64 8, !56, i64 16, !56, i64 20, !52, i64 24, !57, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !57, i64 96, !56, i64 104, !51, i64 112, !51, i64 120, !56, i64 128, !56, i64 132, !57, i64 136, !52, i64 144, !51, i64 168}
!79 = !{!78, !57, i64 8}
!80 = !{!78, !57, i64 96}
!81 = !{!78, !57, i64 136}
!82 = distinct !{!82, !70, !71}
!83 = !{!84, !57, i64 24}
!84 = !{!"strand_t", !57, i64 0, !56, i64 8, !56, i64 12, !57, i64 16, !57, i64 24, !56, i64 32, !56, i64 36, !57, i64 40}
!85 = !{!84, !57, i64 0}
!86 = !{!84, !56, i64 32}
!87 = !{!84, !57, i64 40}
!88 = !{!57, !57, i64 0}
!89 = distinct !{!89, !70, !71}
!90 = distinct !{!90, !70, !71}
!91 = !{!92, !57, i64 216}
!92 = !{!"parm", !52, i64 0, !56, i64 84, !56, i64 88, !56, i64 92, !56, i64 96, !56, i64 100, !56, i64 104, !56, i64 108, !56, i64 112, !56, i64 116, !56, i64 120, !56, i64 124, !56, i64 128, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !57, i64 216, !57, i64 224, !57, i64 232, !57, i64 240, !57, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !57, i64 280, !57, i64 288, !57, i64 296, !57, i64 304, !57, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !52, i64 376, !51, i64 400, !51, i64 408, !51, i64 416, !51, i64 424, !51, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !57, i64 480, !57, i64 488, !57, i64 496, !57, i64 504, !57, i64 512, !57, i64 520, !57, i64 528, !57, i64 536, !57, i64 544, !57, i64 552, !57, i64 560, !57, i64 568, !57, i64 576, !57, i64 584, !57, i64 592, !57, i64 600, !57, i64 608, !57, i64 616, !57, i64 624, !57, i64 632, !57, i64 640, !57, i64 648, !57, i64 656, !57, i64 664, !57, i64 672, !57, i64 680, !57, i64 688, !57, i64 696, !57, i64 704, !57, i64 712}
!93 = !{!92, !57, i64 224}
!94 = !{!92, !57, i64 232}
!95 = !{!92, !57, i64 240}
!96 = !{!"function_entry_count", i64 2}
!97 = !{!"branch_weights", i32 1, i32 1}
!98 = !{!"branch_weights", i32 1, i32 0}
!99 = distinct !{!99, !70, !71}
!100 = !{!"branch_weights", i32 0, i32 2}
!101 = !{!84, !56, i64 8}
!102 = !{!84, !56, i64 12}
!103 = !{!84, !57, i64 16}
!104 = distinct !{!104, !70, !71}
!105 = !{!"function_entry_count", i64 1202}
!106 = !{!"branch_weights", i32 1202, i32 601}
!107 = !{!"branch_weights", i32 0, i32 1803}
!108 = distinct !{!108, !70, !71}
!109 = !{!"branch_weights", i32 0, i32 1202}
!110 = !{!84, !56, i64 36}
!111 = distinct !{!111, !70, !71}
!112 = !{!64, !57, i64 56}
!113 = distinct !{!113, !70, !71}
!114 = distinct !{!114, !70, !71}
!115 = distinct !{!115, !70, !71}
!116 = !{!68, !56, i64 8}
!117 = !{!68, !56, i64 12}
!118 = !{!68, !56, i64 16}
!119 = distinct !{!119, !70, !71}
!120 = distinct !{!120, !70, !71}
!121 = distinct !{!121, !70, !71}
!122 = distinct !{!122, !70, !71}
!123 = distinct !{!123, !70, !71}
!124 = distinct !{!124, !70, !71}
!125 = distinct !{!125, !70, !71}
!126 = distinct !{!126, !70, !71}
!127 = distinct !{!127, !70, !71}
!128 = distinct !{!128, !70, !71}
!129 = distinct !{!129, !70, !71}
!130 = distinct !{!130, !70, !71}
!131 = distinct !{!131, !70, !71}
!132 = !{!64, !56, i64 12}
!133 = !{!64, !56, i64 16}
!134 = !{!78, !56, i64 132}
!135 = !{!78, !56, i64 128}
!136 = distinct !{!136, !70, !71}
!137 = distinct !{!137, !70, !71}
!138 = !{!55, !56, i64 116}
!139 = distinct !{!139, !70, !71}
!140 = distinct !{!140, !70, !71}
!141 = !{!64, !56, i64 40}
!142 = distinct !{!142, !70, !71}
!143 = distinct !{!143, !70, !71}
!144 = !{!78, !56, i64 16}
!145 = distinct !{!145, !70, !71}
!146 = distinct !{!146, !70, !71}
!147 = distinct !{!147, !70, !71}
!148 = distinct !{!148, !70, !71}
!149 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 4, !150, i64 20, i64 4, !150, i64 24, i64 32, !151, i64 56, i64 8, !88, i64 64, i64 8, !50, i64 72, i64 8, !50, i64 80, i64 8, !50, i64 88, i64 8, !50, i64 96, i64 8, !88, i64 104, i64 4, !150, i64 112, i64 8, !50, i64 120, i64 8, !50, i64 128, i64 4, !150, i64 132, i64 4, !150, i64 136, i64 8, !88, i64 144, i64 24, !151, i64 168, i64 8, !50}
!150 = !{!56, !56, i64 0}
!151 = !{!52, !52, i64 0}
!152 = distinct !{!152, !70, !71}
!153 = !{!78, !56, i64 20}
!154 = !{!78, !57, i64 56}
!155 = !{!78, !51, i64 64}
!156 = !{!78, !51, i64 72}
!157 = distinct !{!157, !70, !71}
!158 = distinct !{!158, !70, !71}
!159 = distinct !{!159, !70, !71}
!160 = distinct !{!160, !70, !71}
!161 = !{!162, !162, i64 0}
!162 = !{!"short", !52, i64 0}
!163 = distinct !{!163, !70, !71}
!164 = !{!64, !56, i64 44}
!165 = distinct !{!165, !70, !71}
!166 = distinct !{!166, !70, !71}
!167 = !{!"branch_weights", i32 1, i32 127}
!168 = !{!"branch_weights", i32 127, i32 1}
!169 = !{!"branch_weights", i32 1201, i32 1}
!170 = !{!"branch_weights", i32 0, i32 19030}
!171 = !{!"branch_weights", i32 1201, i32 17829}
!172 = distinct !{!172, !70, !71}
!173 = !{!"branch_weights", i32 127, i32 76801}
!174 = distinct !{!174, !70, !71}
!175 = !{!"branch_weights", i32 127, i32 129}
!176 = distinct !{!176, !70, !71}
!177 = !{!78, !51, i64 168}
!178 = distinct !{!178, !70, !71}
!179 = distinct !{!179, !70, !71}
!180 = distinct !{!180, !70, !71}
!181 = distinct !{!181, !70, !71}
!182 = distinct !{!182, !70, !71}
!183 = distinct !{!183, !70, !71}
!184 = distinct !{!184, !70, !71}
!185 = distinct !{!185, !70, !71}
!186 = distinct !{!186, !70, !71}
!187 = !{!"function_entry_count", i64 1203}
!188 = !{!"branch_weights", i32 1203, i32 0}
!189 = !{!64, !56, i64 88}
!190 = !{!"function_entry_count", i64 19030}
!191 = !{!"branch_weights", i32 19030, i32 0}
!192 = !{!78, !51, i64 88}
!193 = !{!78, !56, i64 104}
!194 = !{!"function_entry_count", i64 19031}
!195 = !{!"branch_weights", i32 1, i32 19030}
!196 = distinct !{!196, !70, !71}
!197 = !{!"branch_weights", i32 17828, i32 1202}
!198 = !{!"branch_weights", i32 1202, i32 360600}
!199 = !{!"branch_weights", i32 0, i32 361802}
!200 = distinct !{!200, !70, !71}
!201 = !{!"branch_weights", i32 1200, i32 2}
!202 = distinct !{!202, !70, !71}
!203 = distinct !{!203, !70, !71}
!204 = distinct !{!204, !70, !71}
!205 = distinct !{!205, !70, !71}
!206 = distinct !{!206, !70, !71}
!207 = distinct !{!207, !70, !71}
!208 = distinct !{!208, !70, !71}
!209 = distinct !{!209, !70, !71}
!210 = distinct !{!210, !70, !71}
!211 = distinct !{!211, !70, !71}
!212 = distinct !{!212, !70, !71}
!213 = distinct !{!213, !70, !71}
!214 = distinct !{!214, !70, !71}
!215 = distinct !{!215, !70, !71}
!216 = distinct !{!216, !70, !71}
!217 = distinct !{!217, !70, !71}
!218 = distinct !{!218, !70, !71}
!219 = distinct !{!219, !70, !71}
!220 = !{!"branch_weights", i32 2403, i32 1}
!221 = !{!"branch_weights", i32 0, i32 38060}
!222 = !{!"branch_weights", i32 35657, i32 2403}
!223 = distinct !{!223, !70, !71}
!224 = !{!"branch_weights", i32 76801, i32 127}
!225 = distinct !{!225, !70, !71}
!226 = distinct !{!226, !70, !71}
!227 = !{!92, !56, i64 104}
!228 = !{!92, !57, i64 496}
!229 = !{!"branch_weights", i32 18736, i32 0}
!230 = !{!92, !57, i64 504}
!231 = !{!92, !57, i64 512}
!232 = !{!"branch_weights", i32 1198977, i32 127}
!233 = distinct !{!233, !70, !71}
!234 = !{!92, !56, i64 144}
!235 = !{!92, !57, i64 520}
!236 = !{!"branch_weights", i32 19792, i32 0}
!237 = !{!92, !57, i64 528}
!238 = !{!92, !57, i64 536}
!239 = !{!"branch_weights", i32 1266561, i32 127}
!240 = distinct !{!240, !70, !71}
!241 = !{!92, !56, i64 108}
!242 = !{!92, !56, i64 112}
!243 = !{!92, !57, i64 544}
!244 = !{!92, !57, i64 560}
!245 = !{!"branch_weights", i32 42640, i32 0}
!246 = !{!92, !57, i64 552}
!247 = !{!92, !57, i64 568}
!248 = !{!"branch_weights", i32 2728833, i32 127}
!249 = distinct !{!249, !70, !71}
!250 = !{!92, !56, i64 148}
!251 = !{!92, !57, i64 576}
!252 = !{!92, !57, i64 592}
!253 = !{!"branch_weights", i32 26796, i32 0}
!254 = !{!92, !57, i64 584}
!255 = !{!92, !57, i64 600}
!256 = !{!"branch_weights", i32 1714817, i32 127}
!257 = distinct !{!257, !70, !71}
!258 = !{!92, !56, i64 96}
!259 = !{!92, !57, i64 696}
!260 = !{!"branch_weights", i32 2435713, i32 127}
!261 = distinct !{!261, !70, !71}
!262 = !{!92, !56, i64 120}
!263 = !{!92, !57, i64 608}
!264 = !{!92, !57, i64 624}
!265 = !{!92, !57, i64 632}
!266 = !{!"branch_weights", i32 77316, i32 0}
!267 = !{!92, !57, i64 616}
!268 = !{!92, !57, i64 640}
!269 = !{!"branch_weights", i32 70348, i32 6968}
!270 = !{!"branch_weights", i32 4948097, i32 127}
!271 = distinct !{!271, !70, !71}
!272 = !{!92, !56, i64 152}
!273 = !{!92, !57, i64 648}
!274 = !{!92, !57, i64 664}
!275 = !{!92, !57, i64 672}
!276 = !{!"branch_weights", i32 47092, i32 0}
!277 = !{!92, !57, i64 656}
!278 = !{!92, !57, i64 680}
!279 = !{!"branch_weights", i32 29696, i32 17396}
!280 = !{!"branch_weights", i32 3013761, i32 127}
!281 = distinct !{!281, !70, !71}
!282 = !{!92, !56, i64 124}
!283 = !{!"branch_weights", i32 38057, i32 1}
!284 = !{!92, !57, i64 704}
!285 = !{!"branch_weights", i32 61987, i32 38057}
!286 = distinct !{!286, !70, !71}
!287 = !{!"branch_weights", i32 2435585, i32 127}
!288 = distinct !{!288, !70, !71}
!289 = !{!"branch_weights", i32 38060, i32 0}
!290 = distinct !{!290, !70, !71}
!291 = distinct !{!291, !70, !71}
!292 = distinct !{!292, !70, !71}
!293 = distinct !{!293, !70, !71}
!294 = distinct !{!294, !70, !71}
!295 = distinct !{!295, !70, !71}
!296 = distinct !{!296, !70, !71}
!297 = distinct !{!297, !70, !71}
!298 = distinct !{!298, !70, !71}
!299 = distinct !{!299, !70, !71}
!300 = distinct !{!300, !70, !71}
!301 = distinct !{!301, !70, !71}
!302 = distinct !{!302, !70, !71}
!303 = distinct !{!303, !70, !71}
!304 = distinct !{!304, !70, !71}
!305 = distinct !{!305, !70, !71}
