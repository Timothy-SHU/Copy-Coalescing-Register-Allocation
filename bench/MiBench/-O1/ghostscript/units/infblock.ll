; ModuleID = 'infblock.c'
source_filename = "infblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_huft_s = type { %union.anon.1, %union.anon.3 }
%union.anon.1 = type { ptr }
%union.anon.3 = type { ptr }
%struct.anon.2 = type { i8, i8 }

@.str = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@border = internal unnamed_addr constant [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@inflate_mask = external local_unnamed_addr global [17 x i32], align 16
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @inflate_blocks_reset(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 10
  %9 = load i64, ptr %8, align 8, !tbaa !12
  store i64 %9, ptr %2, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %0, align 8, !tbaa !14
  %12 = and i32 %11, -2
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  tail call void %16(ptr noundef %18, ptr noundef %20) #7
  br label %21

21:                                               ; preds = %10, %14
  %22 = load i32, ptr %0, align 8, !tbaa !14
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  tail call void @inflate_codes_free(ptr noundef %27, ptr noundef %1) #7
  %28 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = tail call i32 @inflate_trees_free(ptr noundef %29, ptr noundef %1) #7
  %31 = load ptr, ptr %25, align 8, !tbaa !18
  %32 = tail call i32 @inflate_trees_free(ptr noundef %31, ptr noundef %1) #7
  br label %33

33:                                               ; preds = %24, %21
  store i32 0, ptr %0, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 3
  store i32 0, ptr %34, align 4, !tbaa !19
  %35 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 4
  store i64 0, ptr %35, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 8
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 7
  store ptr %37, ptr %39, align 8, !tbaa !23
  %40 = load ptr, ptr %4, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = tail call i64 %40(i64 noundef 0, ptr noundef null, i32 noundef 0) #7
  %44 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 10
  store i64 %43, ptr %44, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 12
  store i64 %43, ptr %45, align 8, !tbaa !24
  br label %46

46:                                               ; preds = %42, %33
  ret void
}

declare void @inflate_codes_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflate_trees_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @inflate_blocks_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = tail call ptr %5(ptr noundef %7, i32 noundef 1, i32 noundef 104) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !25
  %12 = load ptr, ptr %6, align 8, !tbaa !17
  %13 = tail call ptr %11(ptr noundef %12, i32 noundef 1, i32 noundef %2) #7
  %14 = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !21
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void %18(ptr noundef %19, ptr noundef nonnull %8) #7
  br label %26

20:                                               ; preds = %10
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds i8, ptr %13, i64 %21
  %23 = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !26
  %24 = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i64 0, i32 9
  store ptr %1, ptr %24, align 8, !tbaa !5
  store i32 0, ptr %8, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i64 0, i32 10
  tail call void @inflate_blocks_reset(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %25)
  br label %26

26:                                               ; preds = %3, %20, %16
  %27 = phi ptr [ null, %16 ], [ %8, %20 ], [ null, %3 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = load ptr, ptr %1, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = ptrtoint ptr %22 to i64
  %26 = ptrtoint ptr %20 to i64
  %27 = xor i64 %26, -1
  %28 = add i64 %25, %27
  br label %35

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %20 to i64
  %34 = sub i64 %32, %33
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i64 [ %28, %24 ], [ %34, %29 ]
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %41 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %42 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  %43 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  %45 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %47 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %48 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %49 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 4
  %50 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 1
  %52 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %53 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 4
  %54 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %55 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %58 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %60 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %61 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %62 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 4
  %63 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %66 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %68 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %70 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %71 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %72 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 2
  %73 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %74 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 2
  %75 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 6
  %76 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %77 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %78 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %79 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 2
  %80 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 2
  %83 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1, i32 0, i32 3
  %84 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 1
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  br label %86

86:                                               ; preds = %856, %35
  %87 = phi i64 [ %858, %856 ], [ %16, %35 ]
  %88 = phi i32 [ %859, %856 ], [ %18, %35 ]
  %89 = phi ptr [ %860, %856 ], [ %12, %35 ]
  %90 = phi i32 [ %861, %856 ], [ %14, %35 ]
  %91 = phi ptr [ %862, %856 ], [ %20, %35 ]
  %92 = phi i32 [ %863, %856 ], [ %37, %35 ]
  %93 = phi i32 [ %864, %856 ], [ %2, %35 ]
  %94 = phi i32 [ %865, %856 ], [ undef, %35 ]
  br label %95

95:                                               ; preds = %86, %331
  %96 = phi ptr [ %338, %331 ], [ %89, %86 ]
  %97 = phi i32 [ %339, %331 ], [ %90, %86 ]
  %98 = phi ptr [ %340, %331 ], [ %91, %86 ]
  %99 = phi i32 [ %341, %331 ], [ %92, %86 ]
  %100 = phi i32 [ 0, %331 ], [ %93, %86 ]
  %101 = load i32, ptr %0, align 8, !tbaa !14
  switch i32 %101, label %846 [
    i32 0, label %114
    i32 1, label %108
    i32 2, label %252
    i32 3, label %102
    i32 4, label %424
    i32 5, label %518
    i32 6, label %748
    i32 7, label %802
    i32 8, label %823
    i32 9, label %837
  ]

102:                                              ; preds = %95
  %103 = icmp ult i32 %88, 14
  br i1 %103, label %104, label %381

104:                                              ; preds = %102
  %105 = icmp eq i32 %97, 0
  br i1 %105, label %366, label %106

106:                                              ; preds = %104
  %107 = zext nneg i32 %88 to i64
  br label %351

108:                                              ; preds = %95
  %109 = icmp ult i32 %88, 32
  br i1 %109, label %110, label %223

110:                                              ; preds = %108
  %111 = icmp eq i32 %97, 0
  br i1 %111, label %208, label %112

112:                                              ; preds = %110
  %113 = zext nneg i32 %88 to i64
  br label %193

114:                                              ; preds = %95
  %115 = icmp ult i32 %88, 3
  br i1 %115, label %116, label %136

116:                                              ; preds = %114
  %117 = icmp eq i32 %97, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %116
  %119 = or disjoint i32 %88, 8
  %120 = add i32 %97, -1
  %121 = getelementptr inbounds i8, ptr %96, i64 1
  %122 = load i8, ptr %96, align 1, !tbaa !18
  %123 = zext i8 %122 to i64
  %124 = zext nneg i32 %88 to i64
  %125 = shl nuw nsw i64 %123, %124
  %126 = or i64 %125, %87
  br label %136

127:                                              ; preds = %116
  store i64 %87, ptr %15, align 8, !tbaa !20
  store i32 %88, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %128 = load ptr, ptr %1, align 8, !tbaa !27
  %129 = ptrtoint ptr %96 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %133 = load i64, ptr %132, align 8, !tbaa !29
  %134 = add i64 %131, %133
  store i64 %134, ptr %132, align 8, !tbaa !29
  store ptr %96, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %135 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %100) #7
  br label %866

136:                                              ; preds = %118, %114
  %137 = phi i64 [ %126, %118 ], [ %87, %114 ]
  %138 = phi i32 [ %119, %118 ], [ %88, %114 ]
  %139 = phi ptr [ %121, %118 ], [ %96, %114 ]
  %140 = phi i32 [ %120, %118 ], [ %97, %114 ]
  %141 = phi i32 [ 0, %118 ], [ %100, %114 ]
  %142 = trunc i64 %137 to i32
  %143 = and i32 %142, 1
  store i32 %143, ptr %82, align 8, !tbaa !30
  %144 = lshr i32 %142, 1
  %145 = and i32 %144, 3
  switch i32 %145, label %855 [
    i32 0, label %146
    i32 1, label %153
    i32 2, label %176
    i32 3, label %179
  ]

146:                                              ; preds = %136
  %147 = lshr i64 %137, 3
  %148 = add i32 %138, -3
  %149 = and i32 %148, 7
  %150 = zext nneg i32 %149 to i64
  %151 = lshr i64 %147, %150
  %152 = and i32 %148, -8
  br label %856

153:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %154 = call i32 @inflate_trees_fixed(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %155 = load i32, ptr %4, align 4, !tbaa !31
  %156 = load i32, ptr %5, align 4, !tbaa !31
  %157 = load ptr, ptr %6, align 8, !tbaa !32
  %158 = load ptr, ptr %7, align 8, !tbaa !32
  %159 = call ptr @inflate_codes_new(i32 noundef %155, i32 noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %1) #7
  store ptr %159, ptr %83, align 8, !tbaa !18
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  store i64 %137, ptr %15, align 8, !tbaa !20
  store i32 %138, ptr %17, align 4, !tbaa !19
  store i32 %140, ptr %13, align 8, !tbaa !28
  %162 = load ptr, ptr %1, align 8, !tbaa !27
  %163 = ptrtoint ptr %139 to i64
  %164 = ptrtoint ptr %162 to i64
  %165 = sub i64 %163, %164
  %166 = load i64, ptr %85, align 8, !tbaa !29
  %167 = add i64 %165, %166
  store i64 %167, ptr %85, align 8, !tbaa !29
  store ptr %139, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %168 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -4) #7
  br label %170

169:                                              ; preds = %153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  br label %170

170:                                              ; preds = %169, %161
  %171 = phi i32 [ -4, %161 ], [ %141, %169 ]
  %172 = phi i32 [ %168, %161 ], [ %94, %169 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br i1 %160, label %866, label %173

173:                                              ; preds = %170
  %174 = lshr i64 %137, 3
  %175 = add i32 %138, -3
  br label %856

176:                                              ; preds = %136
  %177 = lshr i64 %137, 3
  %178 = add i32 %138, -3
  br label %856

179:                                              ; preds = %136
  %180 = lshr i64 %137, 3
  %181 = add i32 %138, -3
  store i32 9, ptr %0, align 8, !tbaa !14
  %182 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  store ptr @.str, ptr %182, align 8, !tbaa !33
  store i64 %180, ptr %15, align 8, !tbaa !20
  store i32 %181, ptr %17, align 4, !tbaa !19
  store i32 %140, ptr %13, align 8, !tbaa !28
  %183 = load ptr, ptr %1, align 8, !tbaa !27
  %184 = ptrtoint ptr %139 to i64
  %185 = ptrtoint ptr %183 to i64
  %186 = sub i64 %184, %185
  %187 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %188 = load i64, ptr %187, align 8, !tbaa !29
  %189 = add i64 %186, %188
  store i64 %189, ptr %187, align 8, !tbaa !29
  store ptr %139, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %190 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -3) #7
  br label %866

191:                                              ; preds = %193
  %192 = icmp eq i32 %198, 0
  br i1 %192, label %206, label %193, !llvm.loop !34

193:                                              ; preds = %112, %191
  %194 = phi i64 [ %87, %112 ], [ %203, %191 ]
  %195 = phi ptr [ %96, %112 ], [ %199, %191 ]
  %196 = phi i32 [ %97, %112 ], [ %198, %191 ]
  %197 = phi i64 [ %113, %112 ], [ %204, %191 ]
  %198 = add i32 %196, -1
  %199 = getelementptr inbounds i8, ptr %195, i64 1
  %200 = load i8, ptr %195, align 1, !tbaa !18
  %201 = zext i8 %200 to i64
  %202 = shl nuw nsw i64 %201, %197
  %203 = or i64 %202, %194
  %204 = add nuw nsw i64 %197, 8
  %205 = icmp ult i64 %197, 24
  br i1 %205, label %191, label %221, !llvm.loop !34

206:                                              ; preds = %191
  %207 = trunc i64 %204 to i32
  br label %208

208:                                              ; preds = %110, %206
  %209 = phi i32 [ %207, %206 ], [ %88, %110 ]
  %210 = phi i32 [ 0, %206 ], [ %100, %110 ]
  %211 = phi ptr [ %199, %206 ], [ %96, %110 ]
  %212 = phi i64 [ %203, %206 ], [ %87, %110 ]
  store i64 %212, ptr %15, align 8, !tbaa !20
  store i32 %209, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %213 = load ptr, ptr %1, align 8, !tbaa !27
  %214 = ptrtoint ptr %211 to i64
  %215 = ptrtoint ptr %213 to i64
  %216 = sub i64 %214, %215
  %217 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !29
  %219 = add i64 %216, %218
  store i64 %219, ptr %217, align 8, !tbaa !29
  store ptr %211, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %220 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %210) #7
  br label %866

221:                                              ; preds = %193
  %222 = trunc i64 %204 to i32
  br label %223

223:                                              ; preds = %221, %108
  %224 = phi i64 [ %87, %108 ], [ %203, %221 ]
  %225 = phi i32 [ %88, %108 ], [ %222, %221 ]
  %226 = phi ptr [ %96, %108 ], [ %199, %221 ]
  %227 = phi i32 [ %97, %108 ], [ %198, %221 ]
  %228 = phi i32 [ %100, %108 ], [ 0, %221 ]
  %229 = xor i64 %224, -1
  %230 = lshr i64 %229, 16
  %231 = xor i64 %230, %224
  %232 = and i64 %231, 65535
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %223
  store i32 9, ptr %0, align 8, !tbaa !14
  %235 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  store ptr @.str.1, ptr %235, align 8, !tbaa !33
  store i64 %224, ptr %15, align 8, !tbaa !20
  store i32 %225, ptr %17, align 4, !tbaa !19
  store i32 %227, ptr %13, align 8, !tbaa !28
  %236 = load ptr, ptr %1, align 8, !tbaa !27
  %237 = ptrtoint ptr %226 to i64
  %238 = ptrtoint ptr %236 to i64
  %239 = sub i64 %237, %238
  %240 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %241 = load i64, ptr %240, align 8, !tbaa !29
  %242 = add i64 %239, %241
  store i64 %242, ptr %240, align 8, !tbaa !29
  store ptr %226, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %243 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -3) #7
  br label %866

244:                                              ; preds = %223
  %245 = trunc i64 %224 to i32
  %246 = and i32 %245, 65535
  store i32 %246, ptr %80, align 8, !tbaa !18
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %856

248:                                              ; preds = %244
  %249 = load i32, ptr %81, align 8, !tbaa !30
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 0, i32 7
  br label %856

252:                                              ; preds = %95
  %253 = icmp eq i32 %97, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %252
  store i64 %87, ptr %15, align 8, !tbaa !20
  store i32 %88, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %255 = load ptr, ptr %1, align 8, !tbaa !27
  %256 = ptrtoint ptr %96 to i64
  %257 = ptrtoint ptr %255 to i64
  %258 = sub i64 %256, %257
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %260 = load i64, ptr %259, align 8, !tbaa !29
  %261 = add i64 %258, %260
  store i64 %261, ptr %259, align 8, !tbaa !29
  store ptr %96, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %262 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %100) #7
  br label %866

263:                                              ; preds = %252
  %264 = icmp eq i32 %99, 0
  br i1 %264, label %265, label %331

265:                                              ; preds = %263
  %266 = load ptr, ptr %75, align 8, !tbaa !26
  %267 = icmp eq ptr %98, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %265
  %269 = load ptr, ptr %21, align 8, !tbaa !23
  %270 = load ptr, ptr %76, align 8, !tbaa !21
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %282, label %272

272:                                              ; preds = %268
  %273 = icmp ult ptr %270, %269
  %274 = ptrtoint ptr %269 to i64
  %275 = ptrtoint ptr %270 to i64
  %276 = xor i64 %275, -1
  %277 = add i64 %276, %274
  %278 = ptrtoint ptr %266 to i64
  %279 = sub i64 %278, %275
  %280 = select i1 %273, i64 %277, i64 %279
  %281 = trunc i64 %280 to i32
  br label %282

282:                                              ; preds = %272, %268, %265
  %283 = phi ptr [ %270, %272 ], [ %98, %268 ], [ %98, %265 ]
  %284 = phi i32 [ %281, %272 ], [ 0, %268 ], [ 0, %265 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %331

286:                                              ; preds = %282
  store ptr %283, ptr %19, align 8, !tbaa !22
  %287 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %100) #7
  %288 = load ptr, ptr %19, align 8, !tbaa !22
  %289 = load ptr, ptr %21, align 8, !tbaa !23
  %290 = icmp ult ptr %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = ptrtoint ptr %289 to i64
  %293 = ptrtoint ptr %288 to i64
  %294 = xor i64 %293, -1
  %295 = add i64 %292, %294
  br label %301

296:                                              ; preds = %286
  %297 = load ptr, ptr %75, align 8, !tbaa !26
  %298 = ptrtoint ptr %297 to i64
  %299 = ptrtoint ptr %288 to i64
  %300 = sub i64 %298, %299
  br label %301

301:                                              ; preds = %296, %291
  %302 = phi i64 [ %295, %291 ], [ %300, %296 ]
  %303 = load ptr, ptr %75, align 8, !tbaa !26
  %304 = icmp eq ptr %288, %303
  br i1 %304, label %305, label %317

305:                                              ; preds = %301
  %306 = load ptr, ptr %77, align 8, !tbaa !21
  %307 = icmp eq ptr %289, %306
  br i1 %307, label %317, label %308

308:                                              ; preds = %305
  %309 = icmp ult ptr %306, %289
  %310 = ptrtoint ptr %289 to i64
  %311 = ptrtoint ptr %306 to i64
  %312 = xor i64 %311, -1
  %313 = add i64 %312, %310
  %314 = ptrtoint ptr %303 to i64
  %315 = sub i64 %314, %311
  %316 = select i1 %309, i64 %313, i64 %315
  br label %317

317:                                              ; preds = %308, %305, %301
  %318 = phi ptr [ %306, %308 ], [ %288, %305 ], [ %288, %301 ]
  %319 = phi i64 [ %316, %308 ], [ %302, %305 ], [ %302, %301 ]
  %320 = trunc i64 %319 to i32
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %317
  store i64 %87, ptr %15, align 8, !tbaa !20
  store i32 %88, ptr %17, align 4, !tbaa !19
  store i32 %97, ptr %13, align 8, !tbaa !28
  %323 = load ptr, ptr %1, align 8, !tbaa !27
  %324 = ptrtoint ptr %96 to i64
  %325 = ptrtoint ptr %323 to i64
  %326 = sub i64 %324, %325
  %327 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %328 = load i64, ptr %327, align 8, !tbaa !29
  %329 = add i64 %326, %328
  store i64 %329, ptr %327, align 8, !tbaa !29
  store ptr %96, ptr %1, align 8, !tbaa !27
  store ptr %318, ptr %19, align 8, !tbaa !22
  %330 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %287) #7
  br label %866

331:                                              ; preds = %282, %317, %263
  %332 = phi ptr [ %318, %317 ], [ %283, %282 ], [ %98, %263 ]
  %333 = phi i32 [ %320, %317 ], [ %284, %282 ], [ %99, %263 ]
  %334 = load i32, ptr %78, align 8, !tbaa !18
  %335 = call i32 @llvm.umin.i32(i32 %334, i32 %97)
  %336 = call i32 @llvm.umin.i32(i32 %335, i32 %333)
  %337 = zext i32 %336 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %332, ptr align 1 %96, i64 %337, i1 false)
  %338 = getelementptr inbounds i8, ptr %96, i64 %337
  %339 = sub i32 %97, %336
  %340 = getelementptr inbounds i8, ptr %332, i64 %337
  %341 = sub i32 %333, %336
  %342 = load i32, ptr %78, align 8, !tbaa !18
  %343 = sub i32 %342, %336
  store i32 %343, ptr %78, align 8, !tbaa !18
  %344 = icmp eq i32 %342, %336
  br i1 %344, label %345, label %95, !llvm.loop !36

345:                                              ; preds = %331
  %346 = load i32, ptr %79, align 8, !tbaa !30
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %347, i32 0, i32 7
  br label %856

349:                                              ; preds = %351
  %350 = icmp eq i32 %356, 0
  br i1 %350, label %364, label %351, !llvm.loop !37

351:                                              ; preds = %106, %349
  %352 = phi i64 [ %87, %106 ], [ %361, %349 ]
  %353 = phi ptr [ %96, %106 ], [ %357, %349 ]
  %354 = phi i32 [ %97, %106 ], [ %356, %349 ]
  %355 = phi i64 [ %107, %106 ], [ %362, %349 ]
  %356 = add i32 %354, -1
  %357 = getelementptr inbounds i8, ptr %353, i64 1
  %358 = load i8, ptr %353, align 1, !tbaa !18
  %359 = zext i8 %358 to i64
  %360 = shl nuw nsw i64 %359, %355
  %361 = or i64 %360, %352
  %362 = add nuw nsw i64 %355, 8
  %363 = icmp ult i64 %355, 6
  br i1 %363, label %349, label %379, !llvm.loop !37

364:                                              ; preds = %349
  %365 = trunc i64 %362 to i32
  br label %366

366:                                              ; preds = %104, %364
  %367 = phi i32 [ %365, %364 ], [ %88, %104 ]
  %368 = phi i32 [ 0, %364 ], [ %100, %104 ]
  %369 = phi ptr [ %357, %364 ], [ %96, %104 ]
  %370 = phi i64 [ %361, %364 ], [ %87, %104 ]
  store i64 %370, ptr %15, align 8, !tbaa !20
  store i32 %367, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %371 = load ptr, ptr %1, align 8, !tbaa !27
  %372 = ptrtoint ptr %369 to i64
  %373 = ptrtoint ptr %371 to i64
  %374 = sub i64 %372, %373
  %375 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %376 = load i64, ptr %375, align 8, !tbaa !29
  %377 = add i64 %374, %376
  store i64 %377, ptr %375, align 8, !tbaa !29
  store ptr %369, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %378 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %368) #7
  br label %866

379:                                              ; preds = %351
  %380 = trunc i64 %362 to i32
  br label %381

381:                                              ; preds = %379, %102
  %382 = phi i64 [ %87, %102 ], [ %361, %379 ]
  %383 = phi i32 [ %88, %102 ], [ %380, %379 ]
  %384 = phi ptr [ %96, %102 ], [ %357, %379 ]
  %385 = phi i32 [ %97, %102 ], [ %356, %379 ]
  %386 = phi i32 [ %100, %102 ], [ 0, %379 ]
  %387 = trunc i64 %382 to i32
  %388 = and i32 %387, 16383
  store i32 %388, ptr %38, align 8, !tbaa !18
  %389 = and i32 %387, 31
  %390 = icmp ugt i32 %389, 29
  br i1 %390, label %395, label %391

391:                                              ; preds = %381
  %392 = lshr i32 %387, 5
  %393 = and i32 %392, 31
  %394 = icmp ugt i32 %393, 29
  br i1 %394, label %395, label %405

395:                                              ; preds = %391, %381
  store i32 9, ptr %0, align 8, !tbaa !14
  %396 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 6
  store ptr @.str.2, ptr %396, align 8, !tbaa !33
  store i64 %382, ptr %15, align 8, !tbaa !20
  store i32 %383, ptr %17, align 4, !tbaa !19
  store i32 %385, ptr %13, align 8, !tbaa !28
  %397 = load ptr, ptr %1, align 8, !tbaa !27
  %398 = ptrtoint ptr %384 to i64
  %399 = ptrtoint ptr %397 to i64
  %400 = sub i64 %398, %399
  %401 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %402 = load i64, ptr %401, align 8, !tbaa !29
  %403 = add i64 %400, %402
  store i64 %403, ptr %401, align 8, !tbaa !29
  store ptr %384, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %404 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -3) #7
  br label %866

405:                                              ; preds = %391
  %406 = add nuw nsw i32 %389, 258
  %407 = add nuw nsw i32 %406, %393
  %408 = load ptr, ptr %39, align 8, !tbaa !25
  %409 = load ptr, ptr %40, align 8, !tbaa !17
  %410 = call ptr %408(ptr noundef %409, i32 noundef %407, i32 noundef 4) #7
  store ptr %410, ptr %41, align 8, !tbaa !18
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %421

412:                                              ; preds = %405
  store i64 %382, ptr %15, align 8, !tbaa !20
  store i32 %383, ptr %17, align 4, !tbaa !19
  store i32 %385, ptr %13, align 8, !tbaa !28
  %413 = load ptr, ptr %1, align 8, !tbaa !27
  %414 = ptrtoint ptr %384 to i64
  %415 = ptrtoint ptr %413 to i64
  %416 = sub i64 %414, %415
  %417 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %418 = load i64, ptr %417, align 8, !tbaa !29
  %419 = add i64 %416, %418
  store i64 %419, ptr %417, align 8, !tbaa !29
  store ptr %384, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %420 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -4) #7
  br label %866

421:                                              ; preds = %405
  %422 = lshr i64 %382, 14
  %423 = add i32 %383, -14
  store i32 0, ptr %42, align 4, !tbaa !18
  store i32 4, ptr %0, align 8, !tbaa !14
  br label %424

424:                                              ; preds = %95, %421
  %425 = phi i64 [ %422, %421 ], [ %87, %95 ]
  %426 = phi i32 [ %423, %421 ], [ %88, %95 ]
  %427 = phi ptr [ %384, %421 ], [ %96, %95 ]
  %428 = phi i32 [ %385, %421 ], [ %97, %95 ]
  %429 = phi i32 [ %386, %421 ], [ %100, %95 ]
  %430 = load i32, ptr %44, align 4, !tbaa !18
  %431 = load i32, ptr %43, align 8, !tbaa !18
  %432 = lshr i32 %431, 10
  %433 = add nuw nsw i32 %432, 4
  %434 = icmp ult i32 %430, %433
  br i1 %434, label %443, label %435

435:                                              ; preds = %471, %424
  %436 = phi i64 [ %425, %424 ], [ %486, %471 ]
  %437 = phi i32 [ %426, %424 ], [ %487, %471 ]
  %438 = phi ptr [ %427, %424 ], [ %474, %471 ]
  %439 = phi i32 [ %428, %424 ], [ %475, %471 ]
  %440 = phi i32 [ %429, %424 ], [ %476, %471 ]
  %441 = load i32, ptr %44, align 4, !tbaa !18
  %442 = icmp ult i32 %441, 19
  br i1 %442, label %493, label %504

443:                                              ; preds = %424, %471
  %444 = phi i32 [ %488, %471 ], [ %430, %424 ]
  %445 = phi i32 [ %476, %471 ], [ %429, %424 ]
  %446 = phi i32 [ %475, %471 ], [ %428, %424 ]
  %447 = phi ptr [ %474, %471 ], [ %427, %424 ]
  %448 = phi i32 [ %487, %471 ], [ %426, %424 ]
  %449 = phi i64 [ %486, %471 ], [ %425, %424 ]
  %450 = icmp ult i32 %448, 3
  br i1 %450, label %451, label %471

451:                                              ; preds = %443
  %452 = icmp eq i32 %446, 0
  br i1 %452, label %462, label %453

453:                                              ; preds = %451
  %454 = or disjoint i32 %448, 8
  %455 = add i32 %446, -1
  %456 = getelementptr inbounds i8, ptr %447, i64 1
  %457 = load i8, ptr %447, align 1, !tbaa !18
  %458 = zext i8 %457 to i64
  %459 = zext nneg i32 %448 to i64
  %460 = shl nuw nsw i64 %458, %459
  %461 = or i64 %460, %449
  br label %471

462:                                              ; preds = %451
  store i64 %449, ptr %15, align 8, !tbaa !20
  store i32 %448, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %463 = load ptr, ptr %1, align 8, !tbaa !27
  %464 = ptrtoint ptr %447 to i64
  %465 = ptrtoint ptr %463 to i64
  %466 = sub i64 %464, %465
  %467 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %468 = load i64, ptr %467, align 8, !tbaa !29
  %469 = add i64 %466, %468
  store i64 %469, ptr %467, align 8, !tbaa !29
  store ptr %447, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %470 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %445) #7
  br label %866

471:                                              ; preds = %453, %443
  %472 = phi i64 [ %461, %453 ], [ %449, %443 ]
  %473 = phi i32 [ %454, %453 ], [ %448, %443 ]
  %474 = phi ptr [ %456, %453 ], [ %447, %443 ]
  %475 = phi i32 [ %455, %453 ], [ %446, %443 ]
  %476 = phi i32 [ 0, %453 ], [ %445, %443 ]
  %477 = trunc i64 %472 to i32
  %478 = and i32 %477, 7
  %479 = load ptr, ptr %45, align 8, !tbaa !18
  %480 = add i32 %444, 1
  store i32 %480, ptr %44, align 4, !tbaa !18
  %481 = zext i32 %444 to i64
  %482 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !31
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds i32, ptr %479, i64 %484
  store i32 %478, ptr %485, align 4, !tbaa !31
  %486 = lshr i64 %472, 3
  %487 = add i32 %473, -3
  %488 = load i32, ptr %44, align 4, !tbaa !18
  %489 = load i32, ptr %43, align 8, !tbaa !18
  %490 = lshr i32 %489, 10
  %491 = add nuw nsw i32 %490, 4
  %492 = icmp ult i32 %488, %491
  br i1 %492, label %443, label %435, !llvm.loop !38

493:                                              ; preds = %435, %493
  %494 = phi i32 [ %502, %493 ], [ %441, %435 ]
  %495 = load ptr, ptr %46, align 8, !tbaa !18
  %496 = add nuw nsw i32 %494, 1
  store i32 %496, ptr %44, align 4, !tbaa !18
  %497 = zext nneg i32 %494 to i64
  %498 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !31
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds i32, ptr %495, i64 %500
  store i32 0, ptr %501, align 4, !tbaa !31
  %502 = load i32, ptr %44, align 4, !tbaa !18
  %503 = icmp ult i32 %502, 19
  br i1 %503, label %493, label %504, !llvm.loop !39

504:                                              ; preds = %493, %435
  store i32 7, ptr %47, align 8, !tbaa !18
  %505 = load ptr, ptr %48, align 8, !tbaa !18
  %506 = call i32 @inflate_trees_bits(ptr noundef %505, ptr noundef nonnull %47, ptr noundef nonnull %49, ptr noundef %1) #7
  switch i32 %506, label %508 [
    i32 0, label %517
    i32 -3, label %507
  ]

507:                                              ; preds = %504
  store i32 9, ptr %0, align 8, !tbaa !14
  br label %508

508:                                              ; preds = %504, %507
  store i64 %436, ptr %15, align 8, !tbaa !20
  store i32 %437, ptr %17, align 4, !tbaa !19
  store i32 %439, ptr %13, align 8, !tbaa !28
  %509 = load ptr, ptr %1, align 8, !tbaa !27
  %510 = ptrtoint ptr %438 to i64
  %511 = ptrtoint ptr %509 to i64
  %512 = sub i64 %510, %511
  %513 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %514 = load i64, ptr %513, align 8, !tbaa !29
  %515 = add i64 %512, %514
  store i64 %515, ptr %513, align 8, !tbaa !29
  store ptr %438, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %516 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %506) #7
  br label %866

517:                                              ; preds = %504
  store i32 0, ptr %44, align 4, !tbaa !18
  store i32 5, ptr %0, align 8, !tbaa !14
  br label %518

518:                                              ; preds = %95, %517
  %519 = phi i64 [ %436, %517 ], [ %87, %95 ]
  %520 = phi i32 [ %437, %517 ], [ %88, %95 ]
  %521 = phi ptr [ %438, %517 ], [ %96, %95 ]
  %522 = phi i32 [ %439, %517 ], [ %97, %95 ]
  %523 = phi i32 [ %440, %517 ], [ %100, %95 ]
  br label %524

524:                                              ; preds = %518, %690
  %525 = phi i64 [ %691, %690 ], [ %519, %518 ]
  %526 = phi i32 [ %692, %690 ], [ %520, %518 ]
  %527 = phi ptr [ %693, %690 ], [ %521, %518 ]
  %528 = phi i32 [ %694, %690 ], [ %522, %518 ]
  %529 = phi i32 [ %696, %690 ], [ %523, %518 ]
  %530 = phi i32 [ %697, %690 ], [ %94, %518 ]
  %531 = load i32, ptr %50, align 8, !tbaa !18
  %532 = load i32, ptr %51, align 4, !tbaa !18
  %533 = and i32 %531, 31
  %534 = add nuw nsw i32 %533, 258
  %535 = lshr i32 %531, 5
  %536 = and i32 %535, 31
  %537 = add nuw nsw i32 %534, %536
  %538 = icmp ult i32 %532, %537
  br i1 %538, label %539, label %698

539:                                              ; preds = %524
  %540 = load i32, ptr %52, align 8, !tbaa !18
  %541 = icmp ult i32 %526, %540
  br i1 %541, label %542, label %574

542:                                              ; preds = %539
  %543 = zext i32 %528 to i64
  %544 = getelementptr i8, ptr %527, i64 %543
  %545 = shl i32 %528, 3
  %546 = add i32 %526, %545
  %547 = icmp eq i32 %528, 0
  br i1 %547, label %564, label %550

548:                                              ; preds = %550
  %549 = icmp eq i32 %555, 0
  br i1 %549, label %564, label %550, !llvm.loop !40

550:                                              ; preds = %542, %548
  %551 = phi i64 [ %561, %548 ], [ %525, %542 ]
  %552 = phi i32 [ %562, %548 ], [ %526, %542 ]
  %553 = phi ptr [ %556, %548 ], [ %527, %542 ]
  %554 = phi i32 [ %555, %548 ], [ %528, %542 ]
  %555 = add i32 %554, -1
  %556 = getelementptr inbounds i8, ptr %553, i64 1
  %557 = load i8, ptr %553, align 1, !tbaa !18
  %558 = zext i8 %557 to i64
  %559 = zext nneg i32 %552 to i64
  %560 = shl i64 %558, %559
  %561 = or i64 %560, %551
  %562 = add i32 %552, 8
  %563 = icmp ult i32 %562, %540
  br i1 %563, label %548, label %574, !llvm.loop !40

564:                                              ; preds = %548, %542
  %565 = phi i32 [ %529, %542 ], [ 0, %548 ]
  %566 = phi i64 [ %525, %542 ], [ %561, %548 ]
  store i64 %566, ptr %15, align 8, !tbaa !20
  store i32 %546, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %567 = load ptr, ptr %1, align 8, !tbaa !27
  %568 = ptrtoint ptr %544 to i64
  %569 = ptrtoint ptr %567 to i64
  %570 = sub i64 %568, %569
  %571 = load i64, ptr %60, align 8, !tbaa !29
  %572 = add i64 %570, %571
  store i64 %572, ptr %60, align 8, !tbaa !29
  store ptr %544, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %573 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %565) #7
  br label %690

574:                                              ; preds = %550, %539
  %575 = phi i64 [ %525, %539 ], [ %561, %550 ]
  %576 = phi i32 [ %526, %539 ], [ %562, %550 ]
  %577 = phi ptr [ %527, %539 ], [ %556, %550 ]
  %578 = phi i32 [ %528, %539 ], [ %555, %550 ]
  %579 = phi i32 [ %529, %539 ], [ 0, %550 ]
  %580 = load ptr, ptr %53, align 8, !tbaa !18
  %581 = trunc i64 %575 to i32
  %582 = zext i32 %540 to i64
  %583 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %582
  %584 = load i32, ptr %583, align 4, !tbaa !31
  %585 = and i32 %584, %581
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds %struct.inflate_huft_s, ptr %580, i64 %586
  %588 = getelementptr inbounds %struct.anon.2, ptr %587, i64 0, i32 1
  %589 = load i8, ptr %588, align 1, !tbaa !18
  %590 = zext i8 %589 to i32
  %591 = getelementptr inbounds %struct.inflate_huft_s, ptr %580, i64 %586, i32 1
  %592 = load i32, ptr %591, align 8, !tbaa !18
  %593 = icmp ult i32 %592, 16
  br i1 %593, label %594, label %602

594:                                              ; preds = %574
  %595 = zext nneg i8 %589 to i64
  %596 = lshr i64 %575, %595
  %597 = sub i32 %576, %590
  %598 = load ptr, ptr %59, align 8, !tbaa !18
  %599 = add i32 %532, 1
  store i32 %599, ptr %51, align 4, !tbaa !18
  %600 = zext i32 %532 to i64
  %601 = getelementptr inbounds i32, ptr %598, i64 %600
  store i32 %592, ptr %601, align 4, !tbaa !31
  br label %690

602:                                              ; preds = %574
  %603 = icmp eq i32 %592, 18
  %604 = add i32 %592, -14
  %605 = select i1 %603, i32 7, i32 %604
  %606 = select i1 %603, i32 11, i32 3
  %607 = add i32 %605, %590
  %608 = icmp ult i32 %576, %607
  br i1 %608, label %609, label %641

609:                                              ; preds = %602
  %610 = zext i32 %578 to i64
  %611 = getelementptr i8, ptr %577, i64 %610
  %612 = shl i32 %578, 3
  %613 = add i32 %576, %612
  %614 = icmp eq i32 %578, 0
  br i1 %614, label %631, label %617

615:                                              ; preds = %617
  %616 = icmp eq i32 %622, 0
  br i1 %616, label %631, label %617, !llvm.loop !41

617:                                              ; preds = %609, %615
  %618 = phi i64 [ %628, %615 ], [ %575, %609 ]
  %619 = phi i32 [ %629, %615 ], [ %576, %609 ]
  %620 = phi ptr [ %623, %615 ], [ %577, %609 ]
  %621 = phi i32 [ %622, %615 ], [ %578, %609 ]
  %622 = add i32 %621, -1
  %623 = getelementptr inbounds i8, ptr %620, i64 1
  %624 = load i8, ptr %620, align 1, !tbaa !18
  %625 = zext i8 %624 to i64
  %626 = zext nneg i32 %619 to i64
  %627 = shl i64 %625, %626
  %628 = or i64 %627, %618
  %629 = add i32 %619, 8
  %630 = icmp ult i32 %629, %607
  br i1 %630, label %615, label %641, !llvm.loop !41

631:                                              ; preds = %615, %609
  %632 = phi i32 [ %579, %609 ], [ 0, %615 ]
  %633 = phi i64 [ %575, %609 ], [ %628, %615 ]
  store i64 %633, ptr %15, align 8, !tbaa !20
  store i32 %613, ptr %17, align 4, !tbaa !19
  store i32 0, ptr %13, align 8, !tbaa !28
  %634 = load ptr, ptr %1, align 8, !tbaa !27
  %635 = ptrtoint ptr %611 to i64
  %636 = ptrtoint ptr %634 to i64
  %637 = sub i64 %635, %636
  %638 = load i64, ptr %58, align 8, !tbaa !29
  %639 = add i64 %637, %638
  store i64 %639, ptr %58, align 8, !tbaa !29
  store ptr %611, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %640 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %632) #7
  br label %690

641:                                              ; preds = %617, %602
  %642 = phi i64 [ %575, %602 ], [ %628, %617 ]
  %643 = phi i32 [ %576, %602 ], [ %629, %617 ]
  %644 = phi ptr [ %577, %602 ], [ %623, %617 ]
  %645 = phi i32 [ %578, %602 ], [ %622, %617 ]
  %646 = phi i32 [ %579, %602 ], [ 0, %617 ]
  %647 = zext nneg i8 %589 to i64
  %648 = lshr i64 %642, %647
  %649 = trunc i64 %648 to i32
  %650 = zext i32 %605 to i64
  %651 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !31
  %653 = and i32 %652, %649
  %654 = add i32 %653, %606
  %655 = lshr i64 %648, %650
  %656 = sub i32 %643, %607
  %657 = add i32 %654, %532
  %658 = icmp ugt i32 %657, %537
  br i1 %658, label %663, label %659

659:                                              ; preds = %641
  %660 = icmp eq i32 %592, 16
  %661 = icmp eq i32 %532, 0
  %662 = and i1 %661, %660
  br i1 %662, label %663, label %671

663:                                              ; preds = %659, %641
  store i32 9, ptr %0, align 8, !tbaa !14
  store ptr @.str.3, ptr %56, align 8, !tbaa !33
  store i64 %655, ptr %15, align 8, !tbaa !20
  store i32 %656, ptr %17, align 4, !tbaa !19
  store i32 %645, ptr %13, align 8, !tbaa !28
  %664 = load ptr, ptr %1, align 8, !tbaa !27
  %665 = ptrtoint ptr %644 to i64
  %666 = ptrtoint ptr %664 to i64
  %667 = sub i64 %665, %666
  %668 = load i64, ptr %57, align 8, !tbaa !29
  %669 = add i64 %667, %668
  store i64 %669, ptr %57, align 8, !tbaa !29
  store ptr %644, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %670 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -3) #7
  br label %690

671:                                              ; preds = %659
  br i1 %660, label %672, label %678

672:                                              ; preds = %671
  %673 = load ptr, ptr %54, align 8, !tbaa !18
  %674 = add i32 %532, -1
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds i32, ptr %673, i64 %675
  %677 = load i32, ptr %676, align 4, !tbaa !31
  br label %678

678:                                              ; preds = %671, %672
  %679 = phi i32 [ %677, %672 ], [ 0, %671 ]
  br label %680

680:                                              ; preds = %680, %678
  %681 = phi i32 [ %532, %678 ], [ %684, %680 ]
  %682 = phi i32 [ %654, %678 ], [ %687, %680 ]
  %683 = load ptr, ptr %55, align 8, !tbaa !18
  %684 = add i32 %681, 1
  %685 = zext i32 %681 to i64
  %686 = getelementptr inbounds i32, ptr %683, i64 %685
  store i32 %679, ptr %686, align 4, !tbaa !31
  %687 = add i32 %682, -1
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %680, !llvm.loop !42

689:                                              ; preds = %680
  store i32 %684, ptr %51, align 4, !tbaa !18
  br label %690

690:                                              ; preds = %594, %689, %663, %631, %564
  %691 = phi i64 [ %566, %564 ], [ %633, %631 ], [ %655, %663 ], [ %596, %594 ], [ %655, %689 ]
  %692 = phi i32 [ %546, %564 ], [ %613, %631 ], [ %656, %663 ], [ %597, %594 ], [ %656, %689 ]
  %693 = phi ptr [ %544, %564 ], [ %611, %631 ], [ %644, %663 ], [ %577, %594 ], [ %644, %689 ]
  %694 = phi i32 [ 0, %564 ], [ 0, %631 ], [ %645, %663 ], [ %578, %594 ], [ %645, %689 ]
  %695 = phi i1 [ false, %564 ], [ false, %631 ], [ false, %663 ], [ true, %594 ], [ true, %689 ]
  %696 = phi i32 [ %565, %564 ], [ %632, %631 ], [ -3, %663 ], [ %579, %594 ], [ %646, %689 ]
  %697 = phi i32 [ %573, %564 ], [ %640, %631 ], [ %670, %663 ], [ %530, %594 ], [ %530, %689 ]
  br i1 %695, label %524, label %866, !llvm.loop !43

698:                                              ; preds = %524
  %699 = load ptr, ptr %62, align 8, !tbaa !18
  %700 = call i32 @inflate_trees_free(ptr noundef %699, ptr noundef %1) #7
  store ptr null, ptr %62, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  store i32 9, ptr %8, align 4, !tbaa !31
  store i32 6, ptr %9, align 4, !tbaa !31
  %701 = load i32, ptr %61, align 8, !tbaa !18
  %702 = and i32 %701, 31
  %703 = add nuw nsw i32 %702, 257
  %704 = lshr i32 %701, 5
  %705 = and i32 %704, 31
  %706 = add nuw nsw i32 %705, 1
  %707 = load ptr, ptr %63, align 8, !tbaa !18
  %708 = call i32 @inflate_trees_dynamic(i32 noundef %703, i32 noundef %706, ptr noundef %707, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %1) #7
  switch i32 %708, label %710 [
    i32 0, label %718
    i32 -3, label %709
  ]

709:                                              ; preds = %698
  store i32 9, ptr %0, align 8, !tbaa !14
  br label %710

710:                                              ; preds = %698, %709
  store i64 %525, ptr %15, align 8, !tbaa !20
  store i32 %526, ptr %17, align 4, !tbaa !19
  store i32 %528, ptr %13, align 8, !tbaa !28
  %711 = load ptr, ptr %1, align 8, !tbaa !27
  %712 = ptrtoint ptr %527 to i64
  %713 = ptrtoint ptr %711 to i64
  %714 = sub i64 %712, %713
  %715 = load i64, ptr %68, align 8, !tbaa !29
  %716 = add i64 %714, %715
  store i64 %716, ptr %68, align 8, !tbaa !29
  store ptr %527, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %717 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %708) #7
  br label %743

718:                                              ; preds = %698
  %719 = load i32, ptr %8, align 4, !tbaa !31
  %720 = load i32, ptr %9, align 4, !tbaa !31
  %721 = load ptr, ptr %10, align 8, !tbaa !32
  %722 = load ptr, ptr %11, align 8, !tbaa !32
  %723 = call ptr @inflate_codes_new(i32 noundef %719, i32 noundef %720, ptr noundef %721, ptr noundef %722, ptr noundef %1) #7
  %724 = icmp eq ptr %723, null
  br i1 %724, label %725, label %737

725:                                              ; preds = %718
  %726 = load ptr, ptr %11, align 8, !tbaa !32
  %727 = call i32 @inflate_trees_free(ptr noundef %726, ptr noundef %1) #7
  %728 = load ptr, ptr %10, align 8, !tbaa !32
  %729 = call i32 @inflate_trees_free(ptr noundef %728, ptr noundef %1) #7
  store i64 %525, ptr %15, align 8, !tbaa !20
  store i32 %526, ptr %17, align 4, !tbaa !19
  store i32 %528, ptr %13, align 8, !tbaa !28
  %730 = load ptr, ptr %1, align 8, !tbaa !27
  %731 = ptrtoint ptr %527 to i64
  %732 = ptrtoint ptr %730 to i64
  %733 = sub i64 %731, %732
  %734 = load i64, ptr %67, align 8, !tbaa !29
  %735 = add i64 %733, %734
  store i64 %735, ptr %67, align 8, !tbaa !29
  store ptr %527, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %736 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -4) #7
  br label %743

737:                                              ; preds = %718
  %738 = load ptr, ptr %64, align 8, !tbaa !15
  %739 = load ptr, ptr %65, align 8, !tbaa !17
  %740 = load ptr, ptr %63, align 8, !tbaa !18
  call void %738(ptr noundef %739, ptr noundef %740) #7
  store ptr %723, ptr %66, align 8, !tbaa !18
  %741 = load ptr, ptr %10, align 8, !tbaa !32
  store ptr %741, ptr %61, align 8, !tbaa !18
  %742 = load ptr, ptr %11, align 8, !tbaa !32
  store ptr %742, ptr %63, align 8, !tbaa !18
  br label %743

743:                                              ; preds = %737, %725, %710
  %744 = phi i1 [ false, %710 ], [ false, %725 ], [ true, %737 ]
  %745 = phi i32 [ %708, %710 ], [ -4, %725 ], [ %529, %737 ]
  %746 = phi i32 [ %717, %710 ], [ %736, %725 ], [ %530, %737 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br i1 %744, label %747, label %866

747:                                              ; preds = %743
  store i32 6, ptr %0, align 8, !tbaa !14
  br label %748

748:                                              ; preds = %95, %747
  %749 = phi i64 [ %525, %747 ], [ %87, %95 ]
  %750 = phi i32 [ %526, %747 ], [ %88, %95 ]
  %751 = phi ptr [ %527, %747 ], [ %96, %95 ]
  %752 = phi i32 [ %528, %747 ], [ %97, %95 ]
  %753 = phi i32 [ %745, %747 ], [ %100, %95 ]
  %754 = phi i32 [ %746, %747 ], [ %94, %95 ]
  store i64 %749, ptr %15, align 8, !tbaa !20
  store i32 %750, ptr %17, align 4, !tbaa !19
  store i32 %752, ptr %13, align 8, !tbaa !28
  %755 = load ptr, ptr %1, align 8, !tbaa !27
  %756 = ptrtoint ptr %751 to i64
  %757 = ptrtoint ptr %755 to i64
  %758 = sub i64 %756, %757
  %759 = load i64, ptr %69, align 8, !tbaa !29
  %760 = add i64 %758, %759
  store i64 %760, ptr %69, align 8, !tbaa !29
  store ptr %751, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %761 = call i32 @inflate_codes(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %753) #7
  %762 = icmp eq i32 %761, 1
  br i1 %762, label %765, label %763

763:                                              ; preds = %748
  %764 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %761) #7
  br label %866

765:                                              ; preds = %748
  %766 = load ptr, ptr %71, align 8, !tbaa !18
  call void @inflate_codes_free(ptr noundef %766, ptr noundef nonnull %1) #7
  %767 = load ptr, ptr %72, align 8, !tbaa !18
  %768 = call i32 @inflate_trees_free(ptr noundef %767, ptr noundef nonnull %1) #7
  %769 = load ptr, ptr %70, align 8, !tbaa !18
  %770 = call i32 @inflate_trees_free(ptr noundef %769, ptr noundef nonnull %1) #7
  %771 = load ptr, ptr %1, align 8, !tbaa !27
  %772 = load i32, ptr %13, align 8, !tbaa !28
  %773 = load i64, ptr %15, align 8, !tbaa !20
  %774 = load i32, ptr %17, align 4, !tbaa !19
  %775 = load ptr, ptr %19, align 8, !tbaa !22
  %776 = load ptr, ptr %21, align 8, !tbaa !23
  %777 = icmp ult ptr %775, %776
  br i1 %777, label %778, label %783

778:                                              ; preds = %765
  %779 = ptrtoint ptr %776 to i64
  %780 = ptrtoint ptr %775 to i64
  %781 = xor i64 %780, -1
  %782 = add i64 %779, %781
  br label %788

783:                                              ; preds = %765
  %784 = load ptr, ptr %73, align 8, !tbaa !26
  %785 = ptrtoint ptr %784 to i64
  %786 = ptrtoint ptr %775 to i64
  %787 = sub i64 %785, %786
  br label %788

788:                                              ; preds = %783, %778
  %789 = phi i64 [ %782, %778 ], [ %787, %783 ]
  %790 = load i32, ptr %74, align 8, !tbaa !30
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %794

792:                                              ; preds = %788
  %793 = trunc i64 %789 to i32
  br label %856

794:                                              ; preds = %788
  %795 = icmp ugt i32 %774, 7
  %796 = add i32 %774, -8
  %797 = select i1 %795, i32 %796, i32 %774
  %798 = sext i1 %795 to i64
  %799 = getelementptr inbounds i8, ptr %771, i64 %798
  %800 = zext i1 %795 to i32
  %801 = add i32 %772, %800
  store i32 7, ptr %0, align 8, !tbaa !14
  br label %802

802:                                              ; preds = %95, %794
  %803 = phi i64 [ %773, %794 ], [ %87, %95 ]
  %804 = phi i32 [ %797, %794 ], [ %88, %95 ]
  %805 = phi ptr [ %799, %794 ], [ %96, %95 ]
  %806 = phi i32 [ %801, %794 ], [ %97, %95 ]
  %807 = phi ptr [ %775, %794 ], [ %98, %95 ]
  %808 = phi i32 [ 0, %794 ], [ %100, %95 ]
  store ptr %807, ptr %19, align 8, !tbaa !22
  %809 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef %808) #7
  %810 = load ptr, ptr %19, align 8, !tbaa !22
  %811 = load ptr, ptr %21, align 8, !tbaa !23
  %812 = icmp eq ptr %811, %810
  br i1 %812, label %822, label %813

813:                                              ; preds = %802
  store i64 %803, ptr %15, align 8, !tbaa !20
  store i32 %804, ptr %17, align 4, !tbaa !19
  store i32 %806, ptr %13, align 8, !tbaa !28
  %814 = load ptr, ptr %1, align 8, !tbaa !27
  %815 = ptrtoint ptr %805 to i64
  %816 = ptrtoint ptr %814 to i64
  %817 = sub i64 %815, %816
  %818 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %819 = load i64, ptr %818, align 8, !tbaa !29
  %820 = add i64 %817, %819
  store i64 %820, ptr %818, align 8, !tbaa !29
  store ptr %805, ptr %1, align 8, !tbaa !27
  %821 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %809) #7
  br label %866

822:                                              ; preds = %802
  store i32 8, ptr %0, align 8, !tbaa !14
  br label %823

823:                                              ; preds = %95, %822
  %824 = phi i64 [ %803, %822 ], [ %87, %95 ]
  %825 = phi i32 [ %804, %822 ], [ %88, %95 ]
  %826 = phi ptr [ %805, %822 ], [ %96, %95 ]
  %827 = phi i32 [ %806, %822 ], [ %97, %95 ]
  %828 = phi ptr [ %810, %822 ], [ %98, %95 ]
  store i64 %824, ptr %15, align 8, !tbaa !20
  store i32 %825, ptr %17, align 4, !tbaa !19
  store i32 %827, ptr %13, align 8, !tbaa !28
  %829 = load ptr, ptr %1, align 8, !tbaa !27
  %830 = ptrtoint ptr %826 to i64
  %831 = ptrtoint ptr %829 to i64
  %832 = sub i64 %830, %831
  %833 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %834 = load i64, ptr %833, align 8, !tbaa !29
  %835 = add i64 %832, %834
  store i64 %835, ptr %833, align 8, !tbaa !29
  store ptr %826, ptr %1, align 8, !tbaa !27
  store ptr %828, ptr %19, align 8, !tbaa !22
  %836 = call i32 @inflate_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #7
  br label %866

837:                                              ; preds = %95
  store i64 %87, ptr %15, align 8, !tbaa !20
  store i32 %88, ptr %17, align 4, !tbaa !19
  store i32 %97, ptr %13, align 8, !tbaa !28
  %838 = load ptr, ptr %1, align 8, !tbaa !27
  %839 = ptrtoint ptr %96 to i64
  %840 = ptrtoint ptr %838 to i64
  %841 = sub i64 %839, %840
  %842 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %843 = load i64, ptr %842, align 8, !tbaa !29
  %844 = add i64 %841, %843
  store i64 %844, ptr %842, align 8, !tbaa !29
  store ptr %96, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %845 = call i32 @inflate_flush(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -3) #7
  br label %866

846:                                              ; preds = %95
  store i64 %87, ptr %15, align 8, !tbaa !20
  store i32 %88, ptr %17, align 4, !tbaa !19
  store i32 %97, ptr %13, align 8, !tbaa !28
  %847 = load ptr, ptr %1, align 8, !tbaa !27
  %848 = ptrtoint ptr %96 to i64
  %849 = ptrtoint ptr %847 to i64
  %850 = sub i64 %848, %849
  %851 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 2
  %852 = load i64, ptr %851, align 8, !tbaa !29
  %853 = add i64 %850, %852
  store i64 %853, ptr %851, align 8, !tbaa !29
  store ptr %96, ptr %1, align 8, !tbaa !27
  store ptr %98, ptr %19, align 8, !tbaa !22
  %854 = call i32 @inflate_flush(ptr noundef %0, ptr noundef %1, i32 noundef -2) #7
  br label %866

855:                                              ; preds = %136
  unreachable

856:                                              ; preds = %248, %244, %345, %792, %176, %173, %146
  %857 = phi i32 [ 1, %146 ], [ 6, %173 ], [ 3, %176 ], [ 0, %792 ], [ %348, %345 ], [ %251, %248 ], [ 2, %244 ]
  %858 = phi i64 [ %151, %146 ], [ %174, %173 ], [ %177, %176 ], [ %773, %792 ], [ %87, %345 ], [ 0, %248 ], [ 0, %244 ]
  %859 = phi i32 [ %152, %146 ], [ %175, %173 ], [ %178, %176 ], [ %774, %792 ], [ %88, %345 ], [ 0, %248 ], [ 0, %244 ]
  %860 = phi ptr [ %139, %146 ], [ %139, %173 ], [ %139, %176 ], [ %771, %792 ], [ %338, %345 ], [ %226, %248 ], [ %226, %244 ]
  %861 = phi i32 [ %140, %146 ], [ %140, %173 ], [ %140, %176 ], [ %772, %792 ], [ %339, %345 ], [ %227, %248 ], [ %227, %244 ]
  %862 = phi ptr [ %98, %146 ], [ %98, %173 ], [ %98, %176 ], [ %775, %792 ], [ %340, %345 ], [ %98, %248 ], [ %98, %244 ]
  %863 = phi i32 [ %99, %146 ], [ %99, %173 ], [ %99, %176 ], [ %793, %792 ], [ %341, %345 ], [ %99, %248 ], [ %99, %244 ]
  %864 = phi i32 [ %141, %146 ], [ %171, %173 ], [ %141, %176 ], [ 0, %792 ], [ 0, %345 ], [ %228, %248 ], [ %228, %244 ]
  %865 = phi i32 [ %94, %146 ], [ %172, %173 ], [ %94, %176 ], [ %754, %792 ], [ %94, %345 ], [ %94, %248 ], [ %94, %244 ]
  store i32 %857, ptr %0, align 8, !tbaa !14
  br label %86, !llvm.loop !36

866:                                              ; preds = %170, %743, %690, %846, %837, %823, %813, %763, %508, %462, %412, %395, %366, %322, %254, %234, %208, %179, %127
  %867 = phi i32 [ %854, %846 ], [ %845, %837 ], [ %836, %823 ], [ %821, %813 ], [ %764, %763 ], [ %470, %462 ], [ %516, %508 ], [ %378, %366 ], [ %404, %395 ], [ %420, %412 ], [ %262, %254 ], [ %330, %322 ], [ %220, %208 ], [ %243, %234 ], [ %135, %127 ], [ %190, %179 ], [ %697, %690 ], [ %746, %743 ], [ %172, %170 ]
  ret i32 %867
}

declare i32 @inflate_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @inflate_trees_fixed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @inflate_codes_new(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @inflate_trees_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflate_trees_dynamic(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflate_codes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_blocks_free(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call void @inflate_blocks_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  tail call void %5(ptr noundef %7, ptr noundef %9) #7
  %10 = load ptr, ptr %4, align 8, !tbaa !15
  %11 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void %10(ptr noundef %11, ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inflate_set_dictionary(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %1, i64 %6, i1 false)
  %7 = load ptr, ptr %4, align 8, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %7, i64 %6
  %9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 7
  store ptr %8, ptr %10, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 88}
!6 = !{!"inflate_blocks_state", !7, i64 0, !8, i64 8, !7, i64 40, !7, i64 44, !10, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !10, i64 96}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !10, i64 96}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!16, !11, i64 72}
!16 = !{!"z_stream_s", !11, i64 0, !7, i64 8, !10, i64 16, !11, i64 24, !7, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !10, i64 96, !10, i64 104}
!17 = !{!16, !11, i64 80}
!18 = !{!8, !8, i64 0}
!19 = !{!6, !7, i64 44}
!20 = !{!6, !10, i64 48}
!21 = !{!6, !11, i64 56}
!22 = !{!6, !11, i64 80}
!23 = !{!6, !11, i64 72}
!24 = !{!16, !10, i64 96}
!25 = !{!16, !11, i64 64}
!26 = !{!6, !11, i64 64}
!27 = !{!16, !11, i64 0}
!28 = !{!16, !7, i64 8}
!29 = !{!16, !10, i64 16}
!30 = !{!6, !7, i64 40}
!31 = !{!7, !7, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!16, !11, i64 48}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
