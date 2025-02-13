; ModuleID = 'x264_src/output/matroska_ebml.c'
source_filename = "x264_src/output/matroska_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mk_writer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.mk_context = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"matroska\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @mk_create_writer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #11
  %6 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !6
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %2) #12
  br label %22

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr @stdout, align 8, !tbaa !13
  br label %16

14:                                               ; preds = %9
  %15 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  store ptr %17, ptr %2, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call fastcc void @mk_destroy_contexts(ptr noundef nonnull %2) #11
  tail call void @free(ptr noundef nonnull %2) #12
  br label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mk_writer, ptr %2, i64 0, i32 8
  store i64 1000000, ptr %21, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %1, %20, %19, %8
  %23 = phi ptr [ %2, %20 ], [ null, %19 ], [ null, %8 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc ptr @mk_create_context(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !17
  store ptr %8, ptr %4, align 8, !tbaa !16
  br label %12

9:                                                ; preds = %3
  %10 = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %5, %7 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 3
  store ptr %0, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 4
  store i32 %2, ptr %16, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mk_context, ptr %18, i64 0, i32 1
  store ptr %13, ptr %21, align 8, !tbaa !23
  br label %22

22:                                               ; preds = %20, %12
  store ptr %18, ptr %13, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.mk_context, ptr %13, i64 0, i32 1
  store ptr %17, ptr %23, align 8, !tbaa !23
  store ptr %13, ptr %17, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %9, %22
  %25 = phi ptr [ %13, %22 ], [ null, %9 ]
  ret ptr %25
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mk_destroy_contexts(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %17

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.mk_context, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  tail call void @free(ptr noundef %13) #12
  tail call void @free(ptr noundef nonnull %10) #12
  %14 = icmp eq ptr %11, null
  br i1 %14, label %5, label %9, !llvm.loop !25

15:                                               ; preds = %17, %5
  %16 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void

17:                                               ; preds = %5, %17
  %18 = phi ptr [ %19, %17 ], [ %7, %5 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.mk_context, ptr %18, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  tail call void @free(ptr noundef %21) #12
  tail call void @free(ptr noundef nonnull %18) #12
  %22 = icmp eq ptr %19, null
  br i1 %22, label %15, label %17, !llvm.loop !27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mk_writeHeader(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 12
  %13 = load i8, ptr %12, align 8, !tbaa !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  store i64 %6, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 7
  store i64 %5, ptr %17, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef %19, i32 noundef 440786851) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %145, label %22

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17030, i64 noundef 1) #11, !range !30
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %145, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17143, i64 noundef 1) #11, !range !30
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %145, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17138, i64 noundef 4) #11, !range !30
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %145, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17139, i64 noundef 8) #11, !range !30
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %145, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %20, i32 noundef 17026, ptr noundef nonnull @.str.2) #11, !range !30
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %145, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17031, i64 noundef 2) #11, !range !30
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %145, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %20, i32 noundef 17029, i64 noundef 2) #11, !range !30
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %145, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %20, ptr noundef null) #11, !range !30
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %145, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %18, align 8, !tbaa !6
  %48 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef %47, i32 noundef 408125543) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %145, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @mk_flush_context_id(ptr noundef nonnull %48) #11, !range !30
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %145, label %53

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %48, ptr noundef null) #11, !range !30
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %145, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %18, align 8, !tbaa !6
  %58 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef %57, i32 noundef 357149030) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %145, label %60

60:                                               ; preds = %56
  %61 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %58, i32 noundef 19840, ptr noundef nonnull @.str.3) #11, !range !30
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %145, label %63

63:                                               ; preds = %60
  %64 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %58, i32 noundef 22337, ptr noundef %1) #11, !range !30
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %145, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %16, align 8, !tbaa !15
  %68 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %58, i32 noundef 2807729, i64 noundef %67) #11, !range !30
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %145, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @mk_write_float(ptr noundef nonnull %58) #11
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %145, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.mk_context, ptr %58, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !31
  %76 = add i32 %75, -4
  %77 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 1
  store i32 %76, ptr %77, align 8, !tbaa !32
  %78 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %58, ptr noundef nonnull %77) #11, !range !30
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %145, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %18, align 8, !tbaa !6
  %82 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef %81, i32 noundef 374648427) #11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %145, label %84

84:                                               ; preds = %80
  %85 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef nonnull %82, i32 noundef 174) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %145, label %87

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %85, i32 noundef 215, i64 noundef 1) #11, !range !30
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %145, label %90

90:                                               ; preds = %87
  %91 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %85, i32 noundef 29637, i64 noundef 1) #11, !range !30
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %145, label %93

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %85, i32 noundef 131, i64 noundef 1) #11, !range !30
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %93
  %97 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %85, i32 noundef 156, i64 noundef 0) #11, !range !30
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %145, label %99

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @mk_write_string(ptr noundef nonnull %85, i32 noundef 134, ptr noundef %2) #11, !range !30
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %145, label %102

102:                                              ; preds = %99
  %103 = icmp eq i32 %4, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = tail call fastcc i32 @mk_write_bin(ptr noundef nonnull %85, ptr noundef %3, i32 noundef %4) #11
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %145, label %107

107:                                              ; preds = %104, %102
  %108 = icmp eq i64 %5, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  %110 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %85, i32 noundef 2352003, i64 noundef %5) #11, !range !30
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %145, label %112

112:                                              ; preds = %109, %107
  %113 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef nonnull %85, i32 noundef 224) #11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %145, label %115

115:                                              ; preds = %112
  %116 = zext i32 %7 to i64
  %117 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %113, i32 noundef 176, i64 noundef %116) #11, !range !30
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %115
  %120 = zext i32 %8 to i64
  %121 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %113, i32 noundef 186, i64 noundef %120) #11, !range !30
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %145, label %123

123:                                              ; preds = %119
  %124 = zext i32 %9 to i64
  %125 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %113, i32 noundef 21680, i64 noundef %124) #11, !range !30
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %123
  %128 = zext i32 %10 to i64
  %129 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %113, i32 noundef 21690, i64 noundef %128) #11, !range !30
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %127
  %132 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %113, ptr noundef null) #11, !range !30
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131
  %135 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %85, ptr noundef null) #11, !range !30
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %82, ptr noundef null) #11, !range !30
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %18, align 8, !tbaa !6
  %142 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %141) #11, !range !30
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store i8 1, ptr %12, align 8, !tbaa !28
  br label %145

145:                                              ; preds = %140, %137, %134, %131, %127, %123, %119, %115, %112, %109, %104, %99, %96, %93, %90, %87, %84, %80, %73, %70, %66, %63, %60, %56, %53, %50, %46, %43, %40, %37, %34, %31, %28, %25, %22, %15, %11, %144
  %146 = phi i32 [ 0, %144 ], [ -1, %11 ], [ -1, %15 ], [ -1, %22 ], [ -1, %25 ], [ -1, %28 ], [ -1, %31 ], [ -1, %34 ], [ -1, %37 ], [ -1, %40 ], [ -1, %43 ], [ -1, %46 ], [ -1, %50 ], [ -1, %53 ], [ -1, %56 ], [ -1, %60 ], [ -1, %63 ], [ -1, %66 ], [ -1, %70 ], [ -1, %73 ], [ -1, %80 ], [ -1, %84 ], [ -1, %87 ], [ -1, %90 ], [ -1, %93 ], [ -1, %96 ], [ -1, %99 ], [ -1, %104 ], [ -1, %109 ], [ -1, %112 ], [ -1, %115 ], [ -1, %119 ], [ -1, %123 ], [ -1, %127 ], [ -1, %131 ], [ -1, %134 ], [ -1, %137 ], [ -1, %140 ]
  ret i32 %146
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_uint(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = lshr i64 %2, 56
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %4, align 1, !tbaa !33
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = lshr i64 %2, 48
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %7, align 1, !tbaa !33
  %10 = getelementptr inbounds i8, ptr %4, i64 2
  %11 = lshr i64 %2, 40
  %12 = trunc i64 %11 to i8
  store i8 %12, ptr %10, align 1, !tbaa !33
  %13 = getelementptr inbounds i8, ptr %4, i64 3
  %14 = lshr i64 %2, 32
  %15 = trunc i64 %14 to i8
  store i8 %15, ptr %13, align 1, !tbaa !33
  %16 = getelementptr inbounds i8, ptr %4, i64 4
  %17 = lshr i64 %2, 24
  %18 = trunc i64 %17 to i8
  store i8 %18, ptr %16, align 1, !tbaa !33
  %19 = getelementptr inbounds i8, ptr %4, i64 5
  %20 = lshr i64 %2, 16
  %21 = trunc i64 %20 to i8
  store i8 %21, ptr %19, align 1, !tbaa !33
  %22 = getelementptr inbounds i8, ptr %4, i64 6
  %23 = lshr i64 %2, 8
  %24 = trunc i64 %23 to i8
  store i8 %24, ptr %22, align 1, !tbaa !33
  %25 = getelementptr inbounds i8, ptr %4, i64 7
  %26 = trunc i64 %2 to i8
  store i8 %26, ptr %25, align 1, !tbaa !33
  %27 = tail call fastcc i32 @mk_write_id(ptr noundef %0, i32 noundef %1) #11, !range !30
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %3, %34
  %30 = phi i64 [ %35, %34 ], [ 0, %3 ]
  %31 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !33
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, 7
  br i1 %36, label %39, label %29, !llvm.loop !34

37:                                               ; preds = %29
  %38 = trunc i64 %30 to i32
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i32 [ %38, %37 ], [ 7, %34 ]
  %41 = sub nsw i32 8, %40
  %42 = tail call fastcc i32 @mk_write_size(ptr noundef %0, i32 noundef %41) #11, !range !30
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = zext nneg i32 %40 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %46, i32 noundef %41) #11, !range !30
  br label %48

48:                                               ; preds = %44, %39, %3
  %49 = phi i32 [ -1, %3 ], [ -1, %39 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_string(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %5 = tail call fastcc i32 @mk_write_id(ptr noundef %0, i32 noundef %1) #11, !range !30
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = trunc i64 %4 to i32
  %9 = tail call fastcc i32 @mk_write_size(ptr noundef %0, i32 noundef %8) #11, !range !30
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef %2, i32 noundef %8) #11, !range !30
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = phi i32 [ -1, %3 ], [ -1, %7 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_close_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call fastcc i32 @mk_write_id(ptr noundef %8, i32 noundef %4) #11, !range !30
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !31
  %15 = tail call fastcc i32 @mk_write_size(ptr noundef %12, i32 noundef %14) #11, !range !30
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %1, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mk_context, ptr %19, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !31
  %26 = load i32, ptr %1, align 4, !tbaa !35
  %27 = add i32 %26, %25
  store i32 %27, ptr %1, align 4, !tbaa !35
  br label %28

28:                                               ; preds = %17, %23
  %29 = tail call fastcc i32 @mk_flush_context_data(ptr noundef nonnull %0) #11, !range !30
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 8, !tbaa !17
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  br i1 %33, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mk_context, ptr %32, i64 0, i32 1
  store ptr %35, ptr %37, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %31, %36
  store ptr %32, ptr %35, align 8, !tbaa !13
  %39 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = getelementptr inbounds %struct.mk_writer, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  store ptr %42, ptr %0, align 8, !tbaa !17
  store ptr %0, ptr %41, align 8, !tbaa !16
  br label %43

43:                                               ; preds = %28, %11, %6, %38
  %44 = phi i32 [ 0, %38 ], [ -1, %6 ], [ -1, %11 ], [ -1, %28 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_flush_context_id(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  store i8 -1, ptr %2, align 1, !tbaa !33
  %3 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call fastcc i32 @mk_write_id(ptr noundef %8, i32 noundef %4) #11, !range !30
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !19
  %13 = call fastcc i32 @mk_append_context_data(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 1) #11, !range !30
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, ptr %3, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %11, %6, %1, %15
  %17 = phi i32 [ 0, %15 ], [ 0, %1 ], [ -1, %6 ], [ -1, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_float(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @mk_write_id(ptr noundef %0, i32 noundef 17545) #11, !range !30
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @mk_write_size(ptr noundef %0, i32 noundef 4) #11, !range !30
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @mk_write_float_raw(ptr noundef %0, float noundef 0.000000e+00) #11, !range !30
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi i32 [ -1, %1 ], [ -1, %4 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_bin(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @mk_write_id(ptr noundef %0, i32 noundef 25506) #11, !range !30
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @mk_write_size(ptr noundef %0, i32 noundef %2) #11, !range !30
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !range !30
  br label %11

11:                                               ; preds = %9, %6, %3
  %12 = phi i32 [ -1, %3 ], [ -1, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_flush_context_data(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  br i1 %8, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @mk_append_context_data(ptr noundef nonnull %7, ptr noundef %10, i32 noundef %3) #11, !range !30
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %21

14:                                               ; preds = %5
  %15 = zext i32 %3 to i64
  %16 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = tail call i64 @fwrite(ptr noundef %10, i64 noundef %15, i64 noundef 1, ptr noundef %18) #11
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %11
  store i32 0, ptr %2, align 8, !tbaa !31
  br label %22

22:                                               ; preds = %14, %11, %1, %21
  %23 = phi i32 [ 0, %21 ], [ 0, %1 ], [ -1, %11 ], [ -1, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_id(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !33
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %6, align 1, !tbaa !33
  %9 = getelementptr inbounds i8, ptr %3, i64 2
  %10 = lshr i32 %1, 8
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %9, align 1, !tbaa !33
  %12 = getelementptr inbounds i8, ptr %3, i64 3
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %12, align 1, !tbaa !33
  %14 = icmp eq i8 %5, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4) #11, !range !30
  br label %27

17:                                               ; preds = %2
  %18 = icmp eq i8 %8, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #11, !range !30
  br label %27

21:                                               ; preds = %17
  %22 = icmp eq i8 %11, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 2) #11, !range !30
  br label %27

25:                                               ; preds = %21
  %26 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 1) #11, !range !30
  br label %27

27:                                               ; preds = %25, %23, %19, %15
  %28 = phi i32 [ %16, %15 ], [ %20, %19 ], [ %24, %23 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_size(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #14
  store i8 8, ptr %3, align 1, !tbaa !33
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = lshr i32 %1, 24
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %4, align 1, !tbaa !33
  %7 = getelementptr inbounds i8, ptr %3, i64 2
  %8 = lshr i32 %1, 16
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %7, align 1, !tbaa !33
  %10 = getelementptr inbounds i8, ptr %3, i64 3
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1, !tbaa !33
  %13 = getelementptr inbounds i8, ptr %3, i64 4
  %14 = trunc i32 %1 to i8
  store i8 %14, ptr %13, align 1, !tbaa !33
  %15 = icmp ult i32 %1, 127
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = or disjoint i8 %14, -128
  store i8 %17, ptr %13, align 1, !tbaa !33
  %18 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 1) #11, !range !30
  br label %36

19:                                               ; preds = %2
  %20 = icmp ult i32 %1, 16383
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = or disjoint i8 %12, 64
  store i8 %22, ptr %10, align 1, !tbaa !33
  %23 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #11, !range !30
  br label %36

24:                                               ; preds = %19
  %25 = icmp ult i32 %1, 2097151
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or disjoint i8 %9, 32
  store i8 %27, ptr %7, align 1, !tbaa !33
  %28 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 3) #11, !range !30
  br label %36

29:                                               ; preds = %24
  %30 = icmp ult i32 %1, 268435455
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i8 %6, 16
  store i8 %32, ptr %4, align 1, !tbaa !33
  %33 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4) #11, !range !30
  br label %36

34:                                               ; preds = %29
  %35 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 5) #11, !range !30
  br label %36

36:                                               ; preds = %34, %31, %26, %21, %16
  %37 = phi i32 [ %18, %16 ], [ %23, %21 ], [ %28, %26 ], [ %33, %31 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #14
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_append_context_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !36
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  br label %29

13:                                               ; preds = %3
  %14 = icmp eq i32 %8, 0
  %15 = shl i32 %8, 1
  %16 = select i1 %14, i32 16, i32 %15
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i32 [ %16, %13 ], [ %20, %17 ]
  %19 = icmp ugt i32 %6, %18
  %20 = shl i32 %18, 1
  br i1 %19, label %17, label %21, !llvm.loop !37

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mk_context, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = zext i32 %18 to i64
  %25 = tail call ptr @realloc(ptr noundef %23, i64 noundef %24) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  store ptr %25, ptr %22, align 8, !tbaa !24
  store i32 %18, ptr %7, align 4, !tbaa !36
  %28 = load i32, ptr %4, align 8, !tbaa !31
  br label %29

29:                                               ; preds = %10, %27
  %30 = phi i32 [ %5, %10 ], [ %28, %27 ]
  %31 = phi ptr [ %12, %10 ], [ %25, %27 ]
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %1, i64 %34, i1 false)
  store i32 %6, ptr %4, align 8, !tbaa !31
  br label %35

35:                                               ; preds = %21, %29
  %36 = phi i32 [ 0, %29 ], [ -1, %21 ]
  ret i32 %36
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_write_float_raw(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = bitcast float %1 to i32
  %5 = lshr i32 %4, 24
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !33
  %7 = lshr i32 %4, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !33
  %10 = lshr i32 %4, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !33
  %13 = trunc i32 %4 to i8
  %14 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !33
  %15 = call fastcc i32 @mk_append_context_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4) #11, !range !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mk_start_frame(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @mk_flush_frame(ptr noundef %0) #11, !range !30
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  store i8 1, ptr %5, align 1, !tbaa !38
  %6 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  store i8 0, ptr %6, align 2, !tbaa !39
  %7 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  store i8 0, ptr %7, align 1, !tbaa !40
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_flush_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %96, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 10
  %8 = load i64, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = sdiv i64 %8, %10
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 9
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = sub nsw i64 %11, %13
  %15 = add i64 %14, -32768
  %16 = icmp ult i64 %15, -65536
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %0) #11, !range !30
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %17, %6
  %21 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i64, ptr %7, align 8, !tbaa !41
  %26 = load i64, ptr %9, align 8, !tbaa !15
  %27 = sdiv i64 %25, %26
  store i64 %27, ptr %12, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef %29, i32 noundef 524531317) #11
  store ptr %30, ptr %21, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %96, label %32

32:                                               ; preds = %24
  %33 = load i64, ptr %12, align 8, !tbaa !42
  %34 = tail call fastcc i32 @mk_write_uint(ptr noundef nonnull %30, i32 noundef 231, i64 noundef %33) #11, !range !30
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %32, %20
  %37 = phi i64 [ %14, %20 ], [ 0, %32 ]
  %38 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mk_context, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !31
  %44 = add i32 %43, 4
  br label %45

45:                                               ; preds = %36, %41
  %46 = phi i32 [ %44, %41 ], [ 4, %36 ]
  %47 = load ptr, ptr %21, align 8, !tbaa !43
  %48 = tail call fastcc i32 @mk_write_id(ptr noundef %47, i32 noundef 163) #11, !range !30
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %96, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %21, align 8, !tbaa !43
  %52 = tail call fastcc i32 @mk_write_size(ptr noundef %51, i32 noundef %46) #11, !range !30
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %21, align 8, !tbaa !43
  %56 = tail call fastcc i32 @mk_write_size(ptr noundef %55, i32 noundef 1) #11, !range !30
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = lshr i64 %37, 8
  %60 = trunc i64 %59 to i8
  store i8 %60, ptr %2, align 1, !tbaa !33
  %61 = trunc i64 %37 to i8
  %62 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1
  store i8 %61, ptr %62, align 1, !tbaa !33
  %63 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  %64 = load i8, ptr %63, align 2, !tbaa !39
  %65 = shl i8 %64, 7
  %66 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  %67 = load i8, ptr %66, align 1, !tbaa !40
  %68 = or i8 %65, %67
  %69 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 2
  store i8 %68, ptr %69, align 1, !tbaa !33
  %70 = load ptr, ptr %21, align 8, !tbaa !43
  %71 = call fastcc i32 @mk_append_context_data(ptr noundef %70, ptr noundef nonnull %2, i32 noundef 3) #11, !range !30
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %58
  %74 = load ptr, ptr %38, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %21, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.mk_context, ptr %74, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !24
  %80 = getelementptr inbounds %struct.mk_context, ptr %74, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !31
  %82 = tail call fastcc i32 @mk_append_context_data(ptr noundef %77, ptr noundef %79, i32 noundef %81) #11, !range !30
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr %38, align 8, !tbaa !44
  %86 = getelementptr inbounds %struct.mk_context, ptr %85, i64 0, i32 6
  store i32 0, ptr %86, align 8, !tbaa !31
  br label %87

87:                                               ; preds = %84, %73
  store i8 0, ptr %3, align 1, !tbaa !38
  %88 = load ptr, ptr %21, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.mk_context, ptr %88, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !31
  %91 = icmp ugt i32 %90, 1048576
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = tail call fastcc i32 @mk_close_cluster(ptr noundef nonnull %0) #11, !range !30
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %92, %76, %58, %54, %50, %45, %32, %24, %17, %1, %95
  %97 = phi i32 [ 0, %95 ], [ 0, %1 ], [ -1, %17 ], [ -1, %24 ], [ -1, %32 ], [ -1, %45 ], [ -1, %50 ], [ -1, %54 ], [ -1, %58 ], [ -1, %76 ], [ -1, %92 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #14
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mk_close_cluster(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @mk_close_context(ptr noundef nonnull %3, ptr noundef null) #11, !range !30
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %10) #11, !range !30
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i32 [ 0, %1 ], [ -1, %5 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @mk_set_frame_flags(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 10
  store i64 %1, ptr %9, align 8, !tbaa !41
  %10 = icmp ne i32 %2, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 14
  store i8 %11, ptr %12, align 2, !tbaa !39
  %13 = icmp ne i32 %3, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 15
  store i8 %14, ptr %15, align 1, !tbaa !40
  %16 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = icmp slt i64 %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store i64 %1, ptr %16, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %8, %19, %4
  %21 = phi i32 [ -1, %4 ], [ 0, %19 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mk_add_frame_data(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @mk_create_context(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #11
  store ptr %12, ptr %8, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %16 = tail call fastcc i32 @mk_append_context_data(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #11, !range !30
  br label %17

17:                                               ; preds = %11, %3, %14
  %18 = phi i32 [ %16, %14 ], [ -1, %3 ], [ -1, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mk_close(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @mk_flush_frame(ptr noundef %0) #11, !range !30
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @mk_close_cluster(ptr noundef %0) #11, !range !30
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ -1, %8 ], [ 0, %5 ]
  %11 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 12
  %12 = load i8, ptr %11, align 8, !tbaa !28
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = zext i32 %17 to i64
  %19 = tail call i32 @fseek(ptr noundef %15, i64 noundef %18, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %22, i64 %1, i64 %21
  %24 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 11
  %25 = load i64, ptr %24, align 8, !tbaa !45
  %26 = add nsw i64 %23, %25
  %27 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = sitofp i64 %26 to double
  %30 = getelementptr inbounds %struct.mk_writer, ptr %0, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %29, %32
  %34 = fptrunc double %33 to float
  %35 = tail call fastcc i32 @mk_write_float_raw(ptr noundef %28, float noundef %34) #11, !range !30
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %14
  %38 = load ptr, ptr %27, align 8, !tbaa !6
  %39 = tail call fastcc i32 @mk_flush_context_data(ptr noundef %38) #11, !range !30
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %14
  br label %42

42:                                               ; preds = %37, %41, %9
  %43 = phi i32 [ %10, %9 ], [ -1, %41 ], [ %10, %37 ]
  tail call fastcc void @mk_destroy_contexts(ptr noundef nonnull %0) #11
  %44 = load ptr, ptr %0, align 8, !tbaa !14
  %45 = tail call i32 @fclose(ptr noundef %44) #11
  tail call void @free(ptr noundef nonnull %0) #12
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 16}
!7 = !{!"mk_writer", !8, i64 0, !11, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !9, i64 96, !9, i64 97, !9, i64 98, !9, i64 99}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!7, !12, i64 64}
!16 = !{!7, !8, i64 40}
!17 = !{!18, !8, i64 0}
!18 = !{!"mk_context", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52}
!19 = !{!18, !8, i64 16}
!20 = !{!18, !8, i64 24}
!21 = !{!18, !11, i64 32}
!22 = !{!7, !8, i64 48}
!23 = !{!18, !8, i64 8}
!24 = !{!18, !8, i64 40}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!7, !9, i64 96}
!29 = !{!7, !12, i64 56}
!30 = !{i32 -1, i32 1}
!31 = !{!18, !11, i64 48}
!32 = !{!7, !11, i64 8}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !26}
!35 = !{!11, !11, i64 0}
!36 = !{!18, !11, i64 52}
!37 = distinct !{!37, !26}
!38 = !{!7, !9, i64 97}
!39 = !{!7, !9, i64 98}
!40 = !{!7, !9, i64 99}
!41 = !{!7, !12, i64 80}
!42 = !{!7, !12, i64 72}
!43 = !{!7, !8, i64 24}
!44 = !{!7, !8, i64 32}
!45 = !{!7, !12, i64 88}
