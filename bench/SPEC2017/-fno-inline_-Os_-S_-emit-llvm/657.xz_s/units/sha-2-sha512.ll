; ModuleID = 'sha-2/sha512.c'
source_filename = "sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sha-2/sha512.c\00", align 1
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !6
  store i64 0, ptr %0, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1
  store i64 7640891576956012808, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 1
  store i64 -4942790177534073029, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 2
  store i64 4354685564936845355, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 3
  store i64 -6534734903238641935, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 4
  store i64 5840696475078001361, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 5
  store i64 -7276294671716946913, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 6
  store i64 2270897969802886507, ptr %9, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 7
  store i64 6620516959819538809, ptr %10, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sha_process(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc ptr @sortof_strdup(ptr noundef %1, i32 noundef %2) #14
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %6, %35
  %10 = phi i32 [ %2, %6 ], [ %37, %35 ]
  %11 = phi ptr [ %4, %6 ], [ %36, %35 ]
  %12 = load i32, ptr %7, align 8, !tbaa !6
  %13 = icmp eq i32 %12, 0
  %14 = icmp ugt i32 %10, 127
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef %11) #14
  %17 = load i64, ptr %0, align 8, !tbaa !12
  %18 = add i64 %17, 1024
  store i64 %18, ptr %0, align 8, !tbaa !12
  %19 = getelementptr inbounds i8, ptr %11, i64 128
  %20 = add i32 %10, -128
  br label %35

21:                                               ; preds = %9
  %22 = sub i32 128, %12
  %23 = tail call fastcc i32 @sha_min(i32 noundef %10, i32 noundef %22) #14
  %24 = zext i32 %12 to i64
  %25 = getelementptr inbounds i8, ptr %8, i64 %24
  %26 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %11, i64 %26, i1 false)
  %27 = load i32, ptr %7, align 8, !tbaa !6
  %28 = add i32 %27, %23
  store i32 %28, ptr %7, align 8, !tbaa !6
  %29 = getelementptr inbounds i8, ptr %11, i64 %26
  %30 = sub i32 %10, %23
  %31 = icmp eq i32 %28, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  %33 = load i64, ptr %0, align 8, !tbaa !12
  %34 = add i64 %33, 1024
  store i64 %34, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %7, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %21, %32, %16
  %36 = phi ptr [ %19, %16 ], [ %29, %32 ], [ %29, %21 ]
  %37 = phi i32 [ %20, %16 ], [ %30, %32 ], [ %30, %21 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %9, !llvm.loop !14

39:                                               ; preds = %35, %3
  tail call void @free(ptr noundef %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @sortof_strdup(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !16
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i64 noundef %3, ptr noundef nonnull @.str.1, i32 noundef 129) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

9:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %0, i64 %3, i1 false)
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @sha_compress(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [8 x i64], align 16
  %4 = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %4) #19
  %5 = getelementptr i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa !13
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %8 = shl nuw nsw i64 %7, 3
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = tail call fastcc i64 @load64(ptr noundef %9) #14
  %11 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %7
  store i64 %10, ptr %11, align 8, !tbaa !13
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %14, label %6, !llvm.loop !18

14:                                               ; preds = %6
  %15 = load i64, ptr %4, align 16, !tbaa !13
  br label %32

16:                                               ; preds = %32
  %17 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 7
  %18 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 4
  %19 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 5
  %20 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 6
  %21 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 1
  %22 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 2
  %23 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 3
  %24 = load i64, ptr %17, align 8, !tbaa !13
  %25 = load i64, ptr %18, align 16, !tbaa !13
  %26 = load i64, ptr %19, align 8, !tbaa !13
  %27 = load i64, ptr %20, align 16, !tbaa !13
  %28 = load i64, ptr %3, align 16, !tbaa !13
  %29 = load i64, ptr %21, align 8, !tbaa !13
  %30 = load i64, ptr %22, align 16, !tbaa !13
  %31 = load i64, ptr %23, align 8, !tbaa !13
  br label %62

32:                                               ; preds = %14, %32
  %33 = phi i64 [ %15, %14 ], [ %45, %32 ]
  %34 = phi i64 [ 16, %14 ], [ %50, %32 ]
  %35 = add nsw i64 %34, -2
  %36 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !13
  %38 = tail call fastcc i64 @Gamma1(i64 noundef %37) #14
  %39 = add nsw i64 %34, -7
  %40 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !13
  %42 = add i64 %41, %38
  %43 = add nsw i64 %34, -15
  %44 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !13
  %46 = tail call fastcc i64 @Gamma0(i64 noundef %45) #14
  %47 = add i64 %42, %46
  %48 = add i64 %47, %33
  %49 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %34
  store i64 %48, ptr %49, align 8, !tbaa !13
  %50 = add nuw nsw i64 %34, 1
  %51 = icmp eq i64 %50, 80
  br i1 %51, label %16, label %32, !llvm.loop !19

52:                                               ; preds = %62
  store i64 %148, ptr %17, align 8, !tbaa !13
  store i64 %196, ptr %18, align 16, !tbaa !13
  store i64 %180, ptr %19, align 8, !tbaa !13
  store i64 %164, ptr %20, align 16, !tbaa !13
  store i64 %198, ptr %3, align 16, !tbaa !13
  store i64 %182, ptr %21, align 8, !tbaa !13
  store i64 %166, ptr %22, align 16, !tbaa !13
  store i64 %150, ptr %23, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %53, %52
  %54 = phi i64 [ 0, %52 ], [ %60, %53 ]
  %55 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 %54
  %56 = load <2 x i64>, ptr %55, align 8, !tbaa !13
  %57 = getelementptr inbounds [8 x i64], ptr %3, i64 0, i64 %54
  %58 = load <2 x i64>, ptr %57, align 16, !tbaa !13
  %59 = add <2 x i64> %58, %56
  store <2 x i64> %59, ptr %55, align 8, !tbaa !13
  %60 = add nuw i64 %54, 2
  %61 = icmp eq i64 %60, 8
  br i1 %61, label %201, label %53, !llvm.loop !20

62:                                               ; preds = %16, %62
  %63 = phi i64 [ 0, %16 ], [ %199, %62 ]
  %64 = phi i64 [ %24, %16 ], [ %148, %62 ]
  %65 = phi i64 [ %25, %16 ], [ %196, %62 ]
  %66 = phi i64 [ %26, %16 ], [ %180, %62 ]
  %67 = phi i64 [ %27, %16 ], [ %164, %62 ]
  %68 = phi i64 [ %28, %16 ], [ %198, %62 ]
  %69 = phi i64 [ %29, %16 ], [ %182, %62 ]
  %70 = phi i64 [ %30, %16 ], [ %166, %62 ]
  %71 = phi i64 [ %31, %16 ], [ %150, %62 ]
  %72 = tail call fastcc i64 @Sigma1(i64 noundef %65) #14
  %73 = add i64 %72, %64
  %74 = tail call fastcc i64 @Ch(i64 noundef %65, i64 noundef %66, i64 noundef %67) #14
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %63
  %77 = load i64, ptr %76, align 16, !tbaa !13
  %78 = add i64 %75, %77
  %79 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %63
  %80 = load i64, ptr %79, align 16, !tbaa !13
  %81 = add i64 %78, %80
  %82 = tail call fastcc i64 @Sigma0(i64 noundef %68) #14
  %83 = tail call fastcc i64 @Maj(i64 noundef %68, i64 noundef %69, i64 noundef %70) #14
  %84 = add i64 %71, %81
  %85 = add i64 %82, %81
  %86 = add i64 %85, %83
  %87 = tail call fastcc i64 @Sigma1(i64 noundef %84) #14
  %88 = add i64 %87, %67
  %89 = tail call fastcc i64 @Ch(i64 noundef %84, i64 noundef %65, i64 noundef %66) #14
  %90 = add i64 %88, %89
  %91 = or disjoint i64 %63, 1
  %92 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !13
  %94 = add i64 %90, %93
  %95 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %91
  %96 = load i64, ptr %95, align 8, !tbaa !13
  %97 = add i64 %94, %96
  %98 = tail call fastcc i64 @Sigma0(i64 noundef %86) #14
  %99 = tail call fastcc i64 @Maj(i64 noundef %86, i64 noundef %68, i64 noundef %69) #14
  %100 = add i64 %97, %70
  %101 = add i64 %97, %98
  %102 = add i64 %101, %99
  %103 = tail call fastcc i64 @Sigma1(i64 noundef %100) #14
  %104 = add i64 %103, %66
  %105 = tail call fastcc i64 @Ch(i64 noundef %100, i64 noundef %84, i64 noundef %65) #14
  %106 = add i64 %104, %105
  %107 = or disjoint i64 %63, 2
  %108 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %107
  %109 = load i64, ptr %108, align 16, !tbaa !13
  %110 = add i64 %106, %109
  %111 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %107
  %112 = load i64, ptr %111, align 16, !tbaa !13
  %113 = add i64 %110, %112
  %114 = tail call fastcc i64 @Sigma0(i64 noundef %102) #14
  %115 = tail call fastcc i64 @Maj(i64 noundef %102, i64 noundef %86, i64 noundef %68) #14
  %116 = add i64 %113, %69
  %117 = add i64 %113, %114
  %118 = add i64 %117, %115
  %119 = tail call fastcc i64 @Sigma1(i64 noundef %116) #14
  %120 = add i64 %119, %65
  %121 = tail call fastcc i64 @Ch(i64 noundef %116, i64 noundef %100, i64 noundef %84) #14
  %122 = add i64 %120, %121
  %123 = or disjoint i64 %63, 3
  %124 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !13
  %126 = add i64 %122, %125
  %127 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %123
  %128 = load i64, ptr %127, align 8, !tbaa !13
  %129 = add i64 %126, %128
  %130 = tail call fastcc i64 @Sigma0(i64 noundef %118) #14
  %131 = tail call fastcc i64 @Maj(i64 noundef %118, i64 noundef %102, i64 noundef %86) #14
  %132 = add i64 %129, %68
  %133 = add i64 %129, %130
  %134 = add i64 %133, %131
  %135 = tail call fastcc i64 @Sigma1(i64 noundef %132) #14
  %136 = add i64 %135, %84
  %137 = tail call fastcc i64 @Ch(i64 noundef %132, i64 noundef %116, i64 noundef %100) #14
  %138 = add i64 %136, %137
  %139 = or disjoint i64 %63, 4
  %140 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %139
  %141 = load i64, ptr %140, align 16, !tbaa !13
  %142 = add i64 %138, %141
  %143 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %139
  %144 = load i64, ptr %143, align 16, !tbaa !13
  %145 = add i64 %142, %144
  %146 = tail call fastcc i64 @Sigma0(i64 noundef %134) #14
  %147 = tail call fastcc i64 @Maj(i64 noundef %134, i64 noundef %118, i64 noundef %102) #14
  %148 = add i64 %145, %86
  %149 = add i64 %145, %146
  %150 = add i64 %149, %147
  %151 = tail call fastcc i64 @Sigma1(i64 noundef %148) #14
  %152 = add i64 %151, %100
  %153 = tail call fastcc i64 @Ch(i64 noundef %148, i64 noundef %132, i64 noundef %116) #14
  %154 = add i64 %152, %153
  %155 = or disjoint i64 %63, 5
  %156 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !13
  %158 = add i64 %154, %157
  %159 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %155
  %160 = load i64, ptr %159, align 8, !tbaa !13
  %161 = add i64 %158, %160
  %162 = tail call fastcc i64 @Sigma0(i64 noundef %150) #14
  %163 = tail call fastcc i64 @Maj(i64 noundef %150, i64 noundef %134, i64 noundef %118) #14
  %164 = add i64 %161, %102
  %165 = add i64 %161, %162
  %166 = add i64 %165, %163
  %167 = tail call fastcc i64 @Sigma1(i64 noundef %164) #14
  %168 = add i64 %167, %116
  %169 = tail call fastcc i64 @Ch(i64 noundef %164, i64 noundef %148, i64 noundef %132) #14
  %170 = add i64 %168, %169
  %171 = or disjoint i64 %63, 6
  %172 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %171
  %173 = load i64, ptr %172, align 16, !tbaa !13
  %174 = add i64 %170, %173
  %175 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %171
  %176 = load i64, ptr %175, align 16, !tbaa !13
  %177 = add i64 %174, %176
  %178 = tail call fastcc i64 @Sigma0(i64 noundef %166) #14
  %179 = tail call fastcc i64 @Maj(i64 noundef %166, i64 noundef %150, i64 noundef %134) #14
  %180 = add i64 %177, %118
  %181 = add i64 %177, %178
  %182 = add i64 %181, %179
  %183 = tail call fastcc i64 @Sigma1(i64 noundef %180) #14
  %184 = add i64 %183, %132
  %185 = tail call fastcc i64 @Ch(i64 noundef %180, i64 noundef %164, i64 noundef %148) #14
  %186 = add i64 %184, %185
  %187 = or disjoint i64 %63, 7
  %188 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !13
  %190 = add i64 %186, %189
  %191 = getelementptr inbounds [80 x i64], ptr %4, i64 0, i64 %187
  %192 = load i64, ptr %191, align 8, !tbaa !13
  %193 = add i64 %190, %192
  %194 = tail call fastcc i64 @Sigma0(i64 noundef %182) #14
  %195 = tail call fastcc i64 @Maj(i64 noundef %182, i64 noundef %166, i64 noundef %150) #14
  %196 = add i64 %193, %134
  %197 = add i64 %193, %194
  %198 = add i64 %197, %195
  %199 = add nuw nsw i64 %63, 8
  %200 = icmp ult i64 %63, 72
  br i1 %200, label %62, label %52, !llvm.loop !23

201:                                              ; preds = %53
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @sha_min(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @llvm.umin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @load64(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  br label %3

2:                                                ; preds = %3
  ret i64 %12

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %13, %3 ]
  %5 = phi i64 [ 0, %1 ], [ %12, %3 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %4
  %7 = load i8, ptr %6, align 1, !tbaa !24
  %8 = zext i8 %7 to i64
  %9 = shl i64 %4, 3
  %10 = sub nuw nsw i64 56, %9
  %11 = shl nuw i64 %8, %10
  %12 = or i64 %11, %5
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %2, label %3, !llvm.loop !25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @Gamma1(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 19) #14
  %3 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 61) #14
  %4 = xor i64 %3, %2
  %5 = tail call fastcc i64 @Sh(i64 noundef %0, i64 noundef 6) #14, !range !26
  %6 = xor i64 %4, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @Gamma0(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 1) #14
  %3 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 8) #14
  %4 = xor i64 %3, %2
  %5 = tail call fastcc i64 @Sh(i64 noundef %0, i64 noundef 7) #14, !range !26
  %6 = xor i64 %4, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @Sigma1(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 14) #14
  %3 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 18) #14
  %4 = xor i64 %3, %2
  %5 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 41) #14
  %6 = xor i64 %4, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @Ch(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = xor i64 %2, %1
  %5 = and i64 %4, %0
  %6 = xor i64 %5, %2
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @Sigma0(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 28) #14
  %3 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 34) #14
  %4 = xor i64 %3, %2
  %5 = tail call fastcc i64 @Rot(i64 noundef %0, i64 noundef 39) #14
  %6 = xor i64 %4, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @Maj(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = or i64 %1, %0
  %5 = and i64 %4, %2
  %6 = and i64 %1, %0
  %7 = or i64 %5, %6
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @Rot(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = tail call i64 @llvm.fshr.i64(i64 %0, i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @Sh(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = lshr i64 %0, %1
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @sha_done(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = load i64, ptr %0, align 8, !tbaa !12
  %8 = add i64 %6, %7
  store i64 %8, ptr %0, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3
  %10 = add i32 %4, 1
  store i32 %10, ptr %3, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3, i64 %5
  store i8 -128, ptr %11, align 1, !tbaa !24
  %12 = icmp ugt i32 %10, 112
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = icmp ult i32 %10, 128
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i64 %5
  %17 = getelementptr i8, ptr %16, i64 77
  %18 = sub nuw nsw i32 126, %4
  %19 = zext nneg i32 %18 to i64
  %20 = add nuw nsw i64 %19, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %17, i8 0, i64 %20, i1 false), !tbaa !24
  store i32 128, ptr %3, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %15, %13
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef nonnull %9) #14
  br label %22

22:                                               ; preds = %21, %2
  %23 = phi i32 [ 0, %21 ], [ %10, %2 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr i8, ptr %0, i64 %24
  %26 = getelementptr i8, ptr %25, i64 76
  %27 = sub nuw nsw i32 119, %23
  %28 = zext nneg i32 %27 to i64
  %29 = add nuw nsw i64 %28, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %26, i8 0, i64 %29, i1 false), !tbaa !24
  store i32 120, ptr %3, align 8, !tbaa !6
  %30 = load i64, ptr %0, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 3, i64 120
  tail call fastcc void @store64(i64 noundef %30, ptr noundef nonnull %31) #14
  tail call fastcc void @sha_compress(ptr noundef nonnull %0, ptr noundef nonnull %9) #14
  br label %33

32:                                               ; preds = %33
  ret void

33:                                               ; preds = %22, %33
  %34 = phi i64 [ 0, %22 ], [ %39, %33 ]
  %35 = getelementptr inbounds %struct.sha512_state, ptr %0, i64 0, i32 1, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !13
  %37 = shl nuw nsw i64 %34, 3
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  tail call fastcc void @store64(i64 noundef %36, ptr noundef %38) #14
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, 8
  br i1 %40, label %32, label %33, !llvm.loop !27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @store64(i64 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 {
  %3 = insertelement <8 x i64> poison, i64 %0, i64 0
  %4 = shufflevector <8 x i64> %3, <8 x i64> poison, <8 x i32> zeroinitializer
  %5 = lshr <8 x i64> %4, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %6 = trunc <8 x i64> %5 to <8 x i8>
  store <8 x i8> %6, ptr %1, align 1, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { cold optsize }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 72}
!7 = !{!"", !8, i64 0, !9, i64 8, !11, i64 72, !9, i64 76}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !15}
!24 = !{!9, !9, i64 0}
!25 = distinct !{!25, !15}
!26 = !{i64 0, i64 288230376151711744}
!27 = distinct !{!27, !15}
