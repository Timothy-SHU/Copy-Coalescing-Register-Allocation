; ModuleID = 'zstack.c'
source_filename = "zstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }

@o_stack = external global %struct.ref_stack_s, align 8
@zstack_op_defs.op_defs_ = internal constant [11 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zclear_stack }, %struct.op_def { ptr @.str.1, ptr @zcleartomark }, %struct.op_def { ptr @.str.2, ptr @zcount }, %struct.op_def { ptr @.str.3, ptr @zcounttomark }, %struct.op_def { ptr @.str.4, ptr @zdup }, %struct.op_def { ptr @.str.5, ptr @zexch }, %struct.op_def { ptr @.str.6, ptr @zindex }, %struct.op_def { ptr @.str.7, ptr @zmark }, %struct.op_def { ptr @.str.8, ptr @zpop }, %struct.op_def { ptr @.str.9, ptr @zroll }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0mark\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @zpop(ptr noundef readnone %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -1
  store ptr %6, ptr @o_stack, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ 0, %4 ], [ -17, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @zexch(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %4 = icmp ugt ptr %3, %0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = load i32, ptr %6, align 8
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %7, align 8
  %12 = load i32, ptr %0, align 8
  store i32 %12, ptr %6, align 8
  store i64 %8, ptr %10, align 8
  store i32 %9, ptr %0, align 8
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i32 [ 0, %5 ], [ -17, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @zdup(ptr noundef %0) #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %14

9:                                                ; preds = %4
  store ptr %5, ptr @o_stack, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %10, align 8
  %13 = load i32, ptr %0, align 8
  store i32 %13, ptr %5, align 8
  br label %14

14:                                               ; preds = %1, %9, %8
  %15 = phi i32 [ -16, %8 ], [ 0, %9 ], [ -17, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zindex(ptr noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !17
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %31

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %11 = ptrtoint ptr %0 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 4
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = icmp slt i64 %9, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %9, 1
  %20 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !18
  br label %31

23:                                               ; preds = %7
  %24 = xor i64 %9, -1
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %26
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %26, i32 1
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %8, align 8
  %30 = load i32, ptr %27, align 8
  store i32 %30, ptr %0, align 8
  br label %31

31:                                               ; preds = %22, %16, %18, %23, %5
  %32 = phi i32 [ 0, %23 ], [ %6, %5 ], [ 0, %22 ], [ -15, %16 ], [ -15, %18 ]
  ret i32 %32
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #6

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @zroll(ptr noundef %0) #5 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = getelementptr inbounds i8, ptr %0, i64 -15
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 11
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #9
  br label %209

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !17
  %12 = icmp eq i8 %11, 11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %209

15:                                               ; preds = %9
  %16 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !17
  %18 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %19 = ptrtoint ptr %3 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 4
  %23 = icmp ugt i64 %17, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %15
  %25 = icmp slt i64 %17, 0
  br i1 %25, label %209, label %26

26:                                               ; preds = %24
  %27 = add nuw nsw i64 %17, 2
  %28 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #9
  %29 = zext i32 %28 to i64
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %209, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %16, align 8, !tbaa !17
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -2
  store ptr %37, ptr @o_stack, align 8, !tbaa !14
  br label %209

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !17
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %41, %33
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = urem i32 %41, %33
  br label %52

45:                                               ; preds = %38
  %46 = icmp slt i32 %41, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = srem i32 %41, %33
  %49 = icmp slt i32 %48, 0
  %50 = add nsw i32 %48, %33
  %51 = select i1 %49, i32 %50, i32 0
  br label %52

52:                                               ; preds = %47, %45, %43
  %53 = phi i32 [ %44, %43 ], [ %41, %45 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %77
  %55 = phi i64 [ 0, %52 ], [ %80, %77 ]
  %56 = phi i32 [ %33, %52 ], [ %79, %77 ]
  %57 = add nuw nsw i64 %55, 2
  %58 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %57) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false), !tbaa.struct !18
  %59 = add nsw i32 %56, -1
  %60 = trunc i64 %55 to i32
  %61 = add i32 %53, %60
  %62 = srem i32 %61, %33
  %63 = zext i32 %62 to i64
  %64 = icmp eq i64 %55, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %54, %65
  %66 = phi i32 [ %74, %65 ], [ %62, %54 ]
  %67 = phi i32 [ %72, %65 ], [ %59, %54 ]
  %68 = phi ptr [ %71, %65 ], [ %58, %54 ]
  %69 = add nsw i32 %66, 2
  %70 = sext i32 %69 to i64
  %71 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %70) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false), !tbaa.struct !18
  %72 = add nsw i32 %67, -1
  %73 = add nsw i32 %66, %53
  %74 = srem i32 %73, %33
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %55, %75
  br i1 %76, label %77, label %65, !llvm.loop !25

77:                                               ; preds = %65, %54
  %78 = phi ptr [ %58, %54 ], [ %71, %65 ]
  %79 = phi i32 [ %59, %54 ], [ %72, %65 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  %80 = add nuw i64 %55, 1
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %82, label %54, !llvm.loop !27

82:                                               ; preds = %77
  %83 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.ref_s, ptr %83, i64 -2
  store ptr %84, ptr @o_stack, align 8, !tbaa !14
  br label %209

85:                                               ; preds = %15
  %86 = trunc i64 %17 to i32
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.ref_s, ptr %89, i64 -2
  store ptr %90, ptr @o_stack, align 8, !tbaa !14
  br label %209

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !17
  %94 = trunc i64 %93 to i32
  switch i32 %94, label %139 [
    i32 1, label %95
    i32 -1, label %117
  ]

95:                                               ; preds = %91
  %96 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %97 = getelementptr inbounds %struct.ref_s, ptr %96, i64 -2
  store ptr %97, ptr @o_stack, align 8, !tbaa !14
  %98 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %99 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %100 = load i64, ptr %99, align 8
  %101 = load i32, ptr %98, align 8
  %102 = add nsw i32 %86, -1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %95, %104
  %105 = phi i32 [ %112, %104 ], [ %102, %95 ]
  %106 = phi ptr [ %108, %104 ], [ %98, %95 ]
  %107 = getelementptr inbounds %struct.ref_s, ptr %106, i64 0, i32 1
  %108 = getelementptr inbounds %struct.ref_s, ptr %106, i64 -1
  %109 = getelementptr %struct.ref_s, ptr %106, i64 -1, i32 1
  %110 = load i64, ptr %109, align 8
  store i64 %110, ptr %107, align 8
  %111 = load i32, ptr %108, align 8
  store i32 %111, ptr %106, align 8
  %112 = add nsw i32 %105, -1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %104, !llvm.loop !28

114:                                              ; preds = %104, %95
  %115 = phi ptr [ %98, %95 ], [ %108, %104 ]
  %116 = getelementptr inbounds %struct.ref_s, ptr %115, i64 0, i32 1
  store i64 %100, ptr %116, align 8
  store i32 %101, ptr %115, align 8
  br label %209

117:                                              ; preds = %91
  %118 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %119 = getelementptr inbounds %struct.ref_s, ptr %118, i64 -2
  store ptr %119, ptr @o_stack, align 8, !tbaa !14
  %120 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %121 = and i64 %17, 4294967295
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds %struct.ref_s, ptr %120, i64 %122
  %124 = getelementptr inbounds %struct.ref_s, ptr %123, i64 1
  %125 = getelementptr inbounds %struct.ref_s, ptr %123, i64 1, i32 1
  %126 = load i64, ptr %125, align 8
  %127 = load i32, ptr %124, align 8
  %128 = add nsw i32 %86, -1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %117, %130
  %131 = phi i32 [ %134, %130 ], [ %128, %117 ]
  %132 = phi ptr [ %133, %130 ], [ %124, %117 ]
  %133 = getelementptr inbounds %struct.ref_s, ptr %132, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %132, ptr noundef nonnull align 8 dereferenceable(16) %133, i64 16, i1 false), !tbaa.struct !18
  %134 = add nsw i32 %131, -1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %130, !llvm.loop !29

136:                                              ; preds = %130, %117
  %137 = phi ptr [ %124, %117 ], [ %133, %130 ]
  %138 = getelementptr inbounds %struct.ref_s, ptr %137, i64 0, i32 1
  store i64 %126, ptr %138, align 8
  store i32 %127, ptr %137, align 8
  br label %209

139:                                              ; preds = %91
  %140 = icmp slt i32 %94, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %139
  %142 = add nsw i32 %94, %86
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = srem i32 %142, %86
  %146 = icmp slt i32 %145, 0
  %147 = add nsw i32 %145, %86
  %148 = select i1 %146, i32 %147, i32 0
  br label %153

149:                                              ; preds = %139
  %150 = icmp slt i32 %94, %86
  br i1 %150, label %153, label %151

151:                                              ; preds = %149
  %152 = urem i32 %94, %86
  br label %153

153:                                              ; preds = %144, %149, %151, %141
  %154 = phi i32 [ %142, %141 ], [ %152, %151 ], [ %94, %149 ], [ %148, %144 ]
  %155 = lshr i32 %86, 1
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %181, label %157

157:                                              ; preds = %153
  %158 = sext i32 %154 to i64
  %159 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %160 = ptrtoint ptr %159 to i64
  %161 = ptrtoint ptr %0 to i64
  %162 = sub i64 %160, %161
  %163 = ashr exact i64 %162, 4
  %164 = icmp sgt i64 %163, %158
  br i1 %164, label %166, label %165

165:                                              ; preds = %157
  store i32 %154, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %209

166:                                              ; preds = %157
  %167 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %168 = getelementptr inbounds %struct.ref_s, ptr %167, i64 -2
  store ptr %168, ptr @o_stack, align 8, !tbaa !14
  %169 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %170 = getelementptr inbounds %struct.ref_s, ptr %169, i64 %158
  br label %171

171:                                              ; preds = %166, %171
  %172 = phi i32 [ %86, %166 ], [ %175, %171 ]
  %173 = phi ptr [ %170, %166 ], [ %176, %171 ]
  %174 = phi ptr [ %169, %166 ], [ %177, %171 ]
  %175 = add nsw i32 %172, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %173, ptr noundef nonnull align 8 dereferenceable(16) %174, i64 16, i1 false), !tbaa.struct !18
  %176 = getelementptr inbounds %struct.ref_s, ptr %173, i64 -1
  %177 = getelementptr inbounds %struct.ref_s, ptr %174, i64 -1
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %179, label %171, !llvm.loop !30

179:                                              ; preds = %171
  %180 = shl nsw i64 %158, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %174, ptr nonnull align 1 %3, i64 %180, i1 false)
  br label %209

181:                                              ; preds = %153
  %182 = sub nsw i32 %86, %154
  %183 = sext i32 %182 to i64
  %184 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %185 = ptrtoint ptr %184 to i64
  %186 = ptrtoint ptr %0 to i64
  %187 = sub i64 %185, %186
  %188 = ashr exact i64 %187, 4
  %189 = icmp sgt i64 %188, %183
  br i1 %189, label %191, label %190

190:                                              ; preds = %181
  store i32 %182, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %209

191:                                              ; preds = %181
  %192 = load ptr, ptr @o_stack, align 8, !tbaa !14
  %193 = getelementptr inbounds %struct.ref_s, ptr %192, i64 -2
  store ptr %193, ptr @o_stack, align 8, !tbaa !14
  %194 = getelementptr %struct.ref_s, ptr %0, i64 -2
  %195 = and i64 %17, 4294967295
  %196 = sub nsw i64 0, %195
  %197 = getelementptr %struct.ref_s, ptr %194, i64 %196
  %198 = getelementptr %struct.ref_s, ptr %197, i64 1
  %199 = shl nsw i64 %183, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %198, i64 %199, i1 false)
  %200 = getelementptr %struct.ref_s, ptr %198, i64 %183
  br label %201

201:                                              ; preds = %191, %201
  %202 = phi i32 [ %86, %191 ], [ %205, %201 ]
  %203 = phi ptr [ %198, %191 ], [ %206, %201 ]
  %204 = phi ptr [ %200, %191 ], [ %207, %201 ]
  %205 = add nsw i32 %202, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %203, ptr noundef nonnull align 8 dereferenceable(16) %204, i64 16, i1 false), !tbaa.struct !18
  %206 = getelementptr inbounds %struct.ref_s, ptr %203, i64 1
  %207 = getelementptr inbounds %struct.ref_s, ptr %204, i64 1
  %208 = icmp eq i32 %205, 0
  br i1 %208, label %209, label %201, !llvm.loop !31

209:                                              ; preds = %201, %179, %35, %82, %26, %24, %190, %165, %136, %114, %88, %13, %7
  %210 = phi i32 [ 0, %88 ], [ -16, %165 ], [ -16, %190 ], [ 0, %136 ], [ 0, %114 ], [ %14, %13 ], [ %8, %7 ], [ 0, %35 ], [ 0, %82 ], [ -15, %26 ], [ -15, %24 ], [ 0, %179 ], [ 0, %201 ]
  ret i32 %210
}

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zcleartomark(ptr nocapture readnone %0) #5 {
  %2 = tail call i32 @ref_stack_counttomark(ptr noundef nonnull @o_stack) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %2) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ -24, %1 ]
  ret i32 %6
}

declare i32 @ref_stack_counttomark(ptr noundef) local_unnamed_addr #6

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zstack_op_defs() local_unnamed_addr #7 {
  ret ptr @zstack_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zclear_stack(ptr nocapture readnone %0) #5 {
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #9
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %2) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcount(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !14
  %7 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #9
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !17
  store i16 2816, ptr %2, align 8, !tbaa !32
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcounttomark(ptr noundef %0) #5 {
  %2 = tail call i32 @ref_stack_counttomark(ptr noundef nonnull @o_stack) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %13

9:                                                ; preds = %4
  store ptr %5, ptr @o_stack, align 8, !tbaa !14
  %10 = add i32 %2, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !17
  store i16 2816, ptr %5, align 8, !tbaa !32
  br label %13

13:                                               ; preds = %1, %9, %8
  %14 = phi i32 [ -16, %8 ], [ 0, %9 ], [ -24, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal noundef i32 @zmark(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !15
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %7

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !14
  store i16 3072, ptr %2, align 8, !tbaa !32
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !13, i64 64}
!17 = !{!8, !8, i64 0}
!18 = !{i64 0, i64 2, !19, i64 2, i64 2, !19, i64 8, i64 8, !20, i64 8, i64 2, !19, i64 8, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !8, i64 0}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = !{!10, !12, i64 0}
