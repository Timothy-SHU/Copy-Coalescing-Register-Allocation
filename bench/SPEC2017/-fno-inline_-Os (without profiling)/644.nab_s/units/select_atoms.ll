; ModuleID = 'select_atoms.c'
source_filename = "select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, ptr, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.strand_t = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.residue_t = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16
@spart = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal unnamed_addr global ptr null, align 8
@apart = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16
@expbuf = internal global %struct.regex_t zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @setpoint(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @select_atoms(ptr noundef %0, ptr noundef %1) #13, !range !6
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %3, %73
  %9 = phi ptr [ %78, %73 ], [ %6, %3 ]
  %10 = phi double [ %75, %73 ], [ 0.000000e+00, %3 ]
  %11 = phi i32 [ %74, %73 ], [ 0, %3 ]
  %12 = phi <2 x double> [ %76, %73 ], [ zeroinitializer, %3 ]
  %13 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !14
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %67
  %26 = phi i64 [ 0, %21 ], [ %71, %67 ]
  %27 = phi double [ %10, %21 ], [ %69, %67 ]
  %28 = phi i32 [ %11, %21 ], [ %68, %67 ]
  %29 = phi <2 x double> [ %12, %21 ], [ %70, %67 ]
  %30 = getelementptr inbounds ptr, ptr %23, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !16
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !18
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, ptr %31, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = zext nneg i32 %38 to i64
  br label %44

44:                                               ; preds = %40, %61
  %45 = phi i64 [ 0, %40 ], [ %65, %61 ]
  %46 = phi double [ %27, %40 ], [ %63, %61 ]
  %47 = phi i32 [ %28, %40 ], [ %62, %61 ]
  %48 = phi <2 x double> [ %29, %40 ], [ %64, %61 ]
  %49 = getelementptr inbounds %struct.atom_t, ptr %42, i64 %45, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !20
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.atom_t, ptr %42, i64 %45, i32 17
  %55 = load <2 x double>, ptr %54, align 8, !tbaa !23
  %56 = fadd <2 x double> %48, %55
  %57 = getelementptr inbounds %struct.atom_t, ptr %42, i64 %45, i32 17, i64 2
  %58 = load double, ptr %57, align 8, !tbaa !23
  %59 = fadd double %46, %58
  %60 = add nsw i32 %47, 1
  br label %61

61:                                               ; preds = %44, %53
  %62 = phi i32 [ %60, %53 ], [ %47, %44 ]
  %63 = phi double [ %59, %53 ], [ %46, %44 ]
  %64 = phi <2 x double> [ %56, %53 ], [ %48, %44 ]
  %65 = add nuw nsw i64 %45, 1
  %66 = icmp eq i64 %65, %43
  br i1 %66, label %67, label %44, !llvm.loop !24

67:                                               ; preds = %61, %36, %25
  %68 = phi i32 [ %28, %25 ], [ %28, %36 ], [ %62, %61 ]
  %69 = phi double [ %27, %25 ], [ %27, %36 ], [ %63, %61 ]
  %70 = phi <2 x double> [ %29, %25 ], [ %29, %36 ], [ %64, %61 ]
  %71 = add nuw nsw i64 %26, 1
  %72 = icmp eq i64 %71, %24
  br i1 %72, label %73, label %25, !llvm.loop !26

73:                                               ; preds = %67, %17, %8
  %74 = phi i32 [ %11, %8 ], [ %11, %17 ], [ %68, %67 ]
  %75 = phi double [ %10, %8 ], [ %10, %17 ], [ %69, %67 ]
  %76 = phi <2 x double> [ %12, %8 ], [ %12, %17 ], [ %70, %67 ]
  %77 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %8, !llvm.loop !27

80:                                               ; preds = %73
  %81 = icmp eq i32 %74, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %3, %80
  %83 = load ptr, ptr @stderr, align 8, !tbaa !7
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str, ptr noundef %1) #14
  br label %92

85:                                               ; preds = %80
  %86 = sitofp i32 %74 to double
  %87 = insertelement <2 x double> poison, double %86, i64 0
  %88 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> zeroinitializer
  %89 = fdiv <2 x double> %76, %88
  store <2 x double> %89, ptr %2, align 8, !tbaa !23
  %90 = fdiv double %75, %86
  %91 = getelementptr inbounds double, ptr %2, i64 2
  store double %90, ptr %91, align 8, !tbaa !23
  br label %92

92:                                               ; preds = %85, %82
  %93 = phi i32 [ 1, %82 ], [ 0, %85 ]
  ret i32 %93
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @select_atoms(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @select_all(ptr noundef %0) #13
  br label %35

5:                                                ; preds = %2
  tail call fastcc void @clear_work(ptr noundef %0) #13
  tail call fastcc void @clear_select(ptr noundef %0) #13
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 124) #15
  br label %7

7:                                                ; preds = %32, %5
  %8 = phi ptr [ %6, %5 ], [ %33, %32 ]
  %9 = phi ptr [ %1, %5 ], [ %19, %32 ]
  %10 = icmp eq ptr %8, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds i8, ptr %8, i64 1
  br label %18

16:                                               ; preds = %7
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #15
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ null, %16 ]
  %20 = phi i64 [ %14, %11 ], [ %17, %16 ]
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 999
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 40, i64 1, ptr %24) #16
  br label %35

26:                                               ; preds = %18
  %27 = shl i64 %20, 32
  %28 = ashr exact i64 %27, 32
  %29 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %9, i64 noundef %28) #17
  %30 = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %28
  store i8 0, ptr %30, align 1, !tbaa !28
  tail call fastcc void @eval_1_aexpr(ptr noundef %0) #13
  tail call fastcc void @or_select(ptr noundef %0) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 124) #15
  tail call fastcc void @clear_select(ptr noundef %0) #13
  br label %7, !llvm.loop !29

34:                                               ; preds = %26
  tail call fastcc void @clear_select(ptr noundef %0) #13
  tail call fastcc void @set_select(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %34, %23, %4
  %36 = phi i32 [ 0, %4 ], [ 1, %23 ], [ 0, %34 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_all(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1, %41
  %6 = phi ptr [ %43, %41 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %36, %31 ]
  %33 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %32, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !20
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !llvm.loop !30

38:                                               ; preds = %31, %17
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !llvm.loop !31

41:                                               ; preds = %38, %5
  %42 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %5, !llvm.loop !32

45:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_work(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1, %41
  %6 = phi ptr [ %43, %41 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = and i32 %8, -129
  store i32 %9, ptr %7, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = and i32 %22, -129
  store i32 %23, ptr %21, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %36, %31 ]
  %33 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %32, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = and i32 %34, -129
  store i32 %35, ptr %33, align 8, !tbaa !20
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !llvm.loop !33

38:                                               ; preds = %31, %17
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !llvm.loop !34

41:                                               ; preds = %38, %5
  %42 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %5, !llvm.loop !35

45:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_select(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1, %41
  %6 = phi ptr [ %43, %41 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %38
  %18 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.residue_t, ptr %20, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %36, %31 ]
  %33 = getelementptr inbounds %struct.atom_t, ptr %29, i64 %32, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !20
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, %30
  br i1 %37, label %38, label %31, !llvm.loop !36

38:                                               ; preds = %31, %17
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !llvm.loop !37

41:                                               ; preds = %38, %5
  %42 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %5, !llvm.loop !38

45:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eval_1_aexpr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = load i8, ptr @aexpr, align 16, !tbaa !28
  %5 = icmp eq i8 %4, 58
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.2) #17
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #15
  %9 = getelementptr i8, ptr @aexpr, i64 %8
  %10 = getelementptr i8, ptr %9, i64 1
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %7, %6 ], [ null, %1 ]
  %13 = phi ptr [ %10, %6 ], [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %1 ]
  store ptr %12, ptr @spart, align 8
  %14 = load i8, ptr %13, align 1, !tbaa !28
  %15 = icmp eq i8 %14, 58
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @strtok(ptr noundef nonnull %13, ptr noundef nonnull @.str.2) #17
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = add i64 %18, 1
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi i64 [ %19, %16 ], [ 1, %11 ]
  %22 = phi ptr [ %17, %16 ], [ null, %11 ]
  %23 = getelementptr inbounds i8, ptr %13, i64 %21
  store ptr %22, ptr @rpart, align 8
  %24 = tail call ptr @strtok(ptr noundef nonnull %23, ptr noundef nonnull @.str.2) #17
  store ptr %24, ptr @apart, align 8, !tbaa !7
  %25 = load ptr, ptr @spart, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @strtok(ptr noundef nonnull %25, ptr noundef nonnull @.str.3) #17
  %29 = call fastcc i32 @is_pattern(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call fastcc void @match_str_pat(ptr noundef %0, ptr noundef %28) #13
  br label %35

32:                                               ; preds = %27
  %33 = load i32, ptr %2, align 4, !tbaa !40
  %34 = load i32, ptr %3, align 4, !tbaa !40
  tail call fastcc void @match_str_range(ptr noundef %0, i32 noundef %33, i32 noundef %34) #13
  br label %35

35:                                               ; preds = %32, %31
  %36 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35, %46
  %39 = phi ptr [ %47, %46 ], [ %36, %35 ]
  %40 = call fastcc i32 @is_pattern(ptr noundef nonnull %39, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @match_str_pat(ptr noundef %0, ptr noundef nonnull %39) #13
  br label %46

43:                                               ; preds = %38
  %44 = load i32, ptr %2, align 4, !tbaa !40
  %45 = load i32, ptr %3, align 4, !tbaa !40
  tail call fastcc void @match_str_range(ptr noundef %0, i32 noundef %44, i32 noundef %45) #13
  br label %46

46:                                               ; preds = %43, %42
  %47 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %38, !llvm.loop !41

49:                                               ; preds = %20
  tail call fastcc void @match_str_range(ptr noundef %0, i32 noundef 1, i32 noundef -1) #13
  br label %50

50:                                               ; preds = %46, %35, %49
  %51 = load ptr, ptr @rpart, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %75, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @strtok(ptr noundef nonnull %51, ptr noundef nonnull @.str.3) #17
  %55 = call fastcc i32 @is_pattern(ptr noundef %54, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call fastcc void @match_res_pat(ptr noundef %0, ptr noundef %54) #13
  br label %61

58:                                               ; preds = %53
  %59 = load i32, ptr %2, align 4, !tbaa !40
  %60 = load i32, ptr %3, align 4, !tbaa !40
  tail call fastcc void @match_res_range(ptr noundef %0, i32 noundef %59, i32 noundef %60) #13
  br label %61

61:                                               ; preds = %58, %57
  %62 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61, %72
  %65 = phi ptr [ %73, %72 ], [ %62, %61 ]
  %66 = call fastcc i32 @is_pattern(ptr noundef nonnull %65, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call fastcc void @match_res_pat(ptr noundef %0, ptr noundef nonnull %65) #13
  br label %72

69:                                               ; preds = %64
  %70 = load i32, ptr %2, align 4, !tbaa !40
  %71 = load i32, ptr %3, align 4, !tbaa !40
  tail call fastcc void @match_res_range(ptr noundef %0, i32 noundef %70, i32 noundef %71) #13
  br label %72

72:                                               ; preds = %69, %68
  %73 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %64, !llvm.loop !42

75:                                               ; preds = %50
  tail call fastcc void @match_res_range(ptr noundef %0, i32 noundef 1, i32 noundef -1) #13
  br label %76

76:                                               ; preds = %72, %61, %75
  %77 = load ptr, ptr @apart, align 8, !tbaa !7
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @strtok(ptr noundef nonnull %77, ptr noundef nonnull @.str.3) #17
  %81 = call fastcc i32 @is_pattern(ptr noundef %80, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef %80) #13
  br label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr @stderr, align 8, !tbaa !7
  %86 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %85) #16
  br label %87

87:                                               ; preds = %84, %83
  %88 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %87, %98
  %91 = phi ptr [ %99, %98 ], [ %88, %87 ]
  %92 = call fastcc i32 @is_pattern(ptr noundef nonnull %91, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef nonnull %91) #13
  br label %98

95:                                               ; preds = %90
  %96 = load ptr, ptr @stderr, align 8, !tbaa !7
  %97 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %96) #16
  br label %98

98:                                               ; preds = %95, %94
  %99 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %90, !llvm.loop !43

101:                                              ; preds = %76
  tail call fastcc void @match_atom_pat(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %102

102:                                              ; preds = %98, %87, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @or_select(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1, %47
  %6 = phi ptr [ %49, %47 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = shl i32 %8, 7
  %10 = and i32 %9, 128
  %11 = or i32 %10, %8
  store i32 %11, ptr %7, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !14
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = zext nneg i32 %13 to i64
  br label %19

19:                                               ; preds = %15, %44
  %20 = phi i64 [ 0, %15 ], [ %45, %44 ]
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !16
  %25 = shl i32 %24, 7
  %26 = and i32 %25, 128
  %27 = or i32 %26, %24
  store i32 %27, ptr %23, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 15
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = zext nneg i32 %29 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %42, %35 ]
  %37 = getelementptr inbounds %struct.atom_t, ptr %33, i64 %36, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !20
  %39 = shl i32 %38, 7
  %40 = and i32 %39, 128
  %41 = or i32 %40, %38
  store i32 %41, ptr %37, align 8, !tbaa !20
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !44

44:                                               ; preds = %35, %19
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %47, label %19, !llvm.loop !45

47:                                               ; preds = %44, %5
  %48 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %5, !llvm.loop !46

51:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_select(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1, %47
  %6 = phi ptr [ %49, %47 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = lshr i32 %8, 7
  %10 = and i32 %9, 1
  %11 = or i32 %10, %8
  store i32 %11, ptr %7, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !14
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = zext nneg i32 %13 to i64
  br label %19

19:                                               ; preds = %15, %44
  %20 = phi i64 [ 0, %15 ], [ %45, %44 ]
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !16
  %25 = lshr i32 %24, 7
  %26 = and i32 %25, 1
  %27 = or i32 %26, %24
  store i32 %27, ptr %23, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 15
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.residue_t, ptr %22, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = zext nneg i32 %29 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %42, %35 ]
  %37 = getelementptr inbounds %struct.atom_t, ptr %33, i64 %36, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !20
  %39 = lshr i32 %38, 7
  %40 = and i32 %39, 1
  %41 = or i32 %40, %38
  store i32 %41, ptr %37, align 8, !tbaa !20
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %35, !llvm.loop !47

44:                                               ; preds = %35, %19
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %47, label %19, !llvm.loop !48

47:                                               ; preds = %44, %5
  %48 = getelementptr inbounds %struct.strand_t, ptr %6, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %5, !llvm.loop !49

51:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @is_pattern(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = tail call ptr @__ctype_b_loc() #19
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = load i8, ptr %0, align 1, !tbaa !28
  %7 = sext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %5, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = and i16 %9, 2048
  %11 = icmp ne i16 %10, 0
  %12 = icmp eq i8 %6, 45
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %95

14:                                               ; preds = %3
  %15 = icmp eq i16 %10, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %14, %16
  %17 = phi i8 [ %25, %16 ], [ %6, %14 ]
  %18 = phi ptr [ %24, %16 ], [ %0, %14 ]
  %19 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %20 = sext i8 %17 to i32
  %21 = mul nsw i32 %19, 10
  %22 = add i32 %21, -48
  %23 = add i32 %22, %20
  %24 = getelementptr inbounds i8, ptr %18, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !28
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %5, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !50
  %29 = and i16 %28, 2048
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %16, !llvm.loop !52

31:                                               ; preds = %16
  store i32 %23, ptr %1, align 4, !tbaa !40
  %32 = load i8, ptr %24, align 1, !tbaa !28
  switch i8 %32, label %37 [
    i8 0, label %33
    i8 45, label %34
  ]

33:                                               ; preds = %31
  store i32 %23, ptr %2, align 4, !tbaa !40
  br label %95

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %18, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !28
  br label %37

37:                                               ; preds = %31, %34
  %38 = phi i8 [ %32, %31 ], [ %36, %34 ]
  %39 = phi ptr [ %24, %31 ], [ %35, %34 ]
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, ptr %2, align 4, !tbaa !40
  br label %95

42:                                               ; preds = %37
  %43 = sext i8 %38 to i64
  %44 = getelementptr inbounds i16, ptr %5, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !50
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %42, %48
  %49 = phi i8 [ %57, %48 ], [ %38, %42 ]
  %50 = phi ptr [ %56, %48 ], [ %39, %42 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %42 ]
  %52 = sext i8 %49 to i32
  %53 = mul nsw i32 %51, 10
  %54 = add i32 %53, -48
  %55 = add i32 %54, %52
  %56 = getelementptr inbounds i8, ptr %50, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !28
  %58 = sext i8 %57 to i64
  %59 = getelementptr inbounds i16, ptr %5, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !50
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %48, !llvm.loop !53

63:                                               ; preds = %48
  store i32 %55, ptr %2, align 4, !tbaa !40
  %64 = load i8, ptr %56, align 1, !tbaa !28
  %65 = sext i8 %64 to i32
  br label %95

66:                                               ; preds = %14
  store i32 1, ptr %1, align 4, !tbaa !40
  %67 = getelementptr inbounds i8, ptr %0, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !28
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, ptr %2, align 4, !tbaa !40
  br label %95

71:                                               ; preds = %66
  %72 = sext i8 %68 to i64
  %73 = getelementptr inbounds i16, ptr %5, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !50
  %75 = and i16 %74, 2048
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %71, %77
  %78 = phi i8 [ %86, %77 ], [ %68, %71 ]
  %79 = phi ptr [ %85, %77 ], [ %67, %71 ]
  %80 = phi i32 [ %84, %77 ], [ 0, %71 ]
  %81 = sext i8 %78 to i32
  %82 = mul nsw i32 %80, 10
  %83 = add i32 %82, -48
  %84 = add i32 %83, %81
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !28
  %87 = sext i8 %86 to i64
  %88 = getelementptr inbounds i16, ptr %5, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !50
  %90 = and i16 %89, 2048
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %77, !llvm.loop !54

92:                                               ; preds = %77
  store i32 %84, ptr %2, align 4, !tbaa !40
  %93 = load i8, ptr %85, align 1, !tbaa !28
  %94 = sext i8 %93 to i32
  br label %95

95:                                               ; preds = %71, %42, %3, %92, %70, %63, %41, %33
  %96 = phi i32 [ %65, %63 ], [ 0, %41 ], [ 0, %33 ], [ %94, %92 ], [ 0, %70 ], [ 1, %3 ], [ 1, %42 ], [ 0, %71 ]
  ret i32 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @match_str_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %3 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %9, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 4, !tbaa !11
  %16 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !56

19:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @match_str_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, -1
  %5 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = select i1 %4, i32 %6, i32 %2
  %8 = icmp slt i32 %6, 1
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi ptr [ %24, %22 ], [ %10, %9 ]
  %13 = phi i32 [ %23, %22 ], [ 1, %9 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !7
  %15 = icmp slt i32 %13, %1
  %16 = icmp sgt i32 %13, %7
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !11
  br label %22

22:                                               ; preds = %11, %18
  %23 = add nuw i32 %13, 1
  %24 = getelementptr inbounds %struct.strand_t, ptr %14, i64 0, i32 4
  %25 = icmp eq i32 %13, %6
  br i1 %25, label %26, label %11, !llvm.loop !59

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @match_res_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %3 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2, %36
  %8 = phi ptr [ %38, %36 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %32, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !15
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %25, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !16
  %31 = or i32 %30, %28
  store i32 %31, ptr %29, align 8, !tbaa !16
  %32 = add nuw nsw i64 %20, 1
  %33 = load i32, ptr %14, align 8, !tbaa !14
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %19, label %36, !llvm.loop !61

36:                                               ; preds = %19, %13, %7
  %37 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !62

40:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @match_res_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, -1
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %40
  %11 = phi ptr [ %5, %7 ], [ %42, %40 ]
  %12 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !14
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = select i1 %8, i32 %18, i32 %2
  %22 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 7
  %23 = sext i32 %21 to i64
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %20, %38
  %26 = phi i64 [ 0, %20 ], [ %27, %38 ]
  %27 = add nuw nsw i64 %26, 1
  %28 = icmp sge i64 %27, %9
  %29 = icmp slt i64 %26, %23
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load ptr, ptr %22, align 8, !tbaa !15
  %33 = getelementptr inbounds ptr, ptr %32, i64 %26
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = getelementptr inbounds %struct.residue_t, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !16
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %25, %31
  %39 = icmp eq i64 %27, %24
  br i1 %39, label %40, label %25, !llvm.loop !63

40:                                               ; preds = %38, %16, %10
  %41 = getelementptr inbounds %struct.strand_t, ptr %11, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %10, !llvm.loop !64

44:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @match_atom_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %3 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %2, %57
  %8 = phi ptr [ %59, %57 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  br label %19

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %15, %17 ], [ %53, %52 ]
  %21 = phi i64 [ 0, %17 ], [ %54, %52 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !15
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !16
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !18
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.residue_t, ptr %24, i64 0, i32 17
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.atom_t, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %39, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.atom_t, ptr %37, i64 %36, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !20
  %45 = or i32 %44, %42
  store i32 %45, ptr %43, align 8, !tbaa !20
  %46 = add nuw nsw i64 %36, 1
  %47 = load i32, ptr %30, align 8, !tbaa !18
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %35, label %50, !llvm.loop !66

50:                                               ; preds = %35
  %51 = load i32, ptr %14, align 8, !tbaa !14
  br label %52

52:                                               ; preds = %50, %29, %19
  %53 = phi i32 [ %51, %50 ], [ %20, %29 ], [ %20, %19 ]
  %54 = add nuw nsw i64 %21, 1
  %55 = sext i32 %53 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %19, label %57, !llvm.loop !67

57:                                               ; preds = %52, %13, %7
  %58 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %7, !llvm.loop !68

61:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @aexpr2rexpr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  store i8 94, ptr @rexpr, align 16, !tbaa !28
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = phi ptr [ getelementptr inbounds ([1000 x i8], ptr @rexpr, i64 0, i64 1), %1 ], [ %12, %11 ]
  %5 = load i8, ptr %3, align 1, !tbaa !28
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  switch i8 %5, label %10 [
    i8 0, label %14
    i8 42, label %7
    i8 63, label %9
  ]

7:                                                ; preds = %2
  store i8 46, ptr %4, align 1, !tbaa !28
  %8 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 42, ptr %6, align 1, !tbaa !28
  br label %11

9:                                                ; preds = %2
  store i8 46, ptr %4, align 1, !tbaa !28
  br label %11

10:                                               ; preds = %2
  store i8 %5, ptr %4, align 1, !tbaa !28
  br label %11

11:                                               ; preds = %7, %10, %9
  %12 = phi ptr [ %8, %7 ], [ %6, %9 ], [ %6, %10 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !69

14:                                               ; preds = %2
  store i8 36, ptr %4, align 1, !tbaa !28
  store i8 0, ptr %6, align 1, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @atom_in_aexpr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2, %30
  %5 = phi ptr [ %16, %30 ], [ %1, %2 ]
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 124) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  br label %15

13:                                               ; preds = %4
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #15
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %12, %8 ], [ null, %13 ]
  %17 = phi i64 [ %11, %8 ], [ %14, %13 ]
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 999
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 41, i64 1, ptr %21) #16
  br label %32

23:                                               ; preds = %15
  %24 = shl i64 %17, 32
  %25 = ashr exact i64 %24, 32
  %26 = tail call ptr @strncpy(ptr noundef nonnull @aexpr, ptr noundef nonnull %5, i64 noundef %25) #17
  %27 = getelementptr inbounds [1000 x i8], ptr @aexpr, i64 0, i64 %25
  store i8 0, ptr %27, align 1, !tbaa !28
  %28 = tail call fastcc i32 @atom_in_1_aexpr(ptr noundef %0) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = icmp eq ptr %16, null
  br i1 %31, label %32, label %4, !llvm.loop !70

32:                                               ; preds = %30, %23, %2, %20
  %33 = phi i32 [ 0, %20 ], [ 0, %2 ], [ 0, %30 ], [ 1, %23 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @atom_in_1_aexpr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = load i8, ptr @aexpr, align 16, !tbaa !28
  %5 = icmp eq i8 %4, 58
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @strtok(ptr noundef nonnull @aexpr, ptr noundef nonnull @.str.2) #17
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #15
  %9 = getelementptr i8, ptr @aexpr, i64 %8
  %10 = getelementptr i8, ptr %9, i64 1
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %7, %6 ], [ null, %1 ]
  %13 = phi ptr [ %10, %6 ], [ getelementptr inbounds ([1000 x i8], ptr @aexpr, i64 0, i64 1), %1 ]
  store ptr %12, ptr @spart, align 8
  %14 = load i8, ptr %13, align 1, !tbaa !28
  %15 = icmp eq i8 %14, 58
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @strtok(ptr noundef nonnull %13, ptr noundef nonnull @.str.2) #17
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #15
  %19 = add i64 %18, 1
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi i64 [ %19, %16 ], [ 1, %11 ]
  %22 = phi ptr [ %17, %16 ], [ null, %11 ]
  %23 = getelementptr inbounds i8, ptr %13, i64 %21
  store ptr %22, ptr @rpart, align 8
  %24 = tail call ptr @strtok(ptr noundef nonnull %23, ptr noundef nonnull @.str.2) #17
  store ptr %24, ptr @apart, align 8, !tbaa !7
  %25 = load ptr, ptr @spart, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @strtok(ptr noundef nonnull %25, ptr noundef nonnull @.str.3) #17
  %29 = call fastcc i32 @is_pattern(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @atom_in_str_pat(ptr noundef %0, ptr noundef %28) #13, !range !6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %57

34:                                               ; preds = %27
  %35 = load i32, ptr %2, align 4, !tbaa !40
  %36 = load i32, ptr %3, align 4, !tbaa !40
  %37 = tail call fastcc i32 @atom_in_str_range(ptr noundef %0, i32 noundef %35, i32 noundef %36) #13, !range !6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34, %31
  %40 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %112, label %42

42:                                               ; preds = %39, %54
  %43 = phi ptr [ %55, %54 ], [ %40, %39 ]
  %44 = call fastcc i32 @is_pattern(ptr noundef nonnull %43, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @atom_in_str_pat(ptr noundef %0, ptr noundef nonnull %43) #13, !range !6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %57

49:                                               ; preds = %42
  %50 = load i32, ptr %2, align 4, !tbaa !40
  %51 = load i32, ptr %3, align 4, !tbaa !40
  %52 = tail call fastcc i32 @atom_in_str_range(ptr noundef %0, i32 noundef %50, i32 noundef %51) #13, !range !6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %46
  %55 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %56 = icmp eq ptr %55, null
  br i1 %56, label %112, label %42, !llvm.loop !71

57:                                               ; preds = %49, %46, %20, %34, %31
  %58 = load ptr, ptr @rpart, align 8, !tbaa !7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @strtok(ptr noundef nonnull %58, ptr noundef nonnull @.str.3) #17
  %62 = call fastcc i32 @is_pattern(ptr noundef %61, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @atom_in_res_pat(ptr noundef %0, ptr noundef %61) #13, !range !6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %90

67:                                               ; preds = %60
  %68 = load i32, ptr %2, align 4, !tbaa !40
  %69 = load i32, ptr %3, align 4, !tbaa !40
  %70 = tail call fastcc i32 @atom_in_res_range(ptr noundef %0, i32 noundef %68, i32 noundef %69) #13, !range !6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67, %64
  %73 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %112, label %75

75:                                               ; preds = %72, %87
  %76 = phi ptr [ %88, %87 ], [ %73, %72 ]
  %77 = call fastcc i32 @is_pattern(ptr noundef nonnull %76, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc i32 @atom_in_res_pat(ptr noundef %0, ptr noundef nonnull %76) #13, !range !6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %90

82:                                               ; preds = %75
  %83 = load i32, ptr %2, align 4, !tbaa !40
  %84 = load i32, ptr %3, align 4, !tbaa !40
  %85 = tail call fastcc i32 @atom_in_res_range(ptr noundef %0, i32 noundef %83, i32 noundef %84) #13, !range !6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %79
  %88 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %112, label %75, !llvm.loop !72

90:                                               ; preds = %82, %79, %57, %67, %64
  %91 = load ptr, ptr @apart, align 8, !tbaa !7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %112, label %93

93:                                               ; preds = %90
  %94 = tail call ptr @strtok(ptr noundef nonnull %91, ptr noundef nonnull @.str.3) #17
  %95 = call fastcc i32 @is_pattern(ptr noundef %94, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = tail call fastcc i32 @atom_in_atom_pat(ptr noundef %0, ptr noundef %94) #13, !range !6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97, %106
  %101 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = call fastcc i32 @is_pattern(ptr noundef nonnull %101, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !39
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = tail call fastcc i32 @atom_in_atom_pat(ptr noundef %0, ptr noundef nonnull %101) #13, !range !6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %100, label %112, !llvm.loop !73

109:                                              ; preds = %103, %93
  %110 = load ptr, ptr @stderr, align 8, !tbaa !7
  %111 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %110) #16
  br label %112

112:                                              ; preds = %54, %87, %100, %106, %109, %39, %72, %90, %97
  %113 = phi i32 [ 1, %97 ], [ 1, %90 ], [ 0, %72 ], [ 0, %39 ], [ 0, %109 ], [ 0, %100 ], [ 1, %106 ], [ 0, %87 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @atom_in_str_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.residue_t, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %7 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %8 = load ptr, ptr %6, align 8, !tbaa !55
  %9 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %8, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @atom_in_str_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.strand_t, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i32 %2, -1
  %11 = getelementptr inbounds %struct.molecule_t, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = select i1 %10, i32 %12, i32 %2
  %14 = icmp slt i32 %12, 1
  br i1 %14, label %30, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.molecule_t, ptr %9, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %26
  %18 = phi ptr [ %28, %26 ], [ %16, %15 ]
  %19 = phi i32 [ %27, %26 ], [ 1, %15 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !7
  %21 = icmp ne ptr %7, %20
  %22 = icmp slt i32 %19, %1
  %23 = or i1 %22, %21
  %24 = icmp sgt i32 %19, %13
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = add nuw i32 %19, 1
  %28 = getelementptr inbounds %struct.strand_t, ptr %20, i64 0, i32 4
  %29 = icmp eq i32 %19, %12
  br i1 %29, label %30, label %17, !llvm.loop !77

30:                                               ; preds = %17, %26, %3
  %31 = phi i32 [ 0, %3 ], [ 0, %26 ], [ 1, %17 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @atom_in_res_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %5 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %6 = getelementptr inbounds %struct.residue_t, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %7, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @atom_in_res_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.atom_t, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.residue_t, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq i32 %2, -1
  %9 = getelementptr inbounds %struct.strand_t, ptr %7, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = select i1 %8, i32 %10, i32 %2
  %12 = getelementptr inbounds %struct.strand_t, ptr %7, i64 0, i32 7
  %13 = sext i32 %11 to i64
  %14 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %19, %3
  %17 = phi i64 [ %24, %19 ], [ 0, %3 ]
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %12, align 8, !tbaa !15
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = icmp eq ptr %5, %22
  %24 = add nuw nsw i64 %17, 1
  %25 = trunc i64 %24 to i32
  %26 = icmp sge i32 %25, %1
  %27 = select i1 %23, i1 %26, i1 false
  %28 = icmp slt i64 %17, %13
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %16, !llvm.loop !78

30:                                               ; preds = %16, %19
  %31 = phi i32 [ 1, %19 ], [ 0, %16 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @atom_in_atom_pat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @aexpr2rexpr(ptr noundef %1) #13
  %3 = tail call i32 @regcomp(ptr noundef nonnull @expbuf, ptr noundef nonnull @rexpr, i32 noundef 4) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = tail call i32 @regexec(ptr noundef nonnull @expbuf, ptr noundef %4, i64 noundef 0, ptr noundef null, i32 noundef 0) #17
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_attr_if(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %3, %52
  %8 = phi ptr [ %54, %52 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = and i32 %10, %2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 %1
  %14 = or i32 %13, %10
  store i32 %14, ptr %9, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !14
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = zext nneg i32 %16 to i64
  br label %22

22:                                               ; preds = %18, %49
  %23 = phi i64 [ 0, %18 ], [ %50, %49 ]
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !16
  %28 = and i32 %27, %2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 %1
  %31 = or i32 %30, %27
  store i32 %31, ptr %26, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 15
  %33 = load i32, ptr %32, align 8, !tbaa !18
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.residue_t, ptr %25, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = zext nneg i32 %33 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %47, %39 ]
  %41 = getelementptr inbounds %struct.atom_t, ptr %37, i64 %40, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !20
  %43 = and i32 %42, %2
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 0, i32 %1
  %46 = or i32 %45, %42
  store i32 %46, ptr %41, align 8, !tbaa !20
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %38
  br i1 %48, label %49, label %39, !llvm.loop !79

49:                                               ; preds = %39, %22
  %50 = add nuw nsw i64 %23, 1
  %51 = icmp eq i64 %50, %21
  br i1 %51, label %52, label %22, !llvm.loop !80

52:                                               ; preds = %49, %7
  %53 = getelementptr inbounds %struct.strand_t, ptr %8, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %7, !llvm.loop !81

56:                                               ; preds = %52, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_attr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = xor i32 %1, -1
  br label %8

8:                                                ; preds = %6, %44
  %9 = phi ptr [ %4, %6 ], [ %46, %44 ]
  %10 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = and i32 %11, %7
  store i32 %12, ptr %10, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = zext nneg i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %41
  %21 = phi i64 [ 0, %16 ], [ %42, %41 ]
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !16
  %26 = and i32 %25, %7
  store i32 %26, ptr %24, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !18
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.residue_t, ptr %23, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = zext nneg i32 %28 to i64
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ 0, %30 ], [ %39, %34 ]
  %36 = getelementptr inbounds %struct.atom_t, ptr %32, i64 %35, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !20
  %38 = and i32 %37, %7
  store i32 %38, ptr %36, align 8, !tbaa !20
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %39, %33
  br i1 %40, label %41, label %34, !llvm.loop !82

41:                                               ; preds = %34, %20
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, %19
  br i1 %43, label %44, label %20, !llvm.loop !83

44:                                               ; preds = %41, %8
  %45 = getelementptr inbounds %struct.strand_t, ptr %9, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %8, !llvm.loop !84

48:                                               ; preds = %44, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { cold optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }
attributes #16 = { cold }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i32 0, i32 2}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 12}
!12 = !{!"strand_t", !8, i64 0, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 24, !13, i64 32, !13, i64 36, !8, i64 40}
!13 = !{!"int", !9, i64 0}
!14 = !{!12, !13, i64 32}
!15 = !{!12, !8, i64 40}
!16 = !{!17, !13, i64 40}
!17 = !{!"residue_t", !8, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !8, i64 56, !8, i64 64, !13, i64 72, !8, i64 80, !13, i64 88, !8, i64 96, !13, i64 104, !8, i64 112, !8, i64 120}
!18 = !{!17, !13, i64 104}
!19 = !{!17, !8, i64 120}
!20 = !{!21, !13, i64 16}
!21 = !{!"atom_t", !8, i64 0, !8, i64 8, !13, i64 16, !13, i64 20, !9, i64 24, !8, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !8, i64 96, !13, i64 104, !22, i64 112, !22, i64 120, !13, i64 128, !13, i64 132, !8, i64 136, !9, i64 144, !22, i64 168}
!22 = !{!"double", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = !{i32 -128, i32 128}
!40 = !{!13, !13, i64 0}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !9, i64 0}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = !{!12, !8, i64 0}
!56 = distinct !{!56, !25}
!57 = !{!58, !13, i64 96}
!58 = !{!"molecule_t", !9, i64 0, !13, i64 96, !8, i64 104, !13, i64 112, !13, i64 116, !13, i64 120, !8, i64 128}
!59 = distinct !{!59, !25}
!60 = !{!17, !8, i64 24}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = !{!21, !8, i64 0}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = !{!21, !8, i64 56}
!75 = !{!17, !8, i64 56}
!76 = !{!12, !8, i64 16}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
