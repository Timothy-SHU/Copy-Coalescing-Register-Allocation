; ModuleID = 'sha-2/sha512.c'
source_filename = "sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sha-2/sha512.c\00", align 1
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !40 {
  %2 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !41
  store i64 0, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1
  store i64 7640891576956012808, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 1
  store i64 -4942790177534073029, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 2
  store i64 4354685564936845355, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 3
  store i64 -6534734903238641935, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 4
  store i64 5840696475078001361, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 5
  store i64 -7276294671716946913, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 6
  store i64 2270897969802886507, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 7
  store i64 6620516959819538809, ptr %10, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sha_process(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !prof !40 {
  %4 = sext i32 %2 to i64
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !49

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !50
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, i64 noundef %4, ptr noundef nonnull @.str.1, i32 noundef 129) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %1, i64 %4, i1 false), !prof !52
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %45, label %12, !prof !53

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %12, %41
  %15 = phi i32 [ %2, %12 ], [ %43, %41 ]
  %16 = phi ptr [ %5, %12 ], [ %42, %41 ]
  %17 = load i32, ptr %13, align 8, !tbaa !41
  %18 = icmp eq i32 %17, 0
  %19 = icmp ugt i32 %15, 127
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %26, !prof !54

21:                                               ; preds = %14
  tail call fastcc void @sha_compress(ptr noundef %0, ptr noundef %16)
  %22 = load i64, ptr %0, align 8, !tbaa !47
  %23 = add i64 %22, 1024
  store i64 %23, ptr %0, align 8, !tbaa !47
  %24 = getelementptr inbounds i8, ptr %16, i64 128
  %25 = add i32 %15, -128
  br label %41

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3
  %28 = sub i32 128, %17
  %29 = tail call i32 @llvm.umin.i32(i32 %15, i32 %28)
  %30 = zext i32 %17 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = zext i32 %29 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %16, i64 %32, i1 false), !prof !55
  %33 = load i32, ptr %13, align 8, !tbaa !41
  %34 = add i32 %33, %29
  store i32 %34, ptr %13, align 8, !tbaa !41
  %35 = getelementptr inbounds i8, ptr %16, i64 %32
  %36 = sub i32 %15, %29
  %37 = icmp eq i32 %34, 128
  br i1 %37, label %38, label %41, !prof !56

38:                                               ; preds = %26
  tail call fastcc void @sha_compress(ptr noundef %0, ptr noundef nonnull %27)
  %39 = load i64, ptr %0, align 8, !tbaa !47
  %40 = add i64 %39, 1024
  store i64 %40, ptr %0, align 8, !tbaa !47
  store i32 0, ptr %13, align 8, !tbaa !41
  br label %41

41:                                               ; preds = %26, %38, %21
  %42 = phi ptr [ %24, %21 ], [ %35, %38 ], [ %35, %26 ]
  %43 = phi i32 [ %25, %21 ], [ %36, %38 ], [ %36, %26 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %14, !prof !57, !llvm.loop !58

45:                                               ; preds = %41, %10
  tail call void @free(ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_compress(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !61 !PGOFuncName !62 {
  %3 = alloca [8 x i64], align 16
  %4 = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %4) #15
  %5 = getelementptr i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa !48
  br label %6

6:                                                ; preds = %2, %22
  %7 = phi i64 [ 0, %2 ], [ %24, %22 ]
  %8 = shl nuw nsw i64 %7, 3
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %12 = phi i64 [ 0, %6 ], [ %19, %10 ]
  %13 = getelementptr inbounds i8, ptr %9, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !63
  %15 = zext i8 %14 to i64
  %16 = shl i64 %11, 3
  %17 = sub nuw nsw i64 56, %16
  %18 = shl nuw i64 %15, %17
  %19 = or i64 %18, %12
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %10, !prof !64, !llvm.loop !65

22:                                               ; preds = %10
  %23 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %7
  store i64 %19, ptr %23, align 8, !tbaa !48
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, 16
  br i1 %25, label %42, label %6, !prof !66, !llvm.loop !67

26:                                               ; preds = %42
  %27 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 7
  %28 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 4
  %29 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 5
  %30 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 6
  %31 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 1
  %32 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 2
  %33 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 3
  %34 = load i64, ptr %27, align 8, !tbaa !48
  %35 = load i64, ptr %28, align 16, !tbaa !48
  %36 = load i64, ptr %29, align 8, !tbaa !48
  %37 = load i64, ptr %30, align 16, !tbaa !48
  %38 = load i64, ptr %3, align 16, !tbaa !48
  %39 = load i64, ptr %31, align 8, !tbaa !48
  %40 = load i64, ptr %32, align 16, !tbaa !48
  %41 = load i64, ptr %33, align 8, !tbaa !48
  br label %73

42:                                               ; preds = %22, %42
  %43 = phi i64 [ %70, %42 ], [ 16, %22 ]
  %44 = add nsw i64 %43, -2
  %45 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 45)
  %48 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 3)
  %49 = xor i64 %47, %48
  %50 = lshr i64 %46, 6
  %51 = xor i64 %49, %50
  %52 = add nsw i64 %43, -7
  %53 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !48
  %55 = add i64 %51, %54
  %56 = add nsw i64 %43, -15
  %57 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !48
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 63)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 56)
  %61 = xor i64 %59, %60
  %62 = lshr i64 %58, 7
  %63 = xor i64 %61, %62
  %64 = add nsw i64 %43, -16
  %65 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !48
  %67 = add i64 %55, %66
  %68 = add i64 %67, %63
  %69 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %43
  store i64 %68, ptr %69, align 8, !tbaa !48
  %70 = add nuw nsw i64 %43, 1
  %71 = icmp eq i64 %70, 80
  br i1 %71, label %26, label %42, !prof !68, !llvm.loop !69

72:                                               ; preds = %73
  store i64 %225, ptr %27, align 8, !tbaa !48
  store i64 %312, ptr %28, align 16, !tbaa !48
  store i64 %283, ptr %29, align 8, !tbaa !48
  store i64 %254, ptr %30, align 16, !tbaa !48
  store i64 %313, ptr %3, align 16, !tbaa !48
  store i64 %284, ptr %31, align 8, !tbaa !48
  store i64 %255, ptr %32, align 16, !tbaa !48
  store i64 %226, ptr %33, align 8, !tbaa !48
  br label %317

73:                                               ; preds = %26, %73
  %74 = phi i64 [ 0, %26 ], [ %314, %73 ]
  %75 = phi i64 [ %34, %26 ], [ %225, %73 ]
  %76 = phi i64 [ %35, %26 ], [ %312, %73 ]
  %77 = phi i64 [ %36, %26 ], [ %283, %73 ]
  %78 = phi i64 [ %37, %26 ], [ %254, %73 ]
  %79 = phi i64 [ %38, %26 ], [ %313, %73 ]
  %80 = phi i64 [ %39, %26 ], [ %284, %73 ]
  %81 = phi i64 [ %40, %26 ], [ %255, %73 ]
  %82 = phi i64 [ %41, %26 ], [ %226, %73 ]
  %83 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 50)
  %84 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 46)
  %85 = xor i64 %83, %84
  %86 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 23)
  %87 = xor i64 %85, %86
  %88 = add i64 %87, %75
  %89 = xor i64 %78, %77
  %90 = and i64 %89, %76
  %91 = xor i64 %90, %78
  %92 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %74
  %93 = load i64, ptr %92, align 16, !tbaa !48
  %94 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %74
  %95 = load i64, ptr %94, align 16, !tbaa !48
  %96 = add i64 %88, %93
  %97 = add i64 %96, %95
  %98 = add i64 %97, %91
  %99 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 36)
  %100 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 30)
  %101 = xor i64 %99, %100
  %102 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 25)
  %103 = xor i64 %101, %102
  %104 = or i64 %80, %79
  %105 = and i64 %104, %81
  %106 = and i64 %80, %79
  %107 = or i64 %105, %106
  %108 = add i64 %82, %98
  %109 = add i64 %98, %103
  %110 = add i64 %109, %107
  %111 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 50)
  %112 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 46)
  %113 = xor i64 %111, %112
  %114 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 23)
  %115 = xor i64 %113, %114
  %116 = xor i64 %77, %76
  %117 = and i64 %108, %116
  %118 = xor i64 %117, %77
  %119 = or disjoint i64 %74, 1
  %120 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !48
  %122 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %119
  %123 = load i64, ptr %122, align 8, !tbaa !48
  %124 = add i64 %118, %78
  %125 = add i64 %124, %121
  %126 = add i64 %125, %115
  %127 = add i64 %126, %123
  %128 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 36)
  %129 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 30)
  %130 = xor i64 %128, %129
  %131 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 25)
  %132 = xor i64 %130, %131
  %133 = or i64 %110, %79
  %134 = and i64 %133, %80
  %135 = and i64 %110, %79
  %136 = or i64 %134, %135
  %137 = add i64 %132, %136
  %138 = add i64 %127, %81
  %139 = add i64 %137, %127
  %140 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 50)
  %141 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 46)
  %142 = xor i64 %140, %141
  %143 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 23)
  %144 = xor i64 %142, %143
  %145 = xor i64 %108, %76
  %146 = and i64 %138, %145
  %147 = xor i64 %146, %76
  %148 = or disjoint i64 %74, 2
  %149 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %148
  %150 = load i64, ptr %149, align 16, !tbaa !48
  %151 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %148
  %152 = load i64, ptr %151, align 16, !tbaa !48
  %153 = add i64 %150, %77
  %154 = add i64 %153, %152
  %155 = add i64 %154, %147
  %156 = add i64 %155, %144
  %157 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 36)
  %158 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 30)
  %159 = xor i64 %157, %158
  %160 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 25)
  %161 = xor i64 %159, %160
  %162 = or i64 %139, %110
  %163 = and i64 %162, %79
  %164 = and i64 %139, %110
  %165 = or i64 %163, %164
  %166 = add i64 %161, %165
  %167 = add i64 %156, %80
  %168 = add i64 %166, %156
  %169 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 50)
  %170 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 46)
  %171 = xor i64 %169, %170
  %172 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 23)
  %173 = xor i64 %171, %172
  %174 = xor i64 %138, %108
  %175 = and i64 %167, %174
  %176 = xor i64 %175, %108
  %177 = or disjoint i64 %74, 3
  %178 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !48
  %180 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %177
  %181 = load i64, ptr %180, align 8, !tbaa !48
  %182 = add i64 %179, %76
  %183 = add i64 %182, %181
  %184 = add i64 %183, %176
  %185 = add i64 %184, %173
  %186 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 36)
  %187 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 30)
  %188 = xor i64 %186, %187
  %189 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 25)
  %190 = xor i64 %188, %189
  %191 = or i64 %168, %139
  %192 = and i64 %191, %110
  %193 = and i64 %168, %139
  %194 = or i64 %192, %193
  %195 = add i64 %190, %194
  %196 = add i64 %185, %79
  %197 = add i64 %195, %185
  %198 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 50)
  %199 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 46)
  %200 = xor i64 %198, %199
  %201 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 23)
  %202 = xor i64 %200, %201
  %203 = xor i64 %167, %138
  %204 = and i64 %196, %203
  %205 = xor i64 %204, %138
  %206 = or disjoint i64 %74, 4
  %207 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %206
  %208 = load i64, ptr %207, align 16, !tbaa !48
  %209 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %206
  %210 = load i64, ptr %209, align 16, !tbaa !48
  %211 = add i64 %208, %108
  %212 = add i64 %211, %210
  %213 = add i64 %212, %205
  %214 = add i64 %213, %202
  %215 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 36)
  %216 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 30)
  %217 = xor i64 %215, %216
  %218 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 25)
  %219 = xor i64 %217, %218
  %220 = or i64 %197, %168
  %221 = and i64 %220, %139
  %222 = and i64 %197, %168
  %223 = or i64 %221, %222
  %224 = add i64 %219, %223
  %225 = add i64 %214, %110
  %226 = add i64 %224, %214
  %227 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 50)
  %228 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 46)
  %229 = xor i64 %227, %228
  %230 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 23)
  %231 = xor i64 %229, %230
  %232 = xor i64 %196, %167
  %233 = and i64 %225, %232
  %234 = xor i64 %233, %167
  %235 = or disjoint i64 %74, 5
  %236 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !48
  %238 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %235
  %239 = load i64, ptr %238, align 8, !tbaa !48
  %240 = add i64 %237, %138
  %241 = add i64 %240, %239
  %242 = add i64 %241, %234
  %243 = add i64 %242, %231
  %244 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 36)
  %245 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 30)
  %246 = xor i64 %244, %245
  %247 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 25)
  %248 = xor i64 %246, %247
  %249 = or i64 %226, %197
  %250 = and i64 %249, %168
  %251 = and i64 %226, %197
  %252 = or i64 %250, %251
  %253 = add i64 %248, %252
  %254 = add i64 %243, %139
  %255 = add i64 %253, %243
  %256 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 50)
  %257 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 46)
  %258 = xor i64 %256, %257
  %259 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 23)
  %260 = xor i64 %258, %259
  %261 = xor i64 %225, %196
  %262 = and i64 %254, %261
  %263 = xor i64 %262, %196
  %264 = or disjoint i64 %74, 6
  %265 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %264
  %266 = load i64, ptr %265, align 16, !tbaa !48
  %267 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %264
  %268 = load i64, ptr %267, align 16, !tbaa !48
  %269 = add i64 %266, %167
  %270 = add i64 %269, %268
  %271 = add i64 %270, %263
  %272 = add i64 %271, %260
  %273 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 36)
  %274 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 30)
  %275 = xor i64 %273, %274
  %276 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 25)
  %277 = xor i64 %275, %276
  %278 = or i64 %255, %226
  %279 = and i64 %278, %197
  %280 = and i64 %255, %226
  %281 = or i64 %279, %280
  %282 = add i64 %277, %281
  %283 = add i64 %272, %168
  %284 = add i64 %282, %272
  %285 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 50)
  %286 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 46)
  %287 = xor i64 %285, %286
  %288 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 23)
  %289 = xor i64 %287, %288
  %290 = xor i64 %254, %225
  %291 = and i64 %283, %290
  %292 = xor i64 %291, %225
  %293 = or disjoint i64 %74, 7
  %294 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !48
  %296 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %293
  %297 = load i64, ptr %296, align 8, !tbaa !48
  %298 = add i64 %295, %196
  %299 = add i64 %298, %297
  %300 = add i64 %299, %292
  %301 = add i64 %300, %289
  %302 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 36)
  %303 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 30)
  %304 = xor i64 %302, %303
  %305 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 25)
  %306 = xor i64 %304, %305
  %307 = or i64 %284, %255
  %308 = and i64 %307, %226
  %309 = and i64 %284, %255
  %310 = or i64 %308, %309
  %311 = add i64 %306, %310
  %312 = add i64 %301, %197
  %313 = add i64 %311, %301
  %314 = add nuw nsw i64 %74, 8
  %315 = icmp ult i64 %74, 72
  br i1 %315, label %73, label %72, !prof !70, !llvm.loop !71

316:                                              ; preds = %317
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void

317:                                              ; preds = %72, %317
  %318 = phi i64 [ 0, %72 ], [ %324, %317 ]
  %319 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !48
  %321 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 %318
  %322 = load i64, ptr %321, align 8, !tbaa !48
  %323 = add i64 %322, %320
  store i64 %323, ptr %319, align 8, !tbaa !48
  %324 = add nuw nsw i64 %318, 1
  %325 = icmp eq i64 %324, 8
  br i1 %325, label %316, label %317, !prof !72, !llvm.loop !73
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_done(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !prof !40 {
  %3 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = load i64, ptr %0, align 8, !tbaa !47
  %8 = add i64 %6, %7
  store i64 %8, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3
  %10 = add i32 %4, 1
  store i32 %10, ptr %3, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3, i64 %5
  store i8 -128, ptr %11, align 1, !tbaa !63
  %12 = icmp ugt i32 %10, 112
  br i1 %12, label %13, label %26, !prof !74

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 8, !tbaa !41
  %15 = icmp ult i32 %14, 128
  br i1 %15, label %16, label %25, !prof !75

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  %18 = getelementptr i8, ptr %0, i64 %17
  %19 = getelementptr i8, ptr %18, i64 76
  %20 = sub nuw nsw i32 128, %14
  %21 = zext nneg i32 %20 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %19, i8 0, i64 %21, i1 false), !tbaa !63
  %22 = xor i32 %14, 127
  %23 = add nuw nsw i32 %14, %22
  %24 = add nuw nsw i32 %23, 1
  store i32 %24, ptr %3, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %16, %13
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef nonnull %9)
  store i32 0, ptr %3, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, ptr %3, align 8, !tbaa !41
  %28 = icmp ult i32 %27, 120
  br i1 %28, label %29, label %36, !prof !76

29:                                               ; preds = %26
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr i8, ptr %0, i64 %30
  %32 = getelementptr i8, ptr %31, i64 76
  %33 = sub nsw i32 119, %27
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %34, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %32, i8 0, i64 %35, i1 false), !tbaa !63
  store i32 120, ptr %3, align 8, !tbaa !41
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i64, ptr %0, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3, i64 120
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %46, %39 ]
  %41 = shl i64 %40, 3
  %42 = sub nuw nsw i64 56, %41
  %43 = lshr i64 %37, %42
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %38, i64 %40
  store i8 %44, ptr %45, align 1, !tbaa !63
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %39, !prof !77, !llvm.loop !78

48:                                               ; preds = %39
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef nonnull %9)
  br label %50

49:                                               ; preds = %65
  ret void

50:                                               ; preds = %48, %65
  %51 = phi i64 [ 0, %48 ], [ %66, %65 ]
  %52 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !48
  %54 = shl nuw nsw i64 %51, 3
  %55 = getelementptr inbounds i8, ptr %1, i64 %54
  br label %56

56:                                               ; preds = %50, %56
  %57 = phi i64 [ 0, %50 ], [ %63, %56 ]
  %58 = shl i64 %57, 3
  %59 = sub nuw nsw i64 56, %58
  %60 = lshr i64 %53, %59
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds i8, ptr %55, i64 %57
  store i8 %61, ptr %62, align 1, !tbaa !63
  %63 = add nuw nsw i64 %57, 1
  %64 = icmp eq i64 %63, 8
  br i1 %64, label %65, label %56, !prof !79, !llvm.loop !78

65:                                               ; preds = %56
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %49, label %50, !prof !77, !llvm.loop !80
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @sha_process, ptr @malloc, i64 3}
!36 = !{ptr @sha_process, ptr @sha_compress, i64 4516487}
!37 = !{ptr @sha_process, ptr @free, i64 3}
!38 = !{ptr @sha_done, ptr @sha_compress, i64 4}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 3}
!41 = !{!42, !46, i64 72}
!42 = !{!"", !43, i64 0, !44, i64 8, !46, i64 72, !44, i64 76}
!43 = !{!"long", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!42, !43, i64 0}
!48 = !{!43, !43, i64 0}
!49 = !{!"branch_weights", i32 0, i32 3}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !44, i64 0}
!52 = !{!"VP", i32 1, i64 3, i64 513, i64 3}
!53 = !{!"branch_weights", i32 1, i32 191}
!54 = !{!"branch_weights", i32 4516152, i32 1}
!55 = !{!"VP", i32 1, i64 1, i64 65, i64 1}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{!"branch_weights", i32 191, i32 289033601}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"function_entry_count", i64 4516156}
!62 = !{!"sha-2/sha512.c;sha_compress"}
!63 = !{!44, !44, i64 0}
!64 = !{!"branch_weights", i32 72258496, i32 505809472}
!65 = distinct !{!65, !59, !60}
!66 = !{!"branch_weights", i32 4516156, i32 67742340}
!67 = distinct !{!67, !59, !60}
!68 = !{!"branch_weights", i32 4516156, i32 284517828}
!69 = distinct !{!69, !59, !60}
!70 = !{!"branch_weights", i32 40645404, i32 4516156}
!71 = distinct !{!71, !59, !60}
!72 = !{!"branch_weights", i32 4516156, i32 31613092}
!73 = distinct !{!73, !59, !60}
!74 = !{!"branch_weights", i32 1, i32 2}
!75 = !{!"branch_weights", i32 127, i32 1}
!76 = !{!"branch_weights", i32 191, i32 1}
!77 = !{!"branch_weights", i32 3, i32 21}
!78 = distinct !{!78, !59, !60}
!79 = !{!"branch_weights", i32 24, i32 168}
!80 = distinct !{!80, !59, !60}
