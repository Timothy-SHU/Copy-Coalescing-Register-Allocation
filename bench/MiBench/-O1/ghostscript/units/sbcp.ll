; ModuleID = 'sbcp.c'
source_filename = "sbcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_BCPD_state_s = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_BCPE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_BCPE_process, i32 1, i32 2, ptr null, ptr null, ptr null }, align 8
@s_TBCPE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_TBCPE_process, i32 1, i32 2, ptr null, ptr null, ptr null }, align 8
@st_BCPD_state = internal constant %struct.gs_memory_struct_type_s { i32 64, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_BCPD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BCPD_state, ptr @s_BCPD_init, ptr @s_BCPD_process, i32 1, i32 1, ptr null, ptr null, ptr @s_BCPD_init }, align 8
@s_TBCPD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BCPD_state, ptr @s_BCPD_init, ptr @s_TBCPD_process, i32 1, i32 1, ptr null, ptr null, ptr @s_BCPD_init }, align 8
@s_BCPE_process.escaped = internal unnamed_addr constant [32 x i8] c"\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\00\00\00\00\00\00\01\00\00\00", align 16
@s_TBCPE_process.escaped = internal unnamed_addr constant [32 x i8] c"\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\00\00\00\00\00\00\01\01\00\00\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"(T)BCPDecode state\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_BCPE_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %11, i32 %19)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  br label %23

23:                                               ; preds = %53, %4
  %24 = phi ptr [ %5, %4 ], [ %54, %53 ]
  %25 = phi ptr [ %13, %4 ], [ %55, %53 ]
  %26 = phi i32 [ %19, %4 ], [ %56, %53 ]
  %27 = phi ptr [ %22, %4 ], [ %57, %53 ]
  %28 = icmp ult ptr %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %24, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = icmp ult i8 %31, 32
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = zext nneg i8 %31 to i64
  %35 = getelementptr inbounds i8, ptr @s_BCPE_process.escaped, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = icmp eq ptr %30, %7
  br i1 %39, label %53, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 1, ptr %41, align 1, !tbaa !14
  %42 = or disjoint i8 %31, 64
  %43 = add i32 %26, -1
  %44 = icmp ult i32 %43, %11
  %45 = sext i1 %44 to i64
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  br label %47

47:                                               ; preds = %40, %33, %29
  %48 = phi ptr [ %25, %33 ], [ %25, %29 ], [ %41, %40 ]
  %49 = phi i32 [ %26, %33 ], [ %26, %29 ], [ %43, %40 ]
  %50 = phi ptr [ %27, %33 ], [ %27, %29 ], [ %46, %40 ]
  %51 = phi i8 [ %31, %33 ], [ %31, %29 ], [ %42, %40 ]
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !14
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi ptr [ %30, %47 ], [ %24, %38 ]
  %55 = phi ptr [ %52, %47 ], [ %25, %38 ]
  %56 = phi i32 [ %49, %47 ], [ %26, %38 ]
  %57 = phi ptr [ %50, %47 ], [ %27, %38 ]
  %58 = phi i1 [ true, %47 ], [ false, %38 ]
  br i1 %58, label %23, label %59

59:                                               ; preds = %23, %53
  %60 = phi ptr [ %54, %53 ], [ %24, %23 ]
  %61 = phi ptr [ %55, %53 ], [ %25, %23 ]
  store ptr %60, ptr %1, align 8, !tbaa !5
  store ptr %61, ptr %12, align 8, !tbaa !11
  %62 = icmp ne ptr %60, %7
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_TBCPE_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %11, i32 %19)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  br label %23

23:                                               ; preds = %53, %4
  %24 = phi ptr [ %5, %4 ], [ %54, %53 ]
  %25 = phi ptr [ %13, %4 ], [ %55, %53 ]
  %26 = phi i32 [ %19, %4 ], [ %56, %53 ]
  %27 = phi ptr [ %22, %4 ], [ %57, %53 ]
  %28 = icmp ult ptr %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %24, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = icmp ult i8 %31, 32
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = zext nneg i8 %31 to i64
  %35 = getelementptr inbounds i8, ptr @s_TBCPE_process.escaped, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = icmp eq ptr %30, %7
  br i1 %39, label %53, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 1, ptr %41, align 1, !tbaa !14
  %42 = or disjoint i8 %31, 64
  %43 = add i32 %26, -1
  %44 = icmp ult i32 %43, %11
  %45 = sext i1 %44 to i64
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  br label %47

47:                                               ; preds = %40, %33, %29
  %48 = phi ptr [ %25, %33 ], [ %25, %29 ], [ %41, %40 ]
  %49 = phi i32 [ %26, %33 ], [ %26, %29 ], [ %43, %40 ]
  %50 = phi ptr [ %27, %33 ], [ %27, %29 ], [ %46, %40 ]
  %51 = phi i8 [ %31, %33 ], [ %31, %29 ], [ %42, %40 ]
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !14
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi ptr [ %30, %47 ], [ %24, %38 ]
  %55 = phi ptr [ %52, %47 ], [ %25, %38 ]
  %56 = phi i32 [ %49, %47 ], [ %26, %38 ]
  %57 = phi ptr [ %50, %47 ], [ %27, %38 ]
  %58 = phi i1 [ true, %47 ], [ false, %38 ]
  br i1 %58, label %23, label %59

59:                                               ; preds = %23, %53
  %60 = phi ptr [ %54, %53 ], [ %24, %23 ]
  %61 = phi ptr [ %55, %53 ], [ %25, %23 ]
  store ptr %60, ptr %1, align 8, !tbaa !5
  store ptr %61, ptr %12, align 8, !tbaa !11
  %62 = icmp ne ptr %60, %7
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_BCPD_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %3, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 4, !tbaa !19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_BCPD_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = tail call fastcc i32 @s_xBCPD_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @s_TBCPD_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = tail call fastcc i32 @s_xBCPD_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @s_xBCPD_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %0, i64 0, i32 3
  %19 = icmp eq i32 %3, 0
  %20 = select i1 %19, i32 5, i32 3
  %21 = icmp eq i32 %3, 0
  br label %22

22:                                               ; preds = %88, %4
  %23 = phi ptr [ %5, %4 ], [ %82, %88 ]
  %24 = phi ptr [ %9, %4 ], [ %83, %88 ]
  %25 = phi i32 [ %13, %4 ], [ %84, %88 ]
  %26 = phi i32 [ undef, %4 ], [ %85, %88 ]
  %27 = phi i32 [ %15, %4 ], [ %86, %88 ]
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = icmp eq ptr %24, %11
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = icmp ult ptr %23, %7
  %33 = zext i1 %32 to i32
  br label %81

34:                                               ; preds = %29
  %35 = load ptr, ptr %16, align 8, !tbaa !20
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr %16, align 8, !tbaa !20
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !14
  %39 = add nsw i32 %25, -1
  br label %81, !llvm.loop !21

40:                                               ; preds = %22
  %41 = icmp eq ptr %23, %7
  br i1 %41, label %81, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %23, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %45 = icmp ult i8 %44, 32
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  switch i8 %44, label %68 [
    i8 1, label %47
    i8 3, label %52
    i8 4, label %57
    i8 5, label %81
    i8 17, label %60
    i8 19, label %61
    i8 20, label %62
    i8 28, label %67
  ], !llvm.loop !21

47:                                               ; preds = %46
  %48 = icmp eq i32 %27, 0
  %49 = select i1 %48, i32 %26, i32 -2
  %50 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %51 = select i1 %48, i32 3, i32 5
  br label %81, !llvm.loop !21

52:                                               ; preds = %46
  %53 = load ptr, ptr %18, align 8, !tbaa !23
  %54 = tail call i32 %53(ptr noundef %0) #4
  %55 = icmp slt i32 %54, 0
  %56 = select i1 %55, i32 5, i32 3
  br label %81

57:                                               ; preds = %46
  %58 = icmp eq i32 %27, 0
  %59 = select i1 %58, i32 -1, i32 -2
  br label %81

60:                                               ; preds = %46
  br label %81, !llvm.loop !21

61:                                               ; preds = %46
  br label %81, !llvm.loop !21

62:                                               ; preds = %46
  %63 = load ptr, ptr %17, align 8, !tbaa !24
  %64 = tail call i32 %63(ptr noundef %0) #4
  %65 = icmp slt i32 %64, 0
  %66 = select i1 %65, i32 5, i32 3
  br label %81

67:                                               ; preds = %46
  br label %81, !llvm.loop !21

68:                                               ; preds = %46, %42
  %69 = icmp eq ptr %24, %11
  br i1 %69, label %81, label %70

70:                                               ; preds = %68
  %71 = icmp eq i32 %27, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %70
  switch i8 %44, label %81 [
    i8 91, label %73
    i8 65, label %74
    i8 67, label %74
    i8 68, label %74
    i8 69, label %74
    i8 81, label %74
    i8 83, label %74
    i8 84, label %74
    i8 92, label %74
    i8 77, label %76
  ]

73:                                               ; preds = %72
  br i1 %21, label %81, label %74

74:                                               ; preds = %73, %72, %72, %72, %72, %72, %72, %72, %72
  %75 = xor i8 %44, 64
  br label %78

76:                                               ; preds = %72
  %77 = select i1 %19, i32 -2, i32 %26
  br label %81

78:                                               ; preds = %74, %70
  %79 = phi i8 [ %75, %74 ], [ %44, %70 ]
  %80 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %79, ptr %80, align 1, !tbaa !14
  br label %81

81:                                               ; preds = %72, %76, %73, %68, %62, %46, %57, %52, %47, %40, %78, %67, %61, %60, %34, %31
  %82 = phi ptr [ %23, %31 ], [ %23, %34 ], [ %43, %78 ], [ %43, %67 ], [ %43, %61 ], [ %43, %60 ], [ %23, %40 ], [ %43, %47 ], [ %43, %52 ], [ %43, %57 ], [ %43, %46 ], [ %43, %62 ], [ %23, %68 ], [ %43, %73 ], [ %43, %76 ], [ %43, %72 ]
  %83 = phi ptr [ %24, %31 ], [ %38, %34 ], [ %80, %78 ], [ %24, %67 ], [ %24, %61 ], [ %24, %60 ], [ %24, %40 ], [ %24, %47 ], [ %24, %52 ], [ %24, %57 ], [ %24, %46 ], [ %24, %62 ], [ %24, %68 ], [ %24, %73 ], [ %24, %76 ], [ %24, %72 ]
  %84 = phi i32 [ %25, %31 ], [ %39, %34 ], [ 0, %78 ], [ 0, %67 ], [ 0, %61 ], [ 0, %60 ], [ 0, %40 ], [ 0, %47 ], [ 0, %52 ], [ 0, %57 ], [ 0, %46 ], [ 0, %62 ], [ 0, %68 ], [ 0, %73 ], [ 0, %76 ], [ 0, %72 ]
  %85 = phi i32 [ %33, %31 ], [ %26, %34 ], [ %26, %78 ], [ %26, %67 ], [ %26, %61 ], [ %26, %60 ], [ 0, %40 ], [ %49, %47 ], [ %54, %52 ], [ %59, %57 ], [ %26, %46 ], [ %64, %62 ], [ 1, %68 ], [ -2, %73 ], [ %77, %76 ], [ -2, %72 ]
  %86 = phi i32 [ %27, %31 ], [ %27, %34 ], [ 0, %78 ], [ %27, %67 ], [ %27, %61 ], [ %27, %60 ], [ %27, %40 ], [ %50, %47 ], [ %27, %52 ], [ %27, %57 ], [ %27, %46 ], [ %27, %62 ], [ %27, %68 ], [ 0, %73 ], [ 0, %76 ], [ 0, %72 ]
  %87 = phi i32 [ 2, %31 ], [ 3, %34 ], [ 0, %78 ], [ 3, %67 ], [ 3, %61 ], [ 3, %60 ], [ 2, %40 ], [ %51, %47 ], [ %56, %52 ], [ 5, %57 ], [ 3, %46 ], [ %66, %62 ], [ 2, %68 ], [ 5, %73 ], [ %20, %76 ], [ 5, %72 ]
  switch i32 %87, label %90 [
    i32 0, label %88
    i32 2, label %89
    i32 3, label %88
    i32 5, label %89
  ]

88:                                               ; preds = %81, %81
  br label %22, !llvm.loop !21

89:                                               ; preds = %81, %81
  store i32 %84, ptr %12, align 8, !tbaa !18
  store i32 %86, ptr %14, align 8, !tbaa !15
  store ptr %82, ptr %1, align 8, !tbaa !5
  store ptr %83, ptr %8, align 8, !tbaa !11
  br label %90

90:                                               ; preds = %81, %89
  ret i32 %85
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !7, i64 8}
!12 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!13 = !{!12, !7, i64 16}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !17, i64 40}
!16 = !{!"stream_BCPD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !7, i64 56}
!17 = !{!"int", !8, i64 0}
!18 = !{!16, !17, i64 48}
!19 = !{!16, !17, i64 44}
!20 = !{!16, !7, i64 56}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!16, !7, i64 24}
!24 = !{!16, !7, i64 32}
