; ModuleID = 'sstring.c'
source_filename = "sstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_AXD_state_s = type { ptr, ptr, ptr, i32 }
%struct.stream_PSSD_state_s = type { ptr, ptr, ptr, i32, i32 }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_AXE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_AXE_process, i32 1, i32 3, ptr null, ptr null, ptr null }, align 8
@st_AXD_state = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_AXD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_AXD_state, ptr @s_AXD_init, ptr @s_AXD_process, i32 2, i32 1, ptr null, ptr null, ptr null }, align 8
@s_PSSE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_PSSE_process, i32 1, i32 4, ptr null, ptr null, ptr null }, align 8
@st_PSSD_state = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_PSSD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PSSD_state, ptr @s_PSSD_init, ptr @s_PSSD_process, i32 4, i32 1, ptr null, ptr null, ptr null }, align 8
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ASCIIHexDecode state\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A\0D\09\08\0C\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nrtbf\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"PSStringDecode state\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_AXE_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp ne i32 %3, 0
  %21 = sext i1 %20 to i32
  %22 = add nsw i32 %19, %21
  %23 = add nsw i32 %22, 64
  %24 = sdiv i32 %23, -65
  %25 = add i32 %24, %22
  %26 = ashr i32 %25, 1
  %27 = icmp sge i32 %26, %13
  %28 = tail call i32 @llvm.smin.i32(i32 %26, i32 %13)
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %4, %55
  %31 = phi i32 [ %34, %55 ], [ %28, %4 ]
  %32 = phi ptr [ %35, %55 ], [ %5, %4 ]
  %33 = phi ptr [ %56, %55 ], [ %7, %4 ]
  %34 = add nsw i32 %31, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !14
  %37 = lshr i8 %36, 4
  %38 = zext nneg i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr @.str, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %41 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %40, ptr %41, align 1, !tbaa !14
  %42 = load i8, ptr %35, align 1, !tbaa !14
  %43 = and i8 %42, 15
  %44 = zext nneg i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr @.str, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !14
  %47 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %46, ptr %47, align 1, !tbaa !14
  %48 = and i32 %34, 31
  %49 = icmp ne i32 %48, 0
  %50 = icmp eq i32 %34, 0
  %51 = and i1 %20, %50
  %52 = or i1 %49, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %30
  %54 = getelementptr inbounds i8, ptr %33, i64 3
  store i8 10, ptr %54, align 1, !tbaa !14
  br label %55

55:                                               ; preds = %53, %30
  %56 = phi ptr [ %47, %30 ], [ %54, %53 ]
  %57 = icmp sgt i32 %31, 1
  br i1 %57, label %30, label %58, !llvm.loop !15

58:                                               ; preds = %55, %4
  %59 = phi ptr [ %7, %4 ], [ %56, %55 ]
  %60 = phi ptr [ %5, %4 ], [ %35, %55 ]
  %61 = and i1 %20, %27
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 62, ptr %63, align 1, !tbaa !14
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %59, %58 ]
  %66 = xor i1 %27, true
  %67 = zext i1 %66 to i32
  store ptr %60, ptr %1, align 8, !tbaa !5
  store ptr %65, ptr %6, align 8, !tbaa !10
  ret i32 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_AXD_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_AXD_state_s, ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_AXD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.stream_AXD_state_s, ptr %0, i64 0, i32 3
  %6 = tail call i32 @s_hex_process(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1), !range !20
  switch i32 %6, label %59 [
    i32 0, label %7
    i32 1, label %22
    i32 -2, label %40
  ]

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !17
  %9 = icmp sgt i32 %8, -1
  %10 = icmp ne i32 %3, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %59, label %18

18:                                               ; preds = %12
  %19 = trunc i32 %8 to i8
  %20 = shl i8 %19, 4
  %21 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %21, ptr %13, align 8, !tbaa !10
  store i8 %20, ptr %21, align 1, !tbaa !14
  br label %22

22:                                               ; preds = %7, %18, %4
  %23 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = load ptr, ptr %1, align 8, !tbaa !5
  %26 = icmp ult ptr %25, %24
  br i1 %26, label %27, label %59

27:                                               ; preds = %22, %38
  %28 = phi ptr [ %29, %38 ], [ %25, %22 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !14
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = icmp eq i8 %33, 102
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = icmp eq i8 %30, 62
  br i1 %36, label %37, label %59

37:                                               ; preds = %35
  store ptr %29, ptr %1, align 8, !tbaa !5
  br label %46

38:                                               ; preds = %27
  store ptr %29, ptr %1, align 8, !tbaa !5
  %39 = icmp eq ptr %29, %24
  br i1 %39, label %59, label %27, !llvm.loop !21

40:                                               ; preds = %4
  %41 = load ptr, ptr %1, align 8, !tbaa !5
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = icmp eq i8 %42, 62
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %41, i64 -1
  store ptr %45, ptr %1, align 8, !tbaa !5
  br label %59

46:                                               ; preds = %40, %37
  %47 = load i32, ptr %5, align 8, !tbaa !17
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = trunc i32 %47 to i8
  %57 = shl i8 %56, 4
  %58 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %58, ptr %50, align 8, !tbaa !10
  store i8 %57, ptr %58, align 1, !tbaa !14
  br label %59

59:                                               ; preds = %38, %22, %46, %55, %49, %4, %35, %12, %44
  %60 = phi i32 [ -2, %44 ], [ 1, %12 ], [ 1, %35 ], [ %6, %4 ], [ 1, %49 ], [ -1, %55 ], [ -1, %46 ], [ 0, %22 ], [ 0, %38 ]
  ret i32 %60
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PSSE_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %11 to i64
  br label %15

15:                                               ; preds = %75, %4
  %16 = phi i32 [ 0, %4 ], [ %76, %75 ]
  %17 = phi ptr [ %9, %4 ], [ %77, %75 ]
  %18 = phi ptr [ %5, %4 ], [ %78, %75 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %80

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %23 = zext i8 %22 to i32
  %24 = add i8 %22, -127
  %25 = icmp ult i8 %24, -95
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = add i8 %22, -1
  %28 = icmp ult i8 %27, 31
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %23, i64 6)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = ptrtoint ptr %17 to i64
  %34 = sub i64 %13, %33
  %35 = icmp slt i64 %34, 2
  br i1 %35, label %75, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 92, ptr %37, align 1, !tbaa !14
  %38 = ptrtoint ptr %30 to i64
  %39 = sub i64 %38, ptrtoint (ptr @.str.2 to i64)
  %40 = getelementptr inbounds [6 x i8], ptr @.str.3, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !14
  %42 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %41, ptr %42, align 1, !tbaa !14
  br label %75, !llvm.loop !22

43:                                               ; preds = %29, %26
  %44 = ptrtoint ptr %17 to i64
  %45 = sub i64 %14, %44
  %46 = icmp slt i64 %45, 4
  br i1 %46, label %75, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 92, ptr %48, align 1, !tbaa !14
  %49 = lshr i8 %22, 6
  %50 = or disjoint i8 %49, 48
  %51 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %50, ptr %51, align 1, !tbaa !14
  %52 = lshr i8 %22, 3
  %53 = and i8 %52, 7
  %54 = or disjoint i8 %53, 48
  %55 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %54, ptr %55, align 1, !tbaa !14
  %56 = and i8 %22, 7
  %57 = or disjoint i8 %56, 48
  %58 = getelementptr inbounds i8, ptr %17, i64 4
  store i8 %57, ptr %58, align 1, !tbaa !14
  br label %75, !llvm.loop !22

59:                                               ; preds = %20
  %60 = and i8 %22, 126
  %61 = icmp eq i8 %60, 40
  %62 = icmp eq i8 %22, 92
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = ptrtoint ptr %17 to i64
  %66 = sub i64 %12, %65
  %67 = icmp slt i64 %66, 2
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 92, ptr %69, align 1, !tbaa !14
  br label %72

70:                                               ; preds = %59
  %71 = icmp eq ptr %17, %11
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %70
  %73 = phi ptr [ %69, %68 ], [ %17, %70 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 1
  store i8 %22, ptr %74, align 1, !tbaa !14
  br label %75

75:                                               ; preds = %70, %64, %36, %47, %32, %43, %72
  %76 = phi i32 [ %16, %72 ], [ %16, %36 ], [ %16, %47 ], [ 1, %32 ], [ 1, %43 ], [ 1, %64 ], [ 1, %70 ]
  %77 = phi ptr [ %74, %72 ], [ %42, %36 ], [ %58, %47 ], [ %17, %32 ], [ %17, %43 ], [ %17, %64 ], [ %17, %70 ]
  %78 = phi ptr [ %21, %72 ], [ %21, %36 ], [ %21, %47 ], [ %18, %32 ], [ %18, %43 ], [ %18, %64 ], [ %18, %70 ]
  %79 = phi i1 [ false, %72 ], [ false, %36 ], [ false, %47 ], [ true, %32 ], [ true, %43 ], [ true, %64 ], [ true, %70 ]
  br i1 %79, label %80, label %15

80:                                               ; preds = %75, %15
  %81 = phi i32 [ %76, %75 ], [ %16, %15 ]
  %82 = phi ptr [ %77, %75 ], [ %17, %15 ]
  %83 = phi ptr [ %78, %75 ], [ %18, %15 ]
  %84 = icmp ne i32 %3, 0
  %85 = icmp eq i32 %81, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = icmp eq ptr %82, %11
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 41, ptr %90, align 1, !tbaa !14
  br label %91

91:                                               ; preds = %87, %89, %80
  %92 = phi i32 [ 0, %89 ], [ %81, %80 ], [ 1, %87 ]
  %93 = phi ptr [ %90, %89 ], [ %82, %80 ], [ %82, %87 ]
  store ptr %83, ptr %1, align 8, !tbaa !5
  store ptr %93, ptr %8, align 8, !tbaa !10
  ret i32 %92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_PSSD_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_PSSD_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !23
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PSSD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.stream_PSSD_state_s, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.stream_PSSD_state_s, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.stream_PSSD_state_s, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %4, %89
  %16 = phi ptr [ %5, %4 ], [ %90, %89 ]
  %17 = phi ptr [ %9, %4 ], [ %91, %89 ]
  %18 = phi i32 [ 0, %4 ], [ %92, %89 ]
  %19 = icmp ult ptr %16, %7
  br i1 %19, label %20, label %128

20:                                               ; preds = %15, %124
  %21 = phi ptr [ %126, %124 ], [ %17, %15 ]
  %22 = phi ptr [ %125, %124 ], [ %16, %15 ]
  br label %23

23:                                               ; preds = %20, %52
  %24 = phi ptr [ %22, %20 ], [ %53, %52 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !14
  switch i8 %26, label %118 [
    i8 92, label %27
    i8 40, label %95
    i8 41, label %100
    i8 13, label %107
  ]

27:                                               ; preds = %23
  %28 = load i32, ptr %12, align 8, !tbaa !25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %27
  %31 = icmp eq ptr %25, %7
  br i1 %31, label %128, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %24, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !14
  switch i8 %34, label %36 [
    i8 110, label %37
    i8 114, label %38
    i8 116, label %39
    i8 98, label %40
    i8 102, label %35
    i8 13, label %45
    i8 10, label %52
    i8 48, label %55
    i8 49, label %55
    i8 50, label %55
    i8 51, label %55
    i8 52, label %55
    i8 53, label %55
    i8 54, label %55
    i8 55, label %55
  ]

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32
  br label %40

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %32, %39, %38, %37, %36, %35
  %41 = phi i8 [ 12, %35 ], [ %34, %36 ], [ 10, %37 ], [ 13, %38 ], [ 9, %39 ], [ 8, %32 ]
  %42 = icmp eq ptr %21, %11
  br i1 %42, label %128, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %41, ptr %44, align 1, !tbaa !14
  br label %124

45:                                               ; preds = %32
  %46 = icmp eq ptr %33, %7
  br i1 %46, label %128, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %24, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !14
  %50 = icmp eq i8 %49, 10
  %51 = select i1 %50, ptr %48, ptr %33
  br label %52

52:                                               ; preds = %47, %32
  %53 = phi ptr [ %33, %32 ], [ %51, %47 ]
  %54 = icmp ult ptr %53, %7
  br i1 %54, label %23, label %128, !llvm.loop !26

55:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32
  %56 = icmp eq ptr %33, %7
  br i1 %56, label %89, label %57

57:                                               ; preds = %55
  %58 = zext i8 %34 to i32
  %59 = getelementptr inbounds i8, ptr %24, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !14
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %58, -48
  %63 = and i8 %60, -8
  %64 = icmp eq i8 %63, 48
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = icmp eq ptr %59, %7
  br i1 %66, label %89, label %67

67:                                               ; preds = %65
  %68 = icmp eq ptr %21, %11
  br i1 %68, label %89, label %69

69:                                               ; preds = %67
  %70 = shl nsw i32 %62, 3
  %71 = add nsw i32 %70, -48
  %72 = add nsw i32 %71, %61
  %73 = getelementptr inbounds i8, ptr %24, i64 4
  %74 = load i8, ptr %73, align 1, !tbaa !14
  %75 = and i8 %74, -8
  %76 = icmp eq i8 %75, 48
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = zext nneg i8 %74 to i32
  %79 = shl nsw i32 %72, 3
  %80 = add nsw i32 %79, -48
  %81 = add i32 %80, %78
  br label %84

82:                                               ; preds = %57
  %83 = icmp eq ptr %21, %11
  br i1 %83, label %89, label %84

84:                                               ; preds = %69, %82, %77
  %85 = phi ptr [ %73, %77 ], [ %33, %82 ], [ %59, %69 ]
  %86 = phi i32 [ %81, %77 ], [ %62, %82 ], [ %72, %69 ]
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %87, ptr %88, align 1, !tbaa !14
  br label %89, !llvm.loop !26

89:                                               ; preds = %82, %67, %65, %55, %84
  %90 = phi ptr [ %85, %84 ], [ %24, %55 ], [ %24, %65 ], [ %24, %67 ], [ %24, %82 ]
  %91 = phi ptr [ %88, %84 ], [ %21, %55 ], [ %21, %65 ], [ %21, %67 ], [ %21, %82 ]
  %92 = phi i32 [ %18, %84 ], [ %18, %55 ], [ %18, %65 ], [ 1, %67 ], [ 1, %82 ]
  %93 = phi i32 [ 2, %84 ], [ 4, %55 ], [ 4, %65 ], [ 4, %67 ], [ 4, %82 ]
  switch i32 %93, label %138 [
    i32 2, label %15
    i32 4, label %128
  ]

94:                                               ; preds = %27
  switch i8 %26, label %118 [
    i8 40, label %95
    i8 41, label %100
    i8 13, label %107
    i8 10, label %117
  ]

95:                                               ; preds = %23, %94
  %96 = icmp eq ptr %21, %11
  br i1 %96, label %128, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %14, align 4, !tbaa !23
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %14, align 4, !tbaa !23
  br label %121

100:                                              ; preds = %23, %94
  %101 = load i32, ptr %13, align 4, !tbaa !23
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %100
  %104 = icmp eq ptr %21, %11
  br i1 %104, label %128, label %105

105:                                              ; preds = %103
  %106 = add nsw i32 %101, -1
  store i32 %106, ptr %13, align 4, !tbaa !23
  br label %121

107:                                              ; preds = %23, %94
  %108 = icmp eq ptr %25, %7
  br i1 %108, label %128, label %109

109:                                              ; preds = %107
  %110 = icmp eq ptr %21, %11
  br i1 %110, label %128, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds i8, ptr %24, i64 2
  %113 = load i8, ptr %112, align 1, !tbaa !14
  %114 = icmp eq i8 %113, 10
  %115 = select i1 %114, ptr %112, ptr %25
  %116 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 10, ptr %116, align 1, !tbaa !14
  br label %124

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %23, %94, %117
  %119 = phi i8 [ %26, %94 ], [ 10, %117 ], [ %26, %23 ]
  %120 = icmp eq ptr %21, %11
  br i1 %120, label %128, label %121

121:                                              ; preds = %97, %105, %118
  %122 = phi i8 [ %119, %118 ], [ 41, %105 ], [ 40, %97 ]
  %123 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %122, ptr %123, align 1, !tbaa !14
  br label %124

124:                                              ; preds = %121, %111, %43
  %125 = phi ptr [ %33, %43 ], [ %115, %111 ], [ %25, %121 ]
  %126 = phi ptr [ %44, %43 ], [ %116, %111 ], [ %123, %121 ]
  %127 = icmp ult ptr %125, %7
  br i1 %127, label %20, label %128, !llvm.loop !26

128:                                              ; preds = %89, %15, %118, %109, %107, %103, %100, %95, %40, %124, %52, %30, %45
  %129 = phi ptr [ %24, %45 ], [ %24, %30 ], [ %53, %52 ], [ %24, %118 ], [ %24, %109 ], [ %24, %107 ], [ %24, %103 ], [ %25, %100 ], [ %24, %95 ], [ %24, %40 ], [ %125, %124 ], [ %90, %89 ], [ %16, %15 ]
  %130 = phi ptr [ %21, %45 ], [ %21, %30 ], [ %21, %52 ], [ %21, %118 ], [ %21, %109 ], [ %21, %107 ], [ %21, %103 ], [ %21, %100 ], [ %21, %95 ], [ %21, %40 ], [ %126, %124 ], [ %91, %89 ], [ %17, %15 ]
  %131 = phi i32 [ %18, %45 ], [ %18, %30 ], [ %18, %52 ], [ 1, %118 ], [ 1, %109 ], [ %18, %107 ], [ 1, %103 ], [ -1, %100 ], [ 1, %95 ], [ 1, %40 ], [ %18, %124 ], [ %92, %89 ], [ %18, %15 ]
  store ptr %129, ptr %1, align 8, !tbaa !5
  store ptr %130, ptr %8, align 8, !tbaa !10
  %132 = icmp ne i32 %3, 0
  %133 = icmp eq i32 %131, 0
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = icmp eq ptr %129, %7
  %137 = select i1 %136, i32 0, i32 -2
  br label %138

138:                                              ; preds = %89, %135, %128
  %139 = phi i32 [ %131, %128 ], [ %137, %135 ], [ undef, %89 ]
  ret i32 %139
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @s_hex_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = ptrtoint ptr %6 to i64
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %130

13:                                               ; preds = %4
  %14 = load i32, ptr %2, align 4, !tbaa !27
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %0, align 8, !tbaa !5
  %17 = and i32 %14, 240
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %120, %13
  %20 = phi ptr [ %123, %120 ], [ %9, %13 ]
  %21 = phi ptr [ %103, %120 ], [ %16, %13 ]
  %22 = ptrtoint ptr %6 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = and i64 %24, 8589934590
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %19
  %28 = lshr i64 %24, 1
  %29 = and i64 %28, 4294967295
  %30 = ptrtoint ptr %11 to i64
  %31 = ptrtoint ptr %20 to i64
  %32 = sub i64 %30, %31
  %33 = icmp slt i64 %29, %32
  %34 = getelementptr inbounds i8, ptr %20, i64 %29
  %35 = select i1 %33, ptr %34, ptr %11
  br label %36

36:                                               ; preds = %52, %27
  %37 = phi ptr [ %20, %27 ], [ %55, %52 ]
  %38 = phi ptr [ %21, %27 ], [ %46, %52 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %44 = icmp ult i8 %43, 16
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, ptr %38, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !14
  %51 = icmp ult i8 %50, 16
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = shl nuw i8 %43, 4
  %54 = or disjoint i8 %50, %53
  %55 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !14
  %56 = icmp ult ptr %55, %35
  br i1 %56, label %36, label %57

57:                                               ; preds = %52
  %58 = icmp ult ptr %55, %11
  br i1 %58, label %59, label %125

59:                                               ; preds = %36, %45, %57, %19
  %60 = phi ptr [ %20, %19 ], [ %55, %57 ], [ %37, %45 ], [ %37, %36 ]
  %61 = phi ptr [ %21, %19 ], [ %46, %57 ], [ %38, %45 ], [ %38, %36 ]
  %62 = icmp ult ptr %61, %6
  br i1 %62, label %63, label %125

63:                                               ; preds = %59
  %64 = ptrtoint ptr %61 to i64
  %65 = icmp eq i32 %3, 0
  %66 = icmp eq ptr %60, %9
  %67 = sub i64 %22, %64
  %68 = getelementptr i8, ptr %61, i64 %67
  br label %69

69:                                               ; preds = %63, %80
  %70 = phi ptr [ %61, %63 ], [ %71, %80 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !14
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !14
  %76 = icmp ugt i8 %75, 15
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = icmp eq i8 %75, 102
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  switch i32 %3, label %125 [
    i32 1, label %80
    i32 2, label %82
    i32 0, label %80
  ]

80:                                               ; preds = %83, %79, %79, %86
  %81 = icmp eq ptr %71, %68
  br i1 %81, label %125, label %69

82:                                               ; preds = %79
  br i1 %66, label %83, label %125

83:                                               ; preds = %82
  %84 = load i32, ptr %2, align 4, !tbaa !27
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %80, label %125

86:                                               ; preds = %77
  br i1 %65, label %80, label %125

87:                                               ; preds = %69, %13
  %88 = phi i8 [ %15, %13 ], [ %75, %69 ]
  %89 = phi ptr [ %9, %13 ], [ %60, %69 ]
  %90 = phi ptr [ %16, %13 ], [ %71, %69 ]
  %91 = icmp ult ptr %90, %6
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = ptrtoint ptr %90 to i64
  %94 = icmp eq i32 %3, 0
  %95 = icmp eq ptr %89, %9
  %96 = sub i64 %7, %93
  %97 = getelementptr i8, ptr %90, i64 %96
  br label %101

98:                                               ; preds = %113, %87
  %99 = phi ptr [ %90, %87 ], [ %97, %113 ]
  %100 = zext i8 %88 to i32
  br label %125

101:                                              ; preds = %92, %113
  %102 = phi ptr [ %90, %92 ], [ %103, %113 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !14
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !14
  %108 = icmp ugt i8 %107, 15
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = icmp eq i8 %107, 102
  br i1 %110, label %111, label %117

111:                                              ; preds = %109
  switch i32 %3, label %118 [
    i32 1, label %113
    i32 2, label %112
    i32 0, label %113
  ]

112:                                              ; preds = %111
  br i1 %95, label %113, label %115

113:                                              ; preds = %112, %117, %111, %111
  %114 = icmp eq ptr %103, %97
  br i1 %114, label %98, label %101

115:                                              ; preds = %112
  %116 = zext i8 %88 to i32
  br label %125

117:                                              ; preds = %109
  br i1 %94, label %113, label %118

118:                                              ; preds = %111, %117
  %119 = zext i8 %88 to i32
  br label %125

120:                                              ; preds = %101
  %121 = shl i8 %88, 4
  %122 = or disjoint i8 %107, %121
  %123 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %122, ptr %123, align 1, !tbaa !14
  %124 = icmp ult ptr %123, %11
  br i1 %124, label %19, label %125

125:                                              ; preds = %79, %86, %82, %83, %80, %120, %57, %59, %118, %115, %98
  %126 = phi i32 [ %119, %118 ], [ %116, %115 ], [ %100, %98 ], [ -1, %59 ], [ -1, %57 ], [ -1, %120 ], [ -1, %80 ], [ -1, %83 ], [ -1, %82 ], [ -1, %86 ], [ -1, %79 ]
  %127 = phi ptr [ %89, %118 ], [ %89, %115 ], [ %89, %98 ], [ %60, %59 ], [ %55, %57 ], [ %123, %120 ], [ %60, %80 ], [ %60, %83 ], [ %60, %82 ], [ %60, %86 ], [ %60, %79 ]
  %128 = phi ptr [ %103, %118 ], [ %102, %115 ], [ %99, %98 ], [ %61, %59 ], [ %46, %57 ], [ %103, %120 ], [ %71, %79 ], [ %71, %86 ], [ %70, %82 ], [ %70, %83 ], [ %68, %80 ]
  %129 = phi i32 [ -2, %118 ], [ 1, %115 ], [ 0, %98 ], [ 0, %59 ], [ 1, %57 ], [ 1, %120 ], [ -2, %79 ], [ -2, %86 ], [ 1, %82 ], [ 1, %83 ], [ 0, %80 ]
  store i32 %126, ptr %2, align 4, !tbaa !27
  store ptr %128, ptr %0, align 8, !tbaa !5
  store ptr %127, ptr %8, align 8, !tbaa !10
  br label %130

130:                                              ; preds = %4, %125
  %131 = phi i32 [ %129, %125 ], [ 1, %4 ]
  ret i32 %131
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!11, !7, i64 8}
!11 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!12 = !{!6, !7, i64 8}
!13 = !{!11, !7, i64 16}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !19, i64 24}
!18 = !{!"stream_AXD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !19, i64 24}
!19 = !{!"int", !8, i64 0}
!20 = !{i32 -2, i32 2}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!24, !19, i64 28}
!24 = !{!"stream_PSSD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !19, i64 24, !19, i64 28}
!25 = !{!24, !19, i64 24}
!26 = distinct !{!26, !16}
!27 = !{!19, !19, i64 0}
