; ModuleID = 'blender/source/blender/imbuf/intern/targa.c'
source_filename = "blender/source/blender/imbuf/intern/targa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"targa cmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"decodetarga: incomplete file, %.1f%% missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"decodetarga: count would overwrite %d pixels\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"decodetarga: incomplete file, all pixels written\00", align 1
@switch.table.imb_savetarga = private unnamed_addr constant [4 x ptr] [ptr @tga_out1, ptr @tga_out2, ptr @tga_out3, ptr @tga_out4], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @imb_savetarga(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = add i8 %6, 7
  %8 = and i8 %7, -8
  %9 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 16
  store i8 %8, ptr %9, align 16, !tbaa !43
  %10 = icmp ugt i8 %6, 8
  %11 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 2
  %12 = select i1 %10, i8 10, i8 11
  store i8 %12, ptr %11, align 2, !tbaa !43
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 268435457
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 2
  %18 = load i8, ptr %17, align 2, !tbaa !43
  %19 = and i8 %18, -9
  store i8 %19, ptr %17, align 2, !tbaa !43
  br label %20

20:                                               ; preds = %16, %3
  %21 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 8
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  store i32 0, ptr %21, align 8
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 12
  store i8 %24, ptr %25, align 4, !tbaa !43
  %26 = lshr i32 %23, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 13
  store i8 %27, ptr %28, align 1, !tbaa !43
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 14
  store i8 %31, ptr %32, align 2, !tbaa !43
  %33 = lshr i32 %30, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 15
  store i8 %34, ptr %35, align 1, !tbaa !43
  %36 = icmp eq i8 %6, 32
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 17
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = or i8 %39, 8
  store i8 %40, ptr %38, align 1, !tbaa !43
  br label %41

41:                                               ; preds = %37, %20
  %42 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %162, label %44

44:                                               ; preds = %41
  %45 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 18, ptr noundef nonnull %42)
  %46 = icmp eq i64 %45, 18
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @fclose(ptr noundef nonnull %42)
  br label %162

49:                                               ; preds = %44
  %50 = load i32, ptr %13, align 8, !tbaa !44
  %51 = icmp eq i32 %50, 268435457
  br i1 %51, label %52, label %146

52:                                               ; preds = %49
  %53 = icmp eq ptr %0, null
  br i1 %53, label %159, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  br i1 %57, label %159, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %22, align 8, !tbaa !45
  %60 = load i32, ptr %29, align 4, !tbaa !46
  %61 = mul nsw i32 %60, %59
  %62 = load i8, ptr %5, align 8, !tbaa !34
  %63 = icmp ult i8 %62, 9
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = icmp sgt i32 %61, 0
  br i1 %65, label %66, label %159

66:                                               ; preds = %64, %73
  %67 = phi ptr [ %75, %73 ], [ %56, %64 ]
  %68 = phi i32 [ %74, %73 ], [ %61, %64 ]
  %69 = load i8, ptr %67, align 1, !tbaa !43
  %70 = zext i8 %69 to i32
  %71 = tail call i32 @putc(i32 noundef %70, ptr noundef nonnull %42)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %159, label %73

73:                                               ; preds = %66
  %74 = add nsw i32 %68, -1
  %75 = getelementptr inbounds i8, ptr %67, i64 4
  %76 = icmp sgt i32 %68, 1
  br i1 %76, label %66, label %159, !llvm.loop !48

77:                                               ; preds = %58
  %78 = icmp ult i8 %62, 17
  br i1 %78, label %79, label %96

79:                                               ; preds = %77
  %80 = icmp sgt i32 %61, 0
  br i1 %80, label %81, label %159

81:                                               ; preds = %79, %92
  %82 = phi ptr [ %94, %92 ], [ %56, %79 ]
  %83 = phi i32 [ %93, %92 ], [ %61, %79 ]
  %84 = load i8, ptr %82, align 1, !tbaa !43
  %85 = zext i8 %84 to i32
  %86 = tail call i32 @putc(i32 noundef %85, ptr noundef nonnull %42)
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !43
  %89 = zext i8 %88 to i32
  %90 = tail call i32 @putc(i32 noundef %89, ptr noundef nonnull %42)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %159, label %92

92:                                               ; preds = %81
  %93 = add nsw i32 %83, -1
  %94 = getelementptr inbounds i8, ptr %82, i64 4
  %95 = icmp sgt i32 %83, 1
  br i1 %95, label %81, label %159, !llvm.loop !51

96:                                               ; preds = %77
  %97 = icmp ult i8 %62, 25
  br i1 %97, label %98, label %119

98:                                               ; preds = %96
  %99 = icmp sgt i32 %61, 0
  br i1 %99, label %100, label %159

100:                                              ; preds = %98, %115
  %101 = phi ptr [ %117, %115 ], [ %56, %98 ]
  %102 = phi i32 [ %116, %115 ], [ %61, %98 ]
  %103 = getelementptr inbounds i8, ptr %101, i64 2
  %104 = load i8, ptr %103, align 1, !tbaa !43
  %105 = zext i8 %104 to i32
  %106 = tail call i32 @putc(i32 noundef %105, ptr noundef nonnull %42)
  %107 = getelementptr inbounds i8, ptr %101, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !43
  %109 = zext i8 %108 to i32
  %110 = tail call i32 @putc(i32 noundef %109, ptr noundef nonnull %42)
  %111 = load i8, ptr %101, align 1, !tbaa !43
  %112 = zext i8 %111 to i32
  %113 = tail call i32 @putc(i32 noundef %112, ptr noundef nonnull %42)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %159, label %115

115:                                              ; preds = %100
  %116 = add nsw i32 %102, -1
  %117 = getelementptr inbounds i8, ptr %101, i64 4
  %118 = icmp sgt i32 %102, 1
  br i1 %118, label %100, label %159, !llvm.loop !52

119:                                              ; preds = %96
  %120 = icmp ult i8 %62, 33
  br i1 %120, label %121, label %159

121:                                              ; preds = %119
  %122 = icmp sgt i32 %61, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %121, %142
  %124 = phi ptr [ %144, %142 ], [ %56, %121 ]
  %125 = phi i32 [ %143, %142 ], [ %61, %121 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !43
  %128 = zext i8 %127 to i32
  %129 = tail call i32 @putc(i32 noundef %128, ptr noundef nonnull %42)
  %130 = getelementptr inbounds i8, ptr %124, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !43
  %132 = zext i8 %131 to i32
  %133 = tail call i32 @putc(i32 noundef %132, ptr noundef nonnull %42)
  %134 = load i8, ptr %124, align 1, !tbaa !43
  %135 = zext i8 %134 to i32
  %136 = tail call i32 @putc(i32 noundef %135, ptr noundef nonnull %42)
  %137 = getelementptr inbounds i8, ptr %124, i64 3
  %138 = load i8, ptr %137, align 1, !tbaa !43
  %139 = zext i8 %138 to i32
  %140 = tail call i32 @putc(i32 noundef %139, ptr noundef nonnull %42)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %159, label %142

142:                                              ; preds = %123
  %143 = add nsw i32 %125, -1
  %144 = getelementptr inbounds i8, ptr %124, i64 4
  %145 = icmp sgt i32 %125, 1
  br i1 %145, label %123, label %159, !llvm.loop !53

146:                                              ; preds = %49
  %147 = load i8, ptr %5, align 8, !tbaa !34
  %148 = zext i8 %147 to i32
  %149 = add nuw nsw i32 %148, 7
  %150 = lshr i32 %149, 3
  %151 = add nsw i32 %150, -1
  %152 = icmp ult i32 %151, 4
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = zext nneg i32 %151 to i64
  %155 = getelementptr inbounds [4 x ptr], ptr @switch.table.imb_savetarga, i64 0, i64 %154
  %156 = load ptr, ptr %155, align 8
  %157 = tail call fastcc zeroext i8 @makebody_tga(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull %156), !range !54
  %158 = zext nneg i8 %157 to i32
  br label %159

159:                                              ; preds = %142, %123, %115, %100, %92, %81, %73, %66, %146, %153, %121, %98, %79, %64, %119, %54, %52
  %160 = phi i32 [ 0, %146 ], [ 0, %52 ], [ 0, %54 ], [ 0, %119 ], [ 1, %64 ], [ 1, %79 ], [ 1, %98 ], [ 1, %121 ], [ %158, %153 ], [ 0, %66 ], [ 1, %73 ], [ 0, %81 ], [ 1, %92 ], [ 0, %100 ], [ 1, %115 ], [ 0, %123 ], [ 1, %142 ]
  %161 = tail call i32 @fclose(ptr noundef nonnull %42)
  br label %162

162:                                              ; preds = %41, %159, %47
  %163 = phi i32 [ 0, %47 ], [ %160, %159 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @makebody_tga(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %139

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %10

10:                                               ; preds = %7, %135
  %11 = phi i32 [ 0, %7 ], [ %136, %135 ]
  %12 = load i32, ptr %8, align 8, !tbaa !45
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %135

14:                                               ; preds = %10
  %15 = load ptr, ptr %9, align 8, !tbaa !47
  %16 = mul nsw i32 %12, %11
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = getelementptr inbounds i32, ptr %18, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !55
  %21 = load i32, ptr %18, align 4, !tbaa !55
  %22 = xor i32 %20, %21
  %23 = getelementptr inbounds i32, ptr %18, i64 2
  %24 = add nsw i32 %12, -1
  br label %25

25:                                               ; preds = %14, %127
  %26 = phi ptr [ %133, %127 ], [ %18, %14 ]
  %27 = phi ptr [ %132, %127 ], [ %23, %14 ]
  %28 = phi i32 [ %131, %127 ], [ %24, %14 ]
  %29 = phi i32 [ %130, %127 ], [ %22, %14 ]
  %30 = phi i32 [ %129, %127 ], [ %20, %14 ]
  %31 = phi i32 [ %128, %127 ], [ %21, %14 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = add i32 %28, -1
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 2
  %37 = getelementptr i8, ptr %27, i64 %36
  br label %85

38:                                               ; preds = %25, %51
  %39 = phi i32 [ %43, %51 ], [ %30, %25 ]
  %40 = phi i32 [ %52, %51 ], [ %28, %25 ]
  %41 = phi ptr [ %42, %51 ], [ %27, %25 ]
  %42 = getelementptr inbounds i32, ptr %41, i64 1
  %43 = load i32, ptr %41, align 4, !tbaa !55
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds i32, ptr %41, i64 -2
  %47 = load i32, ptr %46, align 4, !tbaa !55
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = add nsw i32 %40, -1
  br label %54

51:                                               ; preds = %38, %45
  %52 = add nsw i32 %40, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %38, !llvm.loop !56

54:                                               ; preds = %51, %49
  %55 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %56 = ptrtoint ptr %42 to i64
  %57 = ptrtoint ptr %26 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 2
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %55, 0
  %62 = select i1 %61, i32 -1, i32 -3
  %63 = add nsw i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %127, label %65

65:                                               ; preds = %54, %83
  %66 = phi ptr [ %80, %83 ], [ %26, %54 ]
  %67 = phi i32 [ %69, %83 ], [ %63, %54 ]
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 128)
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %68, -1
  %71 = tail call i32 @fputc(i32 noundef %70, ptr noundef %1)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %139, label %73

73:                                               ; preds = %65, %79
  %74 = phi i32 [ %81, %79 ], [ %68, %65 ]
  %75 = phi ptr [ %80, %79 ], [ %66, %65 ]
  %76 = load i32, ptr %75, align 4, !tbaa !55
  %77 = tail call i32 %2(i32 noundef %76, ptr noundef %1) #9, !callees !57
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %139, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds i32, ptr %75, i64 1
  %81 = add nsw i32 %74, -1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !58

83:                                               ; preds = %79
  %84 = icmp eq i32 %69, 0
  br i1 %84, label %127, label %65, !llvm.loop !59

85:                                               ; preds = %33, %90
  %86 = phi i32 [ %92, %90 ], [ %28, %33 ]
  %87 = phi ptr [ %91, %90 ], [ %27, %33 ]
  %88 = load i32, ptr %87, align 4, !tbaa !55
  %89 = icmp eq i32 %88, %30
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds i32, ptr %87, i64 1
  %92 = add nsw i32 %86, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %85, !llvm.loop !60

94:                                               ; preds = %90, %85
  %95 = phi ptr [ %37, %90 ], [ %87, %85 ]
  %96 = phi i32 [ 0, %90 ], [ %86, %85 ]
  %97 = ptrtoint ptr %95 to i64
  %98 = ptrtoint ptr %26 to i64
  %99 = sub i64 %97, %98
  %100 = lshr exact i64 %99, 2
  %101 = trunc i64 %100 to i32
  %102 = add nsw i32 %96, -1
  %103 = getelementptr inbounds i32, ptr %95, i64 1
  br label %104

104:                                              ; preds = %123, %94
  %105 = phi i32 [ %101, %94 ], [ %124, %123 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %104
  %108 = icmp sgt i32 %105, 128
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = tail call i32 @fputc(i32 noundef 255, ptr noundef %1)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %139, label %112

112:                                              ; preds = %109
  %113 = add nsw i32 %105, -128
  br label %123

114:                                              ; preds = %107
  %115 = icmp eq i32 %105, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = tail call i32 @fputc(i32 noundef 0, ptr noundef %1)
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %139, label %123

119:                                              ; preds = %114
  %120 = add nsw i32 %105, 127
  %121 = tail call i32 @fputc(i32 noundef %120, ptr noundef %1)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %139, label %123

123:                                              ; preds = %116, %119, %112
  %124 = phi i32 [ %113, %112 ], [ 0, %119 ], [ 0, %116 ]
  %125 = tail call i32 %2(i32 noundef %31, ptr noundef %1) #9, !callees !57
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %139, label %104, !llvm.loop !61

127:                                              ; preds = %83, %104, %54
  %128 = phi i32 [ %43, %54 ], [ %31, %104 ], [ %43, %83 ]
  %129 = phi i32 [ %43, %54 ], [ %88, %104 ], [ %43, %83 ]
  %130 = phi i32 [ 0, %54 ], [ 1, %104 ], [ 0, %83 ]
  %131 = phi i32 [ %55, %54 ], [ %102, %104 ], [ %55, %83 ]
  %132 = phi ptr [ %42, %54 ], [ %103, %104 ], [ %42, %83 ]
  %133 = phi ptr [ %26, %54 ], [ %95, %104 ], [ %80, %83 ]
  %134 = icmp sgt i32 %131, 0
  br i1 %134, label %25, label %135, !llvm.loop !62

135:                                              ; preds = %127, %10
  %136 = add nuw nsw i32 %11, 1
  %137 = load i32, ptr %4, align 4, !tbaa !46
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %10, label %139, !llvm.loop !63

139:                                              ; preds = %135, %65, %123, %119, %116, %109, %73, %3
  %140 = phi i8 [ 1, %3 ], [ 0, %73 ], [ 0, %109 ], [ 0, %116 ], [ 0, %119 ], [ 0, %123 ], [ 0, %65 ], [ 1, %135 ]
  ret i8 %140
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @tga_out1(i32 noundef %0, ptr nocapture noundef %1) #5 {
  %3 = and i32 %0, 255
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %1)
  %5 = icmp eq i32 %4, -1
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @tga_out2(i32 noundef %0, ptr nocapture noundef %1) #5 {
  %3 = and i32 %0, 255
  %4 = tail call i32 @putc(i32 noundef %3, ptr noundef %1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = lshr i32 %0, 8
  %8 = and i32 %7, 255
  %9 = tail call i32 @putc(i32 noundef %8, ptr noundef %1)
  %10 = icmp eq i32 %9, -1
  %11 = sext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ -1, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @tga_out3(i32 noundef %0, ptr nocapture noundef %1) #5 {
  %3 = lshr i32 %0, 16
  %4 = and i32 %3, 255
  %5 = tail call i32 @putc(i32 noundef %4, ptr noundef %1)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = lshr i32 %0, 8
  %9 = and i32 %8, 255
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = and i32 %0, 255
  %14 = tail call i32 @putc(i32 noundef %13, ptr noundef %1)
  %15 = icmp eq i32 %14, -1
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %7, %2
  %18 = phi i32 [ -1, %2 ], [ -1, %7 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @tga_out4(i32 noundef %0, ptr nocapture noundef %1) #5 {
  %3 = lshr i32 %0, 16
  %4 = lshr i32 %0, 24
  %5 = and i32 %3, 255
  %6 = tail call i32 @putc(i32 noundef %5, ptr noundef %1)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %0, 8
  %10 = and i32 %9, 255
  %11 = tail call i32 @putc(i32 noundef %10, ptr noundef %1)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = and i32 %0, 255
  %15 = tail call i32 @putc(i32 noundef %14, ptr noundef %1)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @putc(i32 noundef %4, ptr noundef %1)
  %19 = icmp eq i32 %18, -1
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %13, %8, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %8 ], [ -1, %13 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @imb_is_a_targa(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 5
  %5 = getelementptr inbounds i8, ptr %0, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = zext i8 %6 to i16
  %8 = shl nuw i16 %7, 8
  %9 = load i8, ptr %4, align 1, !tbaa !43
  %10 = zext i8 %9 to i16
  %11 = or disjoint i16 %8, %10
  %12 = getelementptr inbounds i8, ptr %0, i64 7
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = getelementptr inbounds i8, ptr %0, i64 12
  %15 = getelementptr inbounds i8, ptr %0, i64 13
  %16 = load i8, ptr %15, align 1, !tbaa !43
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = load i8, ptr %14, align 1, !tbaa !43
  %20 = zext i8 %19 to i16
  %21 = or disjoint i16 %18, %20
  %22 = getelementptr inbounds i8, ptr %0, i64 14
  %23 = getelementptr inbounds i8, ptr %0, i64 15
  %24 = load i8, ptr %23, align 1, !tbaa !43
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = load i8, ptr %22, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = or disjoint i16 %26, %28
  %30 = getelementptr inbounds i8, ptr %0, i64 16
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = icmp ugt i8 %3, 1
  br i1 %32, label %49, label %33

33:                                               ; preds = %1
  %34 = getelementptr inbounds i8, ptr %0, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !43
  switch i8 %35, label %49 [
    i8 1, label %36
    i8 2, label %36
    i8 3, label %36
    i8 9, label %36
    i8 10, label %36
    i8 11, label %36
  ]

36:                                               ; preds = %33, %33, %33, %33, %33, %33
  %37 = icmp ne i16 %11, 0
  %38 = icmp ugt i8 %13, 32
  %39 = select i1 %37, i1 %38, i1 false
  %40 = icmp slt i16 %21, 1
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp slt i16 %29, 1
  %43 = select i1 %41, i1 true, i1 %42
  %44 = icmp ugt i8 %31, 32
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = icmp ne i8 %31, 0
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %1, %33, %36, %46
  %50 = phi i32 [ 0, %1 ], [ 0, %33 ], [ %48, %46 ], [ 0, %36 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local ptr @imb_loadtarga(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %0, align 1, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = getelementptr inbounds i8, ptr %0, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %0, i64 5
  %11 = getelementptr inbounds i8, ptr %0, i64 6
  %12 = load i8, ptr %11, align 1, !tbaa !43
  %13 = zext i8 %12 to i16
  %14 = shl nuw i16 %13, 8
  %15 = load i8, ptr %10, align 1, !tbaa !43
  %16 = zext i8 %15 to i16
  %17 = or disjoint i16 %14, %16
  %18 = getelementptr inbounds i8, ptr %0, i64 7
  %19 = load i8, ptr %18, align 1, !tbaa !43
  %20 = getelementptr inbounds i8, ptr %0, i64 12
  %21 = getelementptr inbounds i8, ptr %0, i64 13
  %22 = load i8, ptr %21, align 1, !tbaa !43
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = load i8, ptr %20, align 1, !tbaa !43
  %26 = zext i8 %25 to i16
  %27 = or disjoint i16 %24, %26
  %28 = getelementptr inbounds i8, ptr %0, i64 14
  %29 = getelementptr inbounds i8, ptr %0, i64 15
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = load i8, ptr %28, align 1, !tbaa !43
  %34 = zext i8 %33 to i16
  %35 = or disjoint i16 %32, %34
  %36 = getelementptr inbounds i8, ptr %0, i64 16
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = getelementptr inbounds i8, ptr %0, i64 17
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = icmp ugt i8 %7, 1
  br i1 %40, label %55, label %41

41:                                               ; preds = %4
  switch i8 %9, label %55 [
    i8 1, label %42
    i8 2, label %42
    i8 3, label %42
    i8 9, label %42
    i8 10, label %42
    i8 11, label %42
  ]

42:                                               ; preds = %41, %41, %41, %41, %41, %41
  %43 = icmp ne i16 %17, 0
  %44 = icmp ugt i8 %19, 32
  %45 = select i1 %43, i1 %44, i1 false
  %46 = icmp slt i16 %27, 1
  %47 = select i1 %45, i1 true, i1 %46
  %48 = icmp slt i16 %35, 1
  %49 = select i1 %47, i1 true, i1 %48
  %50 = icmp ugt i8 %37, 32
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = icmp ne i8 %37, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %4, %41, %42, %52
  %56 = phi i32 [ 0, %4 ], [ 0, %41 ], [ %54, %52 ], [ 0, %42 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %506, label %58

58:                                               ; preds = %55
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #9
  %59 = and i32 %2, 2
  %60 = icmp eq i32 %59, 0
  %61 = sext i16 %27 to i32
  %62 = sext i16 %35 to i32
  br i1 %60, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call ptr @IMB_allocImBuf(i32 noundef %61, i32 noundef %62, i8 noundef zeroext %37, i32 noundef 0) #9
  br label %69

65:                                               ; preds = %58
  %66 = add i8 %37, 7
  %67 = and i8 %66, -8
  %68 = tail call ptr @IMB_allocImBuf(i32 noundef %61, i32 noundef %62, i8 noundef zeroext %67, i32 noundef 1) #9
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi ptr [ %64, %63 ], [ %68, %65 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %506, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 26
  store i32 268435456, ptr %73, align 8, !tbaa !44
  %74 = getelementptr inbounds i8, ptr %0, i64 18
  %75 = zext i8 %5 to i64
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = icmp eq i16 %17, 0
  br i1 %77, label %154, label %78

78:                                               ; preds = %72
  %79 = sext i16 %17 to i32
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %81 = zext i32 %79 to i64
  %82 = shl nuw nsw i64 %81, 2
  %83 = tail call ptr %80(i64 noundef %82, ptr noundef nonnull @.str.1) #9
  %84 = lshr i8 %19, 3
  %85 = zext i32 %79 to i64
  br label %86

86:                                               ; preds = %78, %117
  %87 = phi i64 [ 0, %78 ], [ %134, %117 ]
  %88 = phi ptr [ %76, %78 ], [ %122, %117 ]
  %89 = phi i8 [ -1, %78 ], [ %121, %117 ]
  %90 = phi i8 [ 0, %78 ], [ %120, %117 ]
  %91 = phi i8 [ 0, %78 ], [ %119, %117 ]
  %92 = phi i8 [ undef, %78 ], [ %118, %117 ]
  switch i8 %84, label %117 [
    i8 4, label %93
    i8 3, label %102
    i8 2, label %109
    i8 1, label %114
  ]

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, ptr %88, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !43
  %96 = load i8, ptr %88, align 1, !tbaa !43
  %97 = getelementptr inbounds i8, ptr %88, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = getelementptr inbounds i8, ptr %88, i64 2
  %100 = load i8, ptr %99, align 1, !tbaa !43
  %101 = getelementptr inbounds i8, ptr %88, i64 4
  br label %117

102:                                              ; preds = %86
  %103 = load i8, ptr %88, align 1, !tbaa !43
  %104 = getelementptr inbounds i8, ptr %88, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !43
  %106 = getelementptr inbounds i8, ptr %88, i64 2
  %107 = load i8, ptr %106, align 1, !tbaa !43
  %108 = getelementptr inbounds i8, ptr %88, i64 3
  br label %117

109:                                              ; preds = %86
  %110 = getelementptr inbounds i8, ptr %88, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !43
  %112 = load i8, ptr %88, align 1, !tbaa !43
  %113 = getelementptr inbounds i8, ptr %88, i64 2
  br label %117

114:                                              ; preds = %86
  %115 = getelementptr inbounds i8, ptr %88, i64 1
  %116 = load i8, ptr %88, align 1, !tbaa !43
  br label %117

117:                                              ; preds = %86, %114, %109, %102, %93
  %118 = phi i8 [ %92, %86 ], [ 0, %114 ], [ %92, %109 ], [ %107, %102 ], [ %100, %93 ]
  %119 = phi i8 [ %91, %86 ], [ 0, %114 ], [ %91, %109 ], [ %105, %102 ], [ %98, %93 ]
  %120 = phi i8 [ %90, %86 ], [ 0, %114 ], [ %111, %109 ], [ %103, %102 ], [ %96, %93 ]
  %121 = phi i8 [ %89, %86 ], [ %116, %114 ], [ %112, %109 ], [ %89, %102 ], [ %95, %93 ]
  %122 = phi ptr [ %88, %86 ], [ %115, %114 ], [ %113, %109 ], [ %108, %102 ], [ %101, %93 ]
  %123 = zext i8 %118 to i32
  %124 = shl nuw i32 %123, 24
  %125 = zext i8 %119 to i32
  %126 = shl nuw nsw i32 %125, 16
  %127 = or disjoint i32 %126, %124
  %128 = zext i8 %120 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or disjoint i32 %127, %129
  %131 = zext i8 %121 to i32
  %132 = or disjoint i32 %130, %131
  %133 = getelementptr inbounds i32, ptr %83, i64 %87
  store i32 %132, ptr %133, align 4, !tbaa !55
  %134 = add nuw nsw i64 %87, 1
  %135 = icmp eq i64 %134, %85
  br i1 %135, label %136, label %86, !llvm.loop !65

136:                                              ; preds = %117
  %137 = icmp sgt i16 %17, 1
  br i1 %137, label %138, label %146

138:                                              ; preds = %136
  %139 = add nsw i32 %79, -1
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i32 [ %143, %140 ], [ 0, %138 ]
  %142 = phi i32 [ %144, %140 ], [ %139, %138 ]
  %143 = add nuw nsw i32 %141, 1
  %144 = lshr i32 %142, 1
  %145 = icmp ult i32 %142, 2
  br i1 %145, label %146, label %140, !llvm.loop !66

146:                                              ; preds = %140, %136
  %147 = phi i32 [ 0, %136 ], [ %143, %140 ]
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 4
  store i8 %148, ptr %149, align 8, !tbaa !34
  %150 = icmp eq i8 %19, 32
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %83, align 4, !tbaa !55
  %153 = and i32 %152, -256
  store i32 %153, ptr %83, align 4, !tbaa !55
  br label %154

154:                                              ; preds = %146, %151, %72
  %155 = phi ptr [ %122, %151 ], [ %122, %146 ], [ %76, %72 ]
  %156 = phi ptr [ %83, %151 ], [ %83, %146 ], [ null, %72 ]
  %157 = phi i32 [ %79, %151 ], [ %79, %146 ], [ 0, %72 ]
  br i1 %60, label %162, label %158

158:                                              ; preds = %154
  %159 = icmp eq ptr %156, null
  br i1 %159, label %506, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %161(ptr noundef nonnull %156) #9
  br label %506

162:                                              ; preds = %154
  %163 = and i8 %9, -9
  %164 = icmp ne i8 %163, 1
  %165 = icmp ne ptr %156, null
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %168(ptr noundef nonnull %156) #9
  br label %169

169:                                              ; preds = %167, %162
  %170 = phi ptr [ null, %167 ], [ %156, %162 ]
  switch i8 %9, label %403 [
    i8 1, label %171
    i8 2, label %171
    i8 3, label %171
    i8 9, label %391
    i8 10, label %391
    i8 11, label %391
  ]

171:                                              ; preds = %169, %169, %169
  %172 = icmp ult i8 %37, 9
  br i1 %172, label %173, label %218

173:                                              ; preds = %171
  %174 = getelementptr inbounds i8, ptr %155, i64 %1
  %175 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %176 = load ptr, ptr %175, align 8, !tbaa !47
  %177 = icmp eq ptr %176, null
  br i1 %177, label %403, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !45
  %181 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %182 = load i32, ptr %181, align 4, !tbaa !46
  %183 = mul nsw i32 %182, %180
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %403

185:                                              ; preds = %178, %190
  %186 = phi ptr [ %191, %190 ], [ %155, %178 ]
  %187 = phi ptr [ %194, %190 ], [ %176, %178 ]
  %188 = phi i32 [ %195, %190 ], [ %183, %178 ]
  %189 = icmp ugt ptr %186, %174
  br i1 %189, label %197, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %186, i64 1
  %192 = load i8, ptr %186, align 1, !tbaa !43
  %193 = zext i8 %192 to i32
  %194 = getelementptr inbounds i32, ptr %187, i64 1
  store i32 %193, ptr %187, align 4, !tbaa !55
  %195 = add nsw i32 %188, -1
  %196 = icmp sgt i32 %188, 1
  br i1 %196, label %185, label %403, !llvm.loop !67

197:                                              ; preds = %185
  %198 = load i32, ptr %179, align 8, !tbaa !45
  %199 = load i32, ptr %181, align 4, !tbaa !46
  %200 = mul nsw i32 %199, %198
  %201 = ptrtoint ptr %187 to i64
  %202 = ptrtoint ptr %176 to i64
  %203 = sub i64 %201, %202
  %204 = lshr exact i64 %203, 2
  %205 = trunc i64 %204 to i32
  %206 = icmp eq i32 %200, %205
  br i1 %206, label %216, label %207

207:                                              ; preds = %197
  %208 = sub i32 %200, %205
  %209 = sitofp i32 %208 to float
  %210 = sitofp i32 %200 to float
  %211 = fdiv float %209, %210
  %212 = fmul float %211, 1.000000e+02
  %213 = fpext float %212 to double
  %214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %213)
  %215 = sext i32 %208 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %187, i8 0, i64 %215, i1 false)
  br label %403

216:                                              ; preds = %197
  %217 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %403

218:                                              ; preds = %171
  %219 = icmp ult i8 %37, 17
  br i1 %219, label %220, label %270

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %155, i64 %1
  %222 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %223 = load ptr, ptr %222, align 8, !tbaa !47
  %224 = icmp eq ptr %223, null
  br i1 %224, label %403, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %227 = load i32, ptr %226, align 8, !tbaa !45
  %228 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !46
  %230 = mul nsw i32 %229, %227
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %403

232:                                              ; preds = %225, %237
  %233 = phi ptr [ %241, %237 ], [ %155, %225 ]
  %234 = phi ptr [ %246, %237 ], [ %223, %225 ]
  %235 = phi i32 [ %247, %237 ], [ %230, %225 ]
  %236 = icmp ugt ptr %233, %221
  br i1 %236, label %249, label %237

237:                                              ; preds = %232
  %238 = load i8, ptr %233, align 1, !tbaa !43
  %239 = getelementptr inbounds i8, ptr %233, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !43
  %241 = getelementptr inbounds i8, ptr %233, i64 2
  %242 = zext i8 %240 to i32
  %243 = shl nuw nsw i32 %242, 8
  %244 = zext i8 %238 to i32
  %245 = or disjoint i32 %243, %244
  %246 = getelementptr inbounds i32, ptr %234, i64 1
  store i32 %245, ptr %234, align 4, !tbaa !55
  %247 = add nsw i32 %235, -1
  %248 = icmp sgt i32 %235, 1
  br i1 %248, label %232, label %403, !llvm.loop !67

249:                                              ; preds = %232
  %250 = load i32, ptr %226, align 8, !tbaa !45
  %251 = load i32, ptr %228, align 4, !tbaa !46
  %252 = mul nsw i32 %251, %250
  %253 = ptrtoint ptr %234 to i64
  %254 = ptrtoint ptr %223 to i64
  %255 = sub i64 %253, %254
  %256 = lshr exact i64 %255, 2
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %252, %257
  br i1 %258, label %268, label %259

259:                                              ; preds = %249
  %260 = sub i32 %252, %257
  %261 = sitofp i32 %260 to float
  %262 = sitofp i32 %252 to float
  %263 = fdiv float %261, %262
  %264 = fmul float %263, 1.000000e+02
  %265 = fpext float %264 to double
  %266 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %265)
  %267 = sext i32 %260 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %234, i8 0, i64 %267, i1 false)
  br label %403

268:                                              ; preds = %249
  %269 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %403

270:                                              ; preds = %218
  %271 = icmp ult i8 %37, 25
  br i1 %271, label %272, label %329

272:                                              ; preds = %270
  %273 = getelementptr inbounds i8, ptr %155, i64 %1
  %274 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !47
  %276 = icmp eq ptr %275, null
  br i1 %276, label %403, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !45
  %280 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %281 = load i32, ptr %280, align 4, !tbaa !46
  %282 = mul nsw i32 %281, %279
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %403

284:                                              ; preds = %277, %289
  %285 = phi ptr [ %295, %289 ], [ %155, %277 ]
  %286 = phi ptr [ %305, %289 ], [ %275, %277 ]
  %287 = phi i32 [ %306, %289 ], [ %282, %277 ]
  %288 = icmp ugt ptr %285, %273
  br i1 %288, label %308, label %289

289:                                              ; preds = %284
  %290 = load i8, ptr %285, align 1, !tbaa !43
  %291 = getelementptr inbounds i8, ptr %285, i64 1
  %292 = load i8, ptr %291, align 1, !tbaa !43
  %293 = getelementptr inbounds i8, ptr %285, i64 2
  %294 = load i8, ptr %293, align 1, !tbaa !43
  %295 = getelementptr inbounds i8, ptr %285, i64 3
  %296 = zext i8 %294 to i32
  %297 = shl nuw i32 %296, 24
  %298 = zext i8 %292 to i32
  %299 = shl nuw nsw i32 %298, 16
  %300 = zext i8 %290 to i32
  %301 = shl nuw nsw i32 %300, 8
  %302 = or disjoint i32 %301, %299
  %303 = or disjoint i32 %302, %297
  %304 = or disjoint i32 %303, 255
  %305 = getelementptr inbounds i32, ptr %286, i64 1
  store i32 %304, ptr %286, align 4, !tbaa !55
  %306 = add nsw i32 %287, -1
  %307 = icmp sgt i32 %287, 1
  br i1 %307, label %284, label %403, !llvm.loop !67

308:                                              ; preds = %284
  %309 = load i32, ptr %278, align 8, !tbaa !45
  %310 = load i32, ptr %280, align 4, !tbaa !46
  %311 = mul nsw i32 %310, %309
  %312 = ptrtoint ptr %286 to i64
  %313 = ptrtoint ptr %275 to i64
  %314 = sub i64 %312, %313
  %315 = lshr exact i64 %314, 2
  %316 = trunc i64 %315 to i32
  %317 = icmp eq i32 %311, %316
  br i1 %317, label %327, label %318

318:                                              ; preds = %308
  %319 = sub i32 %311, %316
  %320 = sitofp i32 %319 to float
  %321 = sitofp i32 %311 to float
  %322 = fdiv float %320, %321
  %323 = fmul float %322, 1.000000e+02
  %324 = fpext float %323 to double
  %325 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %324)
  %326 = sext i32 %319 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %286, i8 0, i64 %326, i1 false)
  br label %403

327:                                              ; preds = %308
  %328 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %403

329:                                              ; preds = %270
  %330 = icmp ult i8 %37, 33
  br i1 %330, label %331, label %403

331:                                              ; preds = %329
  %332 = getelementptr inbounds i8, ptr %155, i64 %1
  %333 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %334 = load ptr, ptr %333, align 8, !tbaa !47
  %335 = icmp eq ptr %334, null
  br i1 %335, label %403, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %338 = load i32, ptr %337, align 8, !tbaa !45
  %339 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %340 = load i32, ptr %339, align 4, !tbaa !46
  %341 = mul nsw i32 %340, %338
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %403

343:                                              ; preds = %336, %348
  %344 = phi ptr [ %356, %348 ], [ %155, %336 ]
  %345 = phi ptr [ %367, %348 ], [ %334, %336 ]
  %346 = phi i32 [ %368, %348 ], [ %341, %336 ]
  %347 = icmp ugt ptr %344, %332
  br i1 %347, label %370, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds i8, ptr %344, i64 3
  %350 = load i8, ptr %349, align 1, !tbaa !43
  %351 = load i8, ptr %344, align 1, !tbaa !43
  %352 = getelementptr inbounds i8, ptr %344, i64 1
  %353 = load i8, ptr %352, align 1, !tbaa !43
  %354 = getelementptr inbounds i8, ptr %344, i64 2
  %355 = load i8, ptr %354, align 1, !tbaa !43
  %356 = getelementptr inbounds i8, ptr %344, i64 4
  %357 = zext i8 %355 to i32
  %358 = shl nuw i32 %357, 24
  %359 = zext i8 %353 to i32
  %360 = shl nuw nsw i32 %359, 16
  %361 = zext i8 %351 to i32
  %362 = shl nuw nsw i32 %361, 8
  %363 = zext i8 %350 to i32
  %364 = or disjoint i32 %362, %363
  %365 = or disjoint i32 %364, %360
  %366 = or disjoint i32 %365, %358
  %367 = getelementptr inbounds i32, ptr %345, i64 1
  store i32 %366, ptr %345, align 4, !tbaa !55
  %368 = add nsw i32 %346, -1
  %369 = icmp sgt i32 %346, 1
  br i1 %369, label %343, label %403, !llvm.loop !67

370:                                              ; preds = %343
  %371 = load i32, ptr %337, align 8, !tbaa !45
  %372 = load i32, ptr %339, align 4, !tbaa !46
  %373 = mul nsw i32 %372, %371
  %374 = ptrtoint ptr %345 to i64
  %375 = ptrtoint ptr %334 to i64
  %376 = sub i64 %374, %375
  %377 = lshr exact i64 %376, 2
  %378 = trunc i64 %377 to i32
  %379 = icmp eq i32 %373, %378
  br i1 %379, label %389, label %380

380:                                              ; preds = %370
  %381 = sub i32 %373, %378
  %382 = sitofp i32 %381 to float
  %383 = sitofp i32 %373 to float
  %384 = fdiv float %382, %383
  %385 = fmul float %384, 1.000000e+02
  %386 = fpext float %385 to double
  %387 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %386)
  %388 = sext i32 %381 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %345, i8 0, i64 %388, i1 false)
  br label %403

389:                                              ; preds = %370
  %390 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %403

391:                                              ; preds = %169, %169, %169
  %392 = icmp ult i8 %37, 9
  br i1 %392, label %393, label %394

393:                                              ; preds = %391
  tail call fastcc void @decodetarga(ptr noundef %70, ptr noundef %155, i64 noundef %1, i32 noundef 0)
  br label %403

394:                                              ; preds = %391
  %395 = icmp ult i8 %37, 17
  br i1 %395, label %396, label %397

396:                                              ; preds = %394
  tail call fastcc void @decodetarga(ptr noundef %70, ptr noundef %155, i64 noundef %1, i32 noundef 1)
  br label %403

397:                                              ; preds = %394
  %398 = icmp ult i8 %37, 25
  br i1 %398, label %399, label %400

399:                                              ; preds = %397
  tail call fastcc void @decodetarga(ptr noundef %70, ptr noundef %155, i64 noundef %1, i32 noundef 2)
  br label %403

400:                                              ; preds = %397
  %401 = icmp ult i8 %37, 33
  br i1 %401, label %402, label %403

402:                                              ; preds = %400
  tail call fastcc void @decodetarga(ptr noundef %70, ptr noundef %155, i64 noundef %1, i32 noundef 3)
  br label %403

403:                                              ; preds = %348, %289, %237, %190, %178, %336, %331, %380, %389, %277, %272, %318, %327, %225, %220, %259, %268, %216, %207, %173, %393, %399, %402, %400, %396, %329, %169
  %404 = icmp eq ptr %170, null
  br i1 %404, label %432, label %405

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %407 = load i32, ptr %406, align 8, !tbaa !45
  %408 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %409 = load i32, ptr %408, align 4, !tbaa !46
  %410 = mul nsw i32 %409, %407
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %430

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %414 = load ptr, ptr %413, align 8, !tbaa !47
  br label %415

415:                                              ; preds = %412, %426
  %416 = phi ptr [ %428, %426 ], [ %414, %412 ]
  %417 = phi i32 [ %427, %426 ], [ %410, %412 ]
  %418 = load i32, ptr %416, align 4, !tbaa !55
  %419 = icmp sgt i32 %418, -1
  %420 = icmp ult i32 %418, %157
  %421 = and i1 %419, %420
  br i1 %421, label %422, label %426

422:                                              ; preds = %415
  %423 = zext nneg i32 %418 to i64
  %424 = getelementptr inbounds i32, ptr %170, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !55
  store i32 %425, ptr %416, align 4, !tbaa !55
  br label %426

426:                                              ; preds = %415, %422
  %427 = add nsw i32 %417, -1
  %428 = getelementptr inbounds i32, ptr %416, i64 1
  %429 = icmp sgt i32 %417, 1
  br i1 %429, label %415, label %430, !llvm.loop !68

430:                                              ; preds = %426, %405
  %431 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %431(ptr noundef nonnull %170) #9
  br label %432

432:                                              ; preds = %430, %403
  %433 = icmp eq i8 %37, 16
  br i1 %433, label %434, label %474

434:                                              ; preds = %432
  %435 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %436 = load i32, ptr %435, align 8, !tbaa !45
  %437 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %438 = load i32, ptr %437, align 4, !tbaa !46
  %439 = mul nsw i32 %438, %436
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %472

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %443 = load ptr, ptr %442, align 8, !tbaa !47
  br label %444

444:                                              ; preds = %441, %444
  %445 = phi ptr [ %470, %444 ], [ %443, %441 ]
  %446 = phi i32 [ %469, %444 ], [ %439, %441 ]
  %447 = load i32, ptr %445, align 4, !tbaa !55
  %448 = lshr i32 %447, 8
  %449 = shl nuw nsw i32 %448, 1
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, -8
  %452 = getelementptr inbounds i8, ptr %445, i64 3
  store i8 %451, ptr %452, align 1, !tbaa !43
  %453 = lshr i32 %447, 2
  %454 = and i32 %453, 56
  %455 = shl nuw nsw i32 %448, 6
  %456 = or disjoint i32 %454, %455
  %457 = trunc i32 %456 to i8
  %458 = getelementptr inbounds i8, ptr %445, i64 2
  store i8 %457, ptr %458, align 1, !tbaa !43
  %459 = shl i32 %447, 3
  %460 = getelementptr inbounds i8, ptr %445, i64 1
  %461 = lshr i32 %459, 5
  %462 = and i32 %461, 7
  %463 = or disjoint i32 %462, %459
  %464 = trunc i32 %463 to i8
  store i8 %464, ptr %460, align 1, !tbaa !43
  %465 = lshr i8 %457, 5
  %466 = or disjoint i8 %465, %457
  store i8 %466, ptr %458, align 1, !tbaa !43
  %467 = lshr i8 %450, 5
  %468 = or disjoint i8 %467, %451
  store i8 %468, ptr %452, align 1, !tbaa !43
  store i8 -1, ptr %445, align 1, !tbaa !43
  %469 = add nsw i32 %446, -1
  %470 = getelementptr inbounds i32, ptr %445, i64 1
  %471 = icmp sgt i32 %446, 1
  br i1 %471, label %444, label %472, !llvm.loop !69

472:                                              ; preds = %444, %434
  %473 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 4
  store i8 24, ptr %473, align 8, !tbaa !34
  br label %474

474:                                              ; preds = %472, %432
  %475 = icmp eq i8 %163, 3
  br i1 %475, label %476, label %497

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %478 = load i32, ptr %477, align 8, !tbaa !45
  %479 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %480 = load i32, ptr %479, align 4, !tbaa !46
  %481 = mul nsw i32 %480, %478
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %497

483:                                              ; preds = %476
  %484 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %485 = load ptr, ptr %484, align 8, !tbaa !47
  br label %486

486:                                              ; preds = %483, %486
  %487 = phi ptr [ %489, %486 ], [ %485, %483 ]
  %488 = phi i32 [ %495, %486 ], [ %481, %483 ]
  %489 = getelementptr i32, ptr %487, i64 1
  %490 = load i32, ptr %487, align 4, !tbaa !55
  store i8 -1, ptr %487, align 1, !tbaa !43
  %491 = trunc i32 %490 to i8
  %492 = getelementptr inbounds i8, ptr %487, i64 3
  store i8 %491, ptr %492, align 1, !tbaa !43
  %493 = getelementptr inbounds i8, ptr %487, i64 2
  store i8 %491, ptr %493, align 1, !tbaa !43
  %494 = getelementptr inbounds i8, ptr %487, i64 1
  store i8 %491, ptr %494, align 1, !tbaa !43
  %495 = add nsw i32 %488, -1
  %496 = icmp sgt i32 %488, 1
  br i1 %496, label %486, label %497, !llvm.loop !70

497:                                              ; preds = %486, %476, %474
  %498 = and i8 %39, 32
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %497
  tail call void @IMB_flipy(ptr noundef %70) #9
  br label %501

501:                                              ; preds = %500, %497
  %502 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 8
  %503 = load ptr, ptr %502, align 8, !tbaa !47
  %504 = icmp eq ptr %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %501
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef %70) #9
  br label %506

506:                                              ; preds = %501, %505, %158, %160, %69, %55
  %507 = phi ptr [ null, %55 ], [ null, %69 ], [ %70, %160 ], [ %70, %158 ], [ %70, %505 ], [ %70, %501 ]
  ret ptr %507
}

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @decodetarga(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %2
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %191, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = mul nsw i32 %13, %11
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %163

16:                                               ; preds = %9
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %3, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %3, 1
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %3, 1
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %16, %155
  %30 = phi ptr [ %1, %16 ], [ %161, %155 ]
  %31 = phi ptr [ %7, %16 ], [ %160, %155 ]
  %32 = phi i32 [ %14, %16 ], [ %159, %155 ]
  %33 = phi i8 [ -1, %16 ], [ %158, %155 ]
  %34 = phi i8 [ 0, %16 ], [ %157, %155 ]
  %35 = phi i8 [ undef, %16 ], [ %156, %155 ]
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = load i8, ptr %30, align 1, !tbaa !43
  %38 = zext i8 %37 to i32
  %39 = icmp ugt ptr %36, %5
  br i1 %39, label %169, label %40

40:                                               ; preds = %29
  %41 = icmp slt i8 %37, 0
  br i1 %41, label %42, label %95

42:                                               ; preds = %40
  %43 = add nsw i32 %38, -127
  br i1 %24, label %61, label %44

44:                                               ; preds = %42
  br i1 %26, label %54, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds i8, ptr %30, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = load i8, ptr %36, align 1, !tbaa !43
  %49 = getelementptr inbounds i8, ptr %30, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = getelementptr inbounds i8, ptr %30, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !43
  %53 = getelementptr inbounds i8, ptr %30, i64 5
  br label %70

54:                                               ; preds = %44
  %55 = load i8, ptr %36, align 1, !tbaa !43
  %56 = getelementptr inbounds i8, ptr %30, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !43
  %58 = getelementptr inbounds i8, ptr %30, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !43
  %60 = getelementptr inbounds i8, ptr %30, i64 4
  br label %70

61:                                               ; preds = %42
  br i1 %28, label %67, label %62

62:                                               ; preds = %61
  %63 = load i8, ptr %36, align 1, !tbaa !43
  %64 = getelementptr inbounds i8, ptr %30, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !43
  %66 = getelementptr inbounds i8, ptr %30, i64 3
  br label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, ptr %30, i64 2
  %69 = load i8, ptr %36, align 1, !tbaa !43
  br label %70

70:                                               ; preds = %62, %67, %45, %54
  %71 = phi i8 [ %52, %45 ], [ %59, %54 ], [ %35, %62 ], [ 0, %67 ]
  %72 = phi i8 [ %50, %45 ], [ %57, %54 ], [ %34, %62 ], [ 0, %67 ]
  %73 = phi i8 [ %48, %45 ], [ %55, %54 ], [ %65, %62 ], [ 0, %67 ]
  %74 = phi i8 [ %47, %45 ], [ %33, %54 ], [ %63, %62 ], [ %69, %67 ]
  %75 = phi ptr [ %53, %45 ], [ %60, %54 ], [ %66, %62 ], [ %68, %67 ]
  %76 = sub nsw i32 %32, %43
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %155

78:                                               ; preds = %70
  %79 = zext i8 %71 to i32
  %80 = shl nuw i32 %79, 24
  %81 = zext i8 %72 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or disjoint i32 %82, %80
  %84 = zext i8 %73 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or disjoint i32 %83, %85
  %87 = zext i8 %74 to i32
  %88 = or disjoint i32 %86, %87
  br label %89

89:                                               ; preds = %78, %89
  %90 = phi i32 [ %93, %89 ], [ %43, %78 ]
  %91 = phi ptr [ %92, %89 ], [ %31, %78 ]
  %92 = getelementptr inbounds i32, ptr %91, i64 1
  store i32 %88, ptr %91, align 4, !tbaa !55
  %93 = add nsw i32 %90, -1
  %94 = icmp sgt i32 %90, 1
  br i1 %94, label %89, label %155

95:                                               ; preds = %40
  %96 = add nuw nsw i32 %38, 1
  %97 = sub nsw i32 %32, %96
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %155

99:                                               ; preds = %95, %134
  %100 = phi i8 [ %135, %134 ], [ %35, %95 ]
  %101 = phi i8 [ %136, %134 ], [ %34, %95 ]
  %102 = phi i8 [ %138, %134 ], [ %33, %95 ]
  %103 = phi i32 [ %151, %134 ], [ %96, %95 ]
  %104 = phi ptr [ %150, %134 ], [ %31, %95 ]
  %105 = phi ptr [ %139, %134 ], [ %36, %95 ]
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %107, label %153

107:                                              ; preds = %99
  br i1 %18, label %125, label %108

108:                                              ; preds = %107
  br i1 %20, label %118, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds i8, ptr %105, i64 3
  %111 = load i8, ptr %110, align 1, !tbaa !43
  %112 = load i8, ptr %105, align 1, !tbaa !43
  %113 = getelementptr inbounds i8, ptr %105, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !43
  %115 = getelementptr inbounds i8, ptr %105, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !43
  %117 = getelementptr inbounds i8, ptr %105, i64 4
  br label %134

118:                                              ; preds = %108
  %119 = load i8, ptr %105, align 1, !tbaa !43
  %120 = getelementptr inbounds i8, ptr %105, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !43
  %122 = getelementptr inbounds i8, ptr %105, i64 2
  %123 = load i8, ptr %122, align 1, !tbaa !43
  %124 = getelementptr inbounds i8, ptr %105, i64 3
  br label %134

125:                                              ; preds = %107
  br i1 %22, label %131, label %126

126:                                              ; preds = %125
  %127 = load i8, ptr %105, align 1, !tbaa !43
  %128 = getelementptr inbounds i8, ptr %105, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !43
  %130 = getelementptr inbounds i8, ptr %105, i64 2
  br label %134

131:                                              ; preds = %125
  %132 = getelementptr inbounds i8, ptr %105, i64 1
  %133 = load i8, ptr %105, align 1, !tbaa !43
  br label %134

134:                                              ; preds = %126, %131, %109, %118
  %135 = phi i8 [ %116, %109 ], [ %123, %118 ], [ %100, %126 ], [ 0, %131 ]
  %136 = phi i8 [ %114, %109 ], [ %121, %118 ], [ %101, %126 ], [ 0, %131 ]
  %137 = phi i8 [ %112, %109 ], [ %119, %118 ], [ %129, %126 ], [ 0, %131 ]
  %138 = phi i8 [ %111, %109 ], [ %102, %118 ], [ %127, %126 ], [ %133, %131 ]
  %139 = phi ptr [ %117, %109 ], [ %124, %118 ], [ %130, %126 ], [ %132, %131 ]
  %140 = zext i8 %135 to i32
  %141 = shl nuw i32 %140, 24
  %142 = zext i8 %136 to i32
  %143 = shl nuw nsw i32 %142, 16
  %144 = or disjoint i32 %143, %141
  %145 = zext i8 %137 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = or disjoint i32 %144, %146
  %148 = zext i8 %138 to i32
  %149 = or disjoint i32 %147, %148
  %150 = getelementptr inbounds i32, ptr %104, i64 1
  store i32 %149, ptr %104, align 4, !tbaa !55
  %151 = add nsw i32 %103, -1
  %152 = icmp ugt ptr %139, %5
  br i1 %152, label %169, label %99, !llvm.loop !71

153:                                              ; preds = %99
  %154 = icmp ugt ptr %105, %5
  br i1 %154, label %169, label %155

155:                                              ; preds = %89, %95, %153, %70
  %156 = phi i8 [ %71, %70 ], [ %100, %153 ], [ %35, %95 ], [ %71, %89 ]
  %157 = phi i8 [ %72, %70 ], [ %101, %153 ], [ %34, %95 ], [ %72, %89 ]
  %158 = phi i8 [ %74, %70 ], [ %102, %153 ], [ %33, %95 ], [ %74, %89 ]
  %159 = phi i32 [ %76, %70 ], [ %97, %153 ], [ %97, %95 ], [ %76, %89 ]
  %160 = phi ptr [ %31, %70 ], [ %104, %153 ], [ %31, %95 ], [ %92, %89 ]
  %161 = phi ptr [ %75, %70 ], [ %105, %153 ], [ %36, %95 ], [ %75, %89 ]
  %162 = icmp sgt i32 %159, 0
  br i1 %162, label %29, label %163, !llvm.loop !72

163:                                              ; preds = %155, %9
  %164 = phi i32 [ %14, %9 ], [ %159, %155 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %191, label %166

166:                                              ; preds = %163
  %167 = sub nsw i32 0, %164
  %168 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %167)
  br label %191

169:                                              ; preds = %153, %29, %134
  %170 = phi ptr [ %150, %134 ], [ %31, %29 ], [ %104, %153 ]
  %171 = load i32, ptr %10, align 8, !tbaa !45
  %172 = load i32, ptr %12, align 4, !tbaa !46
  %173 = mul nsw i32 %172, %171
  %174 = ptrtoint ptr %170 to i64
  %175 = ptrtoint ptr %7 to i64
  %176 = sub i64 %174, %175
  %177 = lshr exact i64 %176, 2
  %178 = trunc i64 %177 to i32
  %179 = icmp eq i32 %173, %178
  br i1 %179, label %189, label %180

180:                                              ; preds = %169
  %181 = sub i32 %173, %178
  %182 = sitofp i32 %181 to float
  %183 = sitofp i32 %173 to float
  %184 = fdiv float %182, %183
  %185 = fmul float %184, 1.000000e+02
  %186 = fpext float %185 to double
  %187 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %186)
  %188 = sext i32 %181 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %170, i8 0, i64 %188, i1 false)
  br label %191

189:                                              ; preds = %169
  %190 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %191

191:                                              ; preds = %189, %180, %163, %166, %4
  ret void
}

declare void @IMB_flipy(ptr noundef) local_unnamed_addr #3

declare void @IMB_convert_rgba_to_abgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 24}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!37, !37, i64 0}
!44 = !{!35, !39, i64 312}
!45 = !{!35, !39, i64 16}
!46 = !{!35, !39, i64 20}
!47 = !{!35, !36, i64 40}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = distinct !{!52, !49, !50}
!53 = distinct !{!53, !49, !50}
!54 = !{i8 0, i8 2}
!55 = !{!39, !39, i64 0}
!56 = distinct !{!56, !49, !50}
!57 = !{ptr @tga_out1, ptr @tga_out2, ptr @tga_out3, ptr @tga_out4}
!58 = distinct !{!58, !49, !50}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = !{!36, !36, i64 0}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
