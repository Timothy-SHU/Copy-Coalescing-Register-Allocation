; ModuleID = 'src/z20.c'
source_filename = "src/z20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }
%struct.ext_gall_type = type { [2 x %struct.LIST], i8, i16, i32, i64, i64, ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"FlushGalley: type(hd) != HEAD!\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FlushGalley: resume found no parent to hd!\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_KILLED: inners!=nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"FlushGalley/ATTACH_INPUT: inners!=nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_NOTARG: inners!=nilobj!\00", align 1
@ForceGalleySym = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"FlushGalley: attach_status\00", align 1
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"FlushGalley: dest_index\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Flush: PRECEDES!\00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"FlushG: UpDims!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"FlushGalley: dest != VCAT or ACAT!\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"FlushGalley: succ_gap != nilobj!\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"component too wide for available space\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"FlushGalley:  tgp!\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"FlushGalley:\00", align 1
@PrintSym = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"FlushGalley: reject print!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"FlushGalley: header under SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"FlushGalley/REJECT: headers!\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: first_link!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FlushGalley/REJECT THR!\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"FlushGalley/REJECT: headers_count!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: dest_index!\00", align 1
@AllowCrossDb = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"error in database file %s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"AttachG: db CLOSURE!\00", align 1
@OldCrossDb = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"FlushGalley: cr is_word(type(tag))!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @FlushGalley(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.CONSTRAINT, align 8
  %5 = alloca %struct.CONSTRAINT, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca [512 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca ptr, align 8
  %17 = alloca [512 x i8], align 16
  %18 = alloca i16, align 2
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %22 = getelementptr inbounds i8, ptr %0, i64 42
  %23 = load i16, ptr %22, align 2
  %24 = lshr i16 %23, 8
  %25 = and i16 %24, 1
  %26 = zext nneg i16 %25 to i32
  %27 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %29 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 6
  %30 = icmp eq i16 %25, 0
  %31 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %32 = xor i32 %26, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %30, i8 17, i8 19
  %35 = zext nneg i16 %25 to i64
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %38 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  %39 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %40 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 15
  %41 = getelementptr inbounds %struct.CONSTRAINT, ptr %5, i64 0, i32 1
  %42 = getelementptr inbounds %struct.CONSTRAINT, ptr %5, i64 0, i32 2
  %43 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 9
  %44 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 10
  %45 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 13
  %46 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 7
  %47 = select i1 %30, i16 8, i16 16
  br label %48

48:                                               ; preds = %2704, %1
  %49 = phi i32 [ undef, %1 ], [ %2705, %2704 ]
  %50 = phi i32 [ undef, %1 ], [ %2706, %2704 ]
  %51 = phi i32 [ 0, %1 ], [ %2707, %2704 ]
  %52 = phi i32 [ undef, %1 ], [ %2708, %2704 ]
  %53 = phi i32 [ undef, %1 ], [ %2709, %2704 ]
  %54 = phi i32 [ undef, %1 ], [ %2710, %2704 ]
  %55 = phi i32 [ undef, %1 ], [ %2711, %2704 ]
  %56 = phi i32 [ undef, %1 ], [ %2712, %2704 ]
  %57 = phi i32 [ undef, %1 ], [ %2713, %2704 ]
  %58 = phi i32 [ undef, %1 ], [ %2714, %2704 ]
  %59 = phi i32 [ undef, %1 ], [ %2715, %2704 ]
  %60 = phi ptr [ undef, %1 ], [ %2716, %2704 ]
  %61 = load i8, ptr %27, align 8, !tbaa !5
  %62 = icmp eq i8 %61, 8
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %65 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %64, ptr noundef nonnull @.str.1) #6
  br label %66

66:                                               ; preds = %63, %48
  %67 = load ptr, ptr %28, align 8, !tbaa !5
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %71 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %70, ptr noundef nonnull @.str.2) #6
  %72 = load ptr, ptr %28, align 8, !tbaa !5
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi ptr [ %67, %66 ], [ %72, %69 ]
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi ptr [ %77, %75 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.word_type, ptr %77, i64 0, i32 1
  %79 = load i8, ptr %78, align 8, !tbaa !5
  switch i8 %79, label %245 [
    i8 0, label %75
    i8 119, label %2748
    i8 120, label %80
    i8 122, label %226
  ]

80:                                               ; preds = %75
  %81 = call i32 @AttachGalley(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %82 = load ptr, ptr %28, align 8, !tbaa !5
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %82, %80 ], [ %85, %83 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.word_type, ptr %85, i64 0, i32 1
  %87 = load i8, ptr %86, align 8, !tbaa !5
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %83, label %89

89:                                               ; preds = %83
  switch i32 %81, label %223 [
    i32 0, label %90
    i32 1, label %96
    i32 2, label %114
    i32 3, label %132
    i32 4, label %136
    i32 5, label %181
  ]

90:                                               ; preds = %89
  %91 = load ptr, ptr %2, align 8, !tbaa !8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %2748, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %95 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %94, ptr noundef nonnull @.str.3) #6
  br label %2748

96:                                               ; preds = %89
  %97 = icmp eq i32 %51, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  br label %101

101:                                              ; preds = %101, %98
  %102 = phi ptr [ %100, %98 ], [ %103, %101 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.word_type, ptr %103, i64 0, i32 1
  %105 = load i8, ptr %104, align 8, !tbaa !5
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %101, label %107

107:                                              ; preds = %101
  call void @FlushGalley(ptr noundef nonnull %103)
  br label %108

108:                                              ; preds = %96, %107
  %109 = load ptr, ptr %2, align 8, !tbaa !8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %2748, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %113 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %112, ptr noundef nonnull @.str.4) #6
  br label %2748

114:                                              ; preds = %89
  %115 = icmp eq i32 %51, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  br label %119

119:                                              ; preds = %119, %116
  %120 = phi ptr [ %118, %116 ], [ %121, %119 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1
  %123 = load i8, ptr %122, align 8, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %119, label %125

125:                                              ; preds = %119
  call void @FlushGalley(ptr noundef nonnull %121)
  br label %126

126:                                              ; preds = %114, %125
  %127 = load ptr, ptr %2, align 8, !tbaa !8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %2748, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %131 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %130, ptr noundef nonnull @.str.5) #6
  br label %2748

132:                                              ; preds = %89
  %133 = load ptr, ptr %2, align 8, !tbaa !8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %1452, label %135

135:                                              ; preds = %132
  call void @FlushInners(ptr noundef nonnull %133, ptr noundef null) #6
  br label %2704

136:                                              ; preds = %89
  %137 = getelementptr inbounds %struct.closure_type, ptr %85, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds %struct.closure_type, ptr %138, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = load ptr, ptr %29, align 8, !tbaa !5
  %142 = icmp eq ptr %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i16, ptr %22, align 2
  %145 = and i16 %144, 4096
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %136
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  br label %150

150:                                              ; preds = %150, %147
  %151 = phi ptr [ %149, %147 ], [ %152, %150 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.word_type, ptr %152, i64 0, i32 1
  %154 = load i8, ptr %153, align 8, !tbaa !5
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %150, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds i8, ptr %85, i64 42
  %158 = load i16, ptr %157, align 2
  %159 = and i16 %158, 1
  %160 = icmp eq i16 %159, 0
  %161 = select i1 %160, i1 %142, i1 false
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = or i16 %158, 1
  store i16 %163, ptr %157, align 2
  %164 = load ptr, ptr %29, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %162, %156
  %166 = phi ptr [ %164, %162 ], [ %141, %156 ]
  %167 = phi i32 [ 1, %162 ], [ %51, %156 ]
  call void @FreeGalley(ptr noundef nonnull %152, ptr noundef %149, ptr noundef nonnull %2, ptr noundef %149, ptr noundef %166) #6
  br label %175

168:                                              ; preds = %136
  %169 = getelementptr inbounds i8, ptr %85, i64 42
  %170 = load i16, ptr %169, align 2
  %171 = and i16 %170, 32
  %172 = icmp ne i16 %171, 0
  %173 = select i1 %172, i1 %142, i1 false
  %174 = select i1 %173, i32 1, i32 %51
  br label %175

175:                                              ; preds = %168, %165
  %176 = phi i32 [ %167, %165 ], [ %174, %168 ]
  call void @DetachGalley(ptr noundef nonnull %0) #6
  call void @KillGalley(ptr noundef nonnull %0, i32 noundef 1) #6
  %177 = load ptr, ptr %2, align 8, !tbaa !8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @FlushInners(ptr noundef nonnull %177, ptr noundef null) #6
  br label %2748

180:                                              ; preds = %175
  call fastcc void @ParentFlush(i32 noundef %176, ptr noundef nonnull %85, i32 noundef %143)
  br label %2748

181:                                              ; preds = %89
  %182 = load i16, ptr %22, align 2
  %183 = and i16 %182, 4096
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.closure_type, ptr %85, i64 0, i32 5
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = getelementptr inbounds %struct.closure_type, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !5
  %190 = load ptr, ptr @ForceGalleySym, align 8, !tbaa !8
  %191 = icmp eq ptr %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %185, %181
  %193 = getelementptr inbounds [2 x %struct.LIST], ptr %85, i64 0, i64 1, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !5
  br label %195

195:                                              ; preds = %195, %192
  %196 = phi ptr [ %194, %192 ], [ %197, %195 ]
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = getelementptr inbounds %struct.word_type, ptr %197, i64 0, i32 1
  %199 = load i8, ptr %198, align 8, !tbaa !5
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %195, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds i8, ptr %85, i64 42
  %203 = load i16, ptr %202, align 2
  %204 = and i16 %203, 1
  %205 = icmp eq i16 %204, 0
  %206 = select i1 %205, i32 1, i32 %51
  %207 = load ptr, ptr %29, align 8, !tbaa !5
  call void @FreeGalley(ptr noundef nonnull %197, ptr noundef %194, ptr noundef nonnull %2, ptr noundef %194, ptr noundef %207) #6
  br label %218

208:                                              ; preds = %185
  %209 = icmp eq i32 %51, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %208
  %211 = getelementptr inbounds i8, ptr %85, i64 42
  %212 = load i16, ptr %211, align 2
  %213 = and i16 %212, 32
  %214 = icmp ne i16 %213, 0
  br label %215

215:                                              ; preds = %210, %208
  %216 = phi i1 [ true, %208 ], [ %214, %210 ]
  %217 = zext i1 %216 to i32
  br label %218

218:                                              ; preds = %215, %201
  %219 = phi i32 [ %206, %201 ], [ %217, %215 ]
  %220 = load ptr, ptr %2, align 8, !tbaa !8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %2704, label %222

222:                                              ; preds = %218
  call void @FlushInners(ptr noundef nonnull %220, ptr noundef null) #6
  br label %2704

223:                                              ; preds = %89
  %224 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %225 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %224, ptr noundef nonnull @.str.6) #6
  br label %250

226:                                              ; preds = %75
  %227 = getelementptr inbounds %struct.closure_type, ptr %77, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !5
  %229 = getelementptr inbounds %struct.closure_type, ptr %228, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !5
  %231 = load ptr, ptr @InputSym, align 8, !tbaa !8
  %232 = icmp eq ptr %230, %231
  br i1 %232, label %233, label %250

233:                                              ; preds = %226
  %234 = icmp eq i32 %51, 0
  br i1 %234, label %2748, label %235

235:                                              ; preds = %233
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %77, i64 0, i64 1, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  br label %238

238:                                              ; preds = %238, %235
  %239 = phi ptr [ %237, %235 ], [ %240, %238 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  %241 = getelementptr inbounds %struct.word_type, ptr %240, i64 0, i32 1
  %242 = load i8, ptr %241, align 8, !tbaa !5
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %238, label %244

244:                                              ; preds = %238
  call void @FlushGalley(ptr noundef nonnull %240)
  br label %2748

245:                                              ; preds = %75
  %246 = zext i8 %79 to i32
  %247 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %248 = call ptr @Image(i32 noundef %246) #6
  %249 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %247, ptr noundef nonnull @.str.8, ptr noundef %248) #6
  br label %250

250:                                              ; preds = %226, %245, %223
  %251 = phi ptr [ %77, %245 ], [ %77, %226 ], [ %85, %223 ]
  %252 = getelementptr inbounds %struct.closure_type, ptr %251, i64 0, i32 5
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  %254 = getelementptr inbounds %struct.word_type, ptr %253, i64 0, i32 2
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 1610612736
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %250
  %259 = or disjoint i32 %255, 536870912
  store i32 %259, ptr %254, align 8
  br label %260

260:                                              ; preds = %258, %250
  %261 = phi i32 [ %259, %258 ], [ %255, %250 ]
  %262 = lshr i32 %261, 16
  %263 = trunc i32 %262 to i16
  %264 = and i16 %47, %263
  %265 = icmp eq i16 %264, 0
  store ptr null, ptr %2, align 8, !tbaa !8
  %266 = load ptr, ptr %31, align 8, !tbaa !5
  %267 = icmp eq ptr %266, %0
  br i1 %267, label %1084, label %268

268:                                              ; preds = %260
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1, i32 1
  %270 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1
  %271 = select i1 %33, ptr %269, ptr %270
  %272 = select i1 %30, ptr %269, ptr %270
  %273 = getelementptr inbounds i8, ptr %251, i64 42
  br label %274

274:                                              ; preds = %268, %1056
  %275 = phi ptr [ %266, %268 ], [ %1073, %1056 ]
  %276 = phi ptr [ null, %268 ], [ %1070, %1056 ]
  %277 = phi i32 [ 0, %268 ], [ %1069, %1056 ]
  %278 = phi i32 [ %58, %268 ], [ %1068, %1056 ]
  %279 = phi i32 [ %57, %268 ], [ %1067, %1056 ]
  %280 = phi i32 [ %56, %268 ], [ %1066, %1056 ]
  %281 = phi i32 [ %55, %268 ], [ %1065, %1056 ]
  %282 = phi i32 [ %54, %268 ], [ %1064, %1056 ]
  %283 = phi ptr [ null, %268 ], [ %1063, %1056 ]
  %284 = phi i32 [ %53, %268 ], [ %1062, %1056 ]
  %285 = phi i32 [ 0, %268 ], [ %1061, %1056 ]
  %286 = phi i32 [ %52, %268 ], [ %1060, %1056 ]
  %287 = phi i32 [ %51, %268 ], [ %1059, %1056 ]
  %288 = phi i32 [ %50, %268 ], [ %1058, %1056 ]
  %289 = phi i32 [ %49, %268 ], [ %1057, %1056 ]
  br label %290

290:                                              ; preds = %274, %290
  %291 = phi ptr [ %293, %290 ], [ %275, %274 ]
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  %294 = getelementptr inbounds %struct.word_type, ptr %293, i64 0, i32 1
  %295 = load i8, ptr %294, align 8, !tbaa !5
  switch i8 %295, label %307 [
    i8 0, label %290
    i8 9, label %296
  ]

296:                                              ; preds = %290
  store ptr %293, ptr %3, align 8, !tbaa !8
  %297 = getelementptr inbounds %struct.LIST, ptr %293, i64 0, i32 1
  %298 = select i1 %30, ptr %297, ptr %293
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  br label %300

300:                                              ; preds = %300, %296
  %301 = phi ptr [ %299, %296 ], [ %303, %300 ]
  %302 = getelementptr inbounds [2 x %struct.LIST], ptr %301, i64 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  %304 = getelementptr inbounds %struct.word_type, ptr %303, i64 0, i32 1
  %305 = load i8, ptr %304, align 8, !tbaa !5
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %300, label %307

307:                                              ; preds = %290, %300
  %308 = phi i8 [ %305, %300 ], [ %295, %290 ]
  %309 = phi ptr [ %303, %300 ], [ %293, %290 ]
  store ptr %309, ptr %3, align 8, !tbaa !8
  switch i8 %308, label %1051 [
    i8 1, label %310
    i8 -120, label %338
    i8 -119, label %338
    i8 -118, label %338
    i8 -123, label %338
    i8 -127, label %338
    i8 -126, label %338
    i8 -124, label %338
    i8 -122, label %338
    i8 127, label %338
    i8 -128, label %338
    i8 -125, label %338
    i8 -121, label %338
    i8 124, label %345
    i8 120, label %345
    i8 122, label %1452
    i8 121, label %1452
    i8 125, label %410
    i8 20, label %1056
    i8 21, label %1056
    i8 22, label %1056
    i8 23, label %1056
    i8 5, label %658
    i8 4, label %658
    i8 11, label %658
    i8 12, label %658
    i8 24, label %658
    i8 25, label %658
    i8 26, label %658
    i8 27, label %658
    i8 28, label %658
    i8 29, label %658
    i8 30, label %658
    i8 31, label %658
    i8 32, label %658
    i8 33, label %658
    i8 36, label %658
    i8 37, label %658
    i8 38, label %658
    i8 39, label %658
    i8 40, label %658
    i8 41, label %658
    i8 44, label %658
    i8 42, label %658
    i8 43, label %658
    i8 45, label %658
    i8 46, label %658
    i8 50, label %658
    i8 51, label %658
    i8 34, label %658
    i8 35, label %658
    i8 94, label %658
    i8 95, label %658
    i8 96, label %658
    i8 97, label %658
    i8 98, label %658
    i8 99, label %658
    i8 17, label %658
    i8 18, label %658
    i8 19, label %658
    i8 15, label %658
    i8 2, label %658
    i8 6, label %658
    i8 7, label %658
  ]

310:                                              ; preds = %307
  %311 = load i32, ptr %254, align 8
  %312 = and i32 %311, 1610612736
  %313 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 2
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, -1610612737
  %316 = or disjoint i32 %315, %312
  store i32 %316, ptr %313, align 8
  store ptr %309, ptr %7, align 8, !tbaa !8
  br i1 %265, label %317, label %325

317:                                              ; preds = %310
  %318 = icmp eq ptr %276, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.gapobj_type, ptr %309, i64 0, i32 3
  %321 = load i16, ptr %320, align 4
  %322 = and i16 %321, 128
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %310, %317, %319, %324
  %326 = phi i32 [ %289, %319 ], [ %282, %324 ], [ %289, %317 ], [ %289, %310 ]
  %327 = phi i32 [ %288, %319 ], [ %281, %324 ], [ %288, %317 ], [ %288, %310 ]
  %328 = phi i32 [ %286, %319 ], [ %279, %324 ], [ %286, %317 ], [ %286, %310 ]
  %329 = phi i32 [ %284, %319 ], [ %278, %324 ], [ %284, %317 ], [ %284, %310 ]
  %330 = phi ptr [ %283, %319 ], [ %275, %324 ], [ %283, %317 ], [ %275, %310 ]
  %331 = getelementptr inbounds %struct.gapobj_type, ptr %309, i64 0, i32 3
  %332 = load i16, ptr %331, align 4
  %333 = and i16 %332, 512
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %335, label %1056

335:                                              ; preds = %325
  %336 = load i16, ptr %22, align 2
  %337 = or i16 %336, 32
  store i16 %337, ptr %22, align 2
  br label %1056

338:                                              ; preds = %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307
  %339 = load i32, ptr %254, align 8
  %340 = and i32 %339, 1610612736
  %341 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 2
  %342 = load i32, ptr %341, align 8
  %343 = and i32 %342, -1610612737
  %344 = or disjoint i32 %343, %340
  store i32 %344, ptr %341, align 8
  br label %1056

345:                                              ; preds = %307, %307
  %346 = load ptr, ptr %2, align 8, !tbaa !8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %366

348:                                              ; preds = %345
  %349 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %350 = zext i8 %349 to i32
  store i32 %350, ptr @zz_size, align 4, !tbaa !10
  %351 = zext i8 %349 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !8
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %348
  %356 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %357 = call ptr @GetMemory(i32 noundef %350, ptr noundef %356) #6
  store ptr %357, ptr @zz_hold, align 8, !tbaa !8
  br label %360

358:                                              ; preds = %348
  store ptr %353, ptr @zz_hold, align 8, !tbaa !8
  %359 = load ptr, ptr %353, align 8, !tbaa !5
  store ptr %359, ptr %352, align 8, !tbaa !8
  br label %360

360:                                              ; preds = %355, %358
  %361 = phi ptr [ %357, %355 ], [ %353, %358 ]
  %362 = getelementptr inbounds %struct.word_type, ptr %361, i64 0, i32 1
  store i8 17, ptr %362, align 8, !tbaa !5
  %363 = getelementptr inbounds [2 x %struct.LIST], ptr %361, i64 0, i64 1, i32 1
  store ptr %361, ptr %363, align 8, !tbaa !5
  %364 = getelementptr inbounds [2 x %struct.LIST], ptr %361, i64 0, i64 1
  store ptr %361, ptr %364, align 8, !tbaa !5
  %365 = getelementptr inbounds %struct.LIST, ptr %361, i64 0, i32 1
  store ptr %361, ptr %365, align 8, !tbaa !5
  store ptr %361, ptr %361, align 8, !tbaa !5
  store ptr %361, ptr %2, align 8, !tbaa !8
  br label %366

366:                                              ; preds = %360, %345
  %367 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %368 = zext i8 %367 to i32
  store i32 %368, ptr @zz_size, align 4, !tbaa !10
  %369 = zext i8 %367 to i64
  %370 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !8
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %366
  %374 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %375 = call ptr @GetMemory(i32 noundef %368, ptr noundef %374) #6
  br label %378

376:                                              ; preds = %366
  store ptr %371, ptr @zz_hold, align 8, !tbaa !8
  %377 = load ptr, ptr %371, align 8, !tbaa !5
  store ptr %377, ptr %370, align 8, !tbaa !8
  br label %378

378:                                              ; preds = %373, %376
  %379 = phi ptr [ %375, %373 ], [ %371, %376 ]
  %380 = getelementptr inbounds %struct.word_type, ptr %379, i64 0, i32 1
  store i8 0, ptr %380, align 8, !tbaa !5
  %381 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1, i32 1
  store ptr %379, ptr %381, align 8, !tbaa !5
  %382 = getelementptr inbounds [2 x %struct.LIST], ptr %379, i64 0, i64 1
  store ptr %379, ptr %382, align 8, !tbaa !5
  %383 = getelementptr inbounds %struct.LIST, ptr %379, i64 0, i32 1
  store ptr %379, ptr %383, align 8, !tbaa !5
  store ptr %379, ptr %379, align 8, !tbaa !5
  store ptr %379, ptr @xx_link, align 8, !tbaa !8
  store ptr %379, ptr @zz_res, align 8, !tbaa !8
  %384 = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %384, ptr @zz_hold, align 8, !tbaa !8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %397, label %386

386:                                              ; preds = %378
  %387 = load ptr, ptr %384, align 8, !tbaa !5
  store ptr %387, ptr @zz_tmp, align 8, !tbaa !8
  %388 = load ptr, ptr %379, align 8, !tbaa !5
  store ptr %388, ptr %384, align 8, !tbaa !5
  %389 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %390 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %391 = load ptr, ptr %390, align 8, !tbaa !5
  %392 = getelementptr inbounds %struct.LIST, ptr %391, i64 0, i32 1
  store ptr %389, ptr %392, align 8, !tbaa !5
  %393 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %393, ptr %390, align 8, !tbaa !5
  %394 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %395 = getelementptr inbounds %struct.LIST, ptr %393, i64 0, i32 1
  store ptr %394, ptr %395, align 8, !tbaa !5
  %396 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %397

397:                                              ; preds = %378, %386
  %398 = phi ptr [ %379, %378 ], [ %396, %386 ]
  store ptr %398, ptr @zz_res, align 8, !tbaa !8
  %399 = load ptr, ptr %3, align 8, !tbaa !8
  store ptr %399, ptr @zz_hold, align 8, !tbaa !8
  %400 = icmp eq ptr %399, null
  %401 = icmp eq ptr %398, null
  %402 = select i1 %400, i1 true, i1 %401
  br i1 %402, label %1056, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds [2 x %struct.LIST], ptr %399, i64 0, i64 1
  %405 = load ptr, ptr %404, align 8, !tbaa !5
  store ptr %405, ptr @zz_tmp, align 8, !tbaa !8
  %406 = getelementptr inbounds [2 x %struct.LIST], ptr %398, i64 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !5
  store ptr %407, ptr %404, align 8, !tbaa !5
  %408 = getelementptr inbounds [2 x %struct.LIST], ptr %407, i64 0, i64 1, i32 1
  store ptr %399, ptr %408, align 8, !tbaa !5
  store ptr %405, ptr %406, align 8, !tbaa !5
  %409 = getelementptr inbounds [2 x %struct.LIST], ptr %405, i64 0, i64 1, i32 1
  store ptr %398, ptr %409, align 8, !tbaa !5
  br label %1056

410:                                              ; preds = %307
  %411 = getelementptr inbounds %struct.LIST, ptr %309, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  br label %413

413:                                              ; preds = %413, %410
  %414 = phi ptr [ %412, %410 ], [ %416, %413 ]
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1
  %416 = load ptr, ptr %415, align 8, !tbaa !5
  %417 = getelementptr inbounds %struct.word_type, ptr %416, i64 0, i32 1
  %418 = load i8, ptr %417, align 8, !tbaa !5
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %413, label %420

420:                                              ; preds = %413
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %416, i64 0, i64 1, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !5
  %424 = load ptr, ptr %421, align 8, !tbaa !5
  %425 = icmp eq ptr %423, %424
  br i1 %425, label %426, label %476

426:                                              ; preds = %420
  %427 = load ptr, ptr %275, align 8, !tbaa !5
  %428 = getelementptr inbounds %struct.LIST, ptr %427, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !5
  store ptr %429, ptr @xx_link, align 8, !tbaa !8
  %430 = getelementptr inbounds [2 x %struct.LIST], ptr %429, i64 0, i64 1, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !5
  %432 = icmp eq ptr %431, %429
  br i1 %432, label %438, label %433

433:                                              ; preds = %426
  store ptr %431, ptr @zz_res, align 8, !tbaa !8
  %434 = getelementptr inbounds [2 x %struct.LIST], ptr %429, i64 0, i64 1
  %435 = load ptr, ptr %434, align 8, !tbaa !5
  %436 = getelementptr inbounds [2 x %struct.LIST], ptr %431, i64 0, i64 1
  store ptr %435, ptr %436, align 8, !tbaa !5
  %437 = getelementptr inbounds [2 x %struct.LIST], ptr %435, i64 0, i64 1, i32 1
  store ptr %431, ptr %437, align 8, !tbaa !5
  store ptr %429, ptr %430, align 8, !tbaa !5
  store ptr %429, ptr %434, align 8, !tbaa !5
  br label %438

438:                                              ; preds = %426, %433
  %439 = phi ptr [ %431, %433 ], [ null, %426 ]
  store ptr %439, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %429, ptr @zz_hold, align 8, !tbaa !8
  %440 = getelementptr inbounds %struct.LIST, ptr %429, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !5
  %442 = icmp eq ptr %441, %429
  br i1 %442, label %451, label %443

443:                                              ; preds = %438
  store ptr %441, ptr @zz_res, align 8, !tbaa !8
  %444 = load ptr, ptr %429, align 8, !tbaa !5
  store ptr %444, ptr %441, align 8, !tbaa !5
  %445 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %446 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %447 = load ptr, ptr %446, align 8, !tbaa !5
  %448 = getelementptr inbounds %struct.LIST, ptr %447, i64 0, i32 1
  store ptr %445, ptr %448, align 8, !tbaa !5
  %449 = getelementptr inbounds %struct.LIST, ptr %446, i64 0, i32 1
  store ptr %446, ptr %449, align 8, !tbaa !5
  store ptr %446, ptr %446, align 8, !tbaa !5
  %450 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %451

451:                                              ; preds = %438, %443
  %452 = phi ptr [ %429, %438 ], [ %450, %443 ]
  store ptr %452, ptr @zz_hold, align 8, !tbaa !8
  %453 = getelementptr inbounds %struct.word_type, ptr %452, i64 0, i32 1
  %454 = load i8, ptr %453, align 8, !tbaa !5
  %455 = add i8 %454, -11
  %456 = icmp ult i8 %455, 2
  %457 = getelementptr inbounds %struct.word_type, ptr %452, i64 0, i32 1, i32 0, i32 1
  %458 = zext i8 %454 to i64
  %459 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %458
  %460 = select i1 %456, ptr %457, ptr %459
  %461 = load i8, ptr %460, align 1, !tbaa !5
  %462 = zext i8 %461 to i32
  store i32 %462, ptr @zz_size, align 4, !tbaa !10
  %463 = zext i8 %461 to i64
  %464 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !8
  store ptr %465, ptr %452, align 8, !tbaa !5
  %466 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %467 = load i32, ptr @zz_size, align 4, !tbaa !10
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %468
  store ptr %466, ptr %469, align 8, !tbaa !8
  %470 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %471 = getelementptr inbounds [2 x %struct.LIST], ptr %470, i64 0, i64 1, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !5
  %473 = icmp eq ptr %472, %470
  br i1 %473, label %474, label %1056

474:                                              ; preds = %451
  %475 = call i32 @DisposeObject(ptr noundef nonnull %470) #6
  br label %1056

476:                                              ; preds = %420, %476
  %477 = phi ptr [ %478, %476 ], [ %423, %420 ]
  %478 = load ptr, ptr %477, align 8, !tbaa !5
  %479 = getelementptr inbounds %struct.word_type, ptr %478, i64 0, i32 1
  %480 = load i8, ptr %479, align 8, !tbaa !5
  switch i8 %480, label %481 [
    i8 0, label %476
    i8 124, label %484
  ]

481:                                              ; preds = %476
  %482 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %483 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %482, ptr noundef nonnull @.str.10) #6
  br label %484

484:                                              ; preds = %476, %481
  %485 = call i32 @CheckComponentOrder(ptr noundef nonnull %478, ptr noundef %251) #6
  switch i32 %485, label %1056 [
    i32 157, label %486
    i32 155, label %653
    i32 156, label %1452
  ]

486:                                              ; preds = %484
  store ptr %478, ptr @xx_hold, align 8, !tbaa !8
  %487 = getelementptr inbounds [2 x %struct.LIST], ptr %478, i64 0, i64 1, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !5
  %489 = icmp eq ptr %488, %478
  br i1 %489, label %490, label %495

490:                                              ; preds = %517, %486
  %491 = phi ptr [ %478, %486 ], [ %536, %517 ]
  %492 = getelementptr inbounds %struct.LIST, ptr %491, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !5
  %494 = icmp eq ptr %493, %491
  br i1 %494, label %585, label %540

495:                                              ; preds = %486, %517
  %496 = phi ptr [ %538, %517 ], [ %488, %486 ]
  store ptr %496, ptr @xx_link, align 8, !tbaa !8
  %497 = getelementptr inbounds [2 x %struct.LIST], ptr %496, i64 0, i64 1, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !5
  %499 = icmp eq ptr %498, %496
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  store ptr %498, ptr @zz_res, align 8, !tbaa !8
  %501 = getelementptr inbounds [2 x %struct.LIST], ptr %496, i64 0, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !5
  %503 = getelementptr inbounds [2 x %struct.LIST], ptr %498, i64 0, i64 1
  store ptr %502, ptr %503, align 8, !tbaa !5
  %504 = getelementptr inbounds [2 x %struct.LIST], ptr %502, i64 0, i64 1, i32 1
  store ptr %498, ptr %504, align 8, !tbaa !5
  store ptr %496, ptr %497, align 8, !tbaa !5
  store ptr %496, ptr %501, align 8, !tbaa !5
  br label %505

505:                                              ; preds = %495, %500
  store ptr %496, ptr @zz_hold, align 8, !tbaa !8
  %506 = getelementptr inbounds %struct.LIST, ptr %496, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !5
  %508 = icmp eq ptr %507, %496
  br i1 %508, label %517, label %509

509:                                              ; preds = %505
  store ptr %507, ptr @zz_res, align 8, !tbaa !8
  %510 = load ptr, ptr %496, align 8, !tbaa !5
  store ptr %510, ptr %507, align 8, !tbaa !5
  %511 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %512 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %513 = load ptr, ptr %512, align 8, !tbaa !5
  %514 = getelementptr inbounds %struct.LIST, ptr %513, i64 0, i32 1
  store ptr %511, ptr %514, align 8, !tbaa !5
  %515 = getelementptr inbounds %struct.LIST, ptr %512, i64 0, i32 1
  store ptr %512, ptr %515, align 8, !tbaa !5
  store ptr %512, ptr %512, align 8, !tbaa !5
  %516 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %517

517:                                              ; preds = %505, %509
  %518 = phi ptr [ %496, %505 ], [ %516, %509 ]
  store ptr %518, ptr @zz_hold, align 8, !tbaa !8
  %519 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 1
  %520 = load i8, ptr %519, align 8, !tbaa !5
  %521 = add i8 %520, -11
  %522 = icmp ult i8 %521, 2
  %523 = getelementptr inbounds %struct.word_type, ptr %518, i64 0, i32 1, i32 0, i32 1
  %524 = zext i8 %520 to i64
  %525 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %524
  %526 = select i1 %522, ptr %523, ptr %525
  %527 = load i8, ptr %526, align 1, !tbaa !5
  %528 = zext i8 %527 to i32
  store i32 %528, ptr @zz_size, align 4, !tbaa !10
  %529 = zext i8 %527 to i64
  %530 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !8
  store ptr %531, ptr %518, align 8, !tbaa !5
  %532 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %533 = load i32, ptr @zz_size, align 4, !tbaa !10
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %534
  store ptr %532, ptr %535, align 8, !tbaa !8
  %536 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %537 = getelementptr inbounds [2 x %struct.LIST], ptr %536, i64 0, i64 1, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !5
  %539 = icmp eq ptr %538, %536
  br i1 %539, label %490, label %495

540:                                              ; preds = %490, %562
  %541 = phi ptr [ %583, %562 ], [ %493, %490 ]
  store ptr %541, ptr @xx_link, align 8, !tbaa !8
  %542 = getelementptr inbounds [2 x %struct.LIST], ptr %541, i64 0, i64 1, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !5
  %544 = icmp eq ptr %543, %541
  br i1 %544, label %550, label %545

545:                                              ; preds = %540
  store ptr %543, ptr @zz_res, align 8, !tbaa !8
  %546 = getelementptr inbounds [2 x %struct.LIST], ptr %541, i64 0, i64 1
  %547 = load ptr, ptr %546, align 8, !tbaa !5
  %548 = getelementptr inbounds [2 x %struct.LIST], ptr %543, i64 0, i64 1
  store ptr %547, ptr %548, align 8, !tbaa !5
  %549 = getelementptr inbounds [2 x %struct.LIST], ptr %547, i64 0, i64 1, i32 1
  store ptr %543, ptr %549, align 8, !tbaa !5
  store ptr %541, ptr %542, align 8, !tbaa !5
  store ptr %541, ptr %546, align 8, !tbaa !5
  br label %550

550:                                              ; preds = %540, %545
  store ptr %541, ptr @zz_hold, align 8, !tbaa !8
  %551 = getelementptr inbounds %struct.LIST, ptr %541, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !5
  %553 = icmp eq ptr %552, %541
  br i1 %553, label %562, label %554

554:                                              ; preds = %550
  store ptr %552, ptr @zz_res, align 8, !tbaa !8
  %555 = load ptr, ptr %541, align 8, !tbaa !5
  store ptr %555, ptr %552, align 8, !tbaa !5
  %556 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %557 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %558 = load ptr, ptr %557, align 8, !tbaa !5
  %559 = getelementptr inbounds %struct.LIST, ptr %558, i64 0, i32 1
  store ptr %556, ptr %559, align 8, !tbaa !5
  %560 = getelementptr inbounds %struct.LIST, ptr %557, i64 0, i32 1
  store ptr %557, ptr %560, align 8, !tbaa !5
  store ptr %557, ptr %557, align 8, !tbaa !5
  %561 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %562

562:                                              ; preds = %550, %554
  %563 = phi ptr [ %541, %550 ], [ %561, %554 ]
  store ptr %563, ptr @zz_hold, align 8, !tbaa !8
  %564 = getelementptr inbounds %struct.word_type, ptr %563, i64 0, i32 1
  %565 = load i8, ptr %564, align 8, !tbaa !5
  %566 = add i8 %565, -11
  %567 = icmp ult i8 %566, 2
  %568 = getelementptr inbounds %struct.word_type, ptr %563, i64 0, i32 1, i32 0, i32 1
  %569 = zext i8 %565 to i64
  %570 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %569
  %571 = select i1 %567, ptr %568, ptr %570
  %572 = load i8, ptr %571, align 1, !tbaa !5
  %573 = zext i8 %572 to i32
  store i32 %573, ptr @zz_size, align 4, !tbaa !10
  %574 = zext i8 %572 to i64
  %575 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %574
  %576 = load ptr, ptr %575, align 8, !tbaa !8
  store ptr %576, ptr %563, align 8, !tbaa !5
  %577 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %578 = load i32, ptr @zz_size, align 4, !tbaa !10
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %579
  store ptr %577, ptr %580, align 8, !tbaa !8
  %581 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %582 = getelementptr inbounds %struct.LIST, ptr %581, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !5
  %584 = icmp eq ptr %583, %581
  br i1 %584, label %585, label %540

585:                                              ; preds = %562, %490
  %586 = phi ptr [ %491, %490 ], [ %581, %562 ]
  store ptr %586, ptr @zz_hold, align 8, !tbaa !8
  %587 = getelementptr inbounds %struct.word_type, ptr %586, i64 0, i32 1
  %588 = load i8, ptr %587, align 8, !tbaa !5
  %589 = add i8 %588, -11
  %590 = icmp ult i8 %589, 2
  %591 = getelementptr inbounds %struct.word_type, ptr %586, i64 0, i32 1, i32 0, i32 1
  %592 = zext i8 %588 to i64
  %593 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %592
  %594 = select i1 %590, ptr %591, ptr %593
  %595 = load i8, ptr %594, align 1, !tbaa !5
  %596 = zext i8 %595 to i32
  store i32 %596, ptr @zz_size, align 4, !tbaa !10
  %597 = zext i8 %595 to i64
  %598 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %597
  %599 = load ptr, ptr %598, align 8, !tbaa !8
  store ptr %599, ptr %586, align 8, !tbaa !5
  %600 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %601 = load i32, ptr @zz_size, align 4, !tbaa !10
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %602
  store ptr %600, ptr %603, align 8, !tbaa !8
  %604 = load ptr, ptr %275, align 8, !tbaa !5
  %605 = getelementptr inbounds %struct.LIST, ptr %604, i64 0, i32 1
  %606 = load ptr, ptr %605, align 8, !tbaa !5
  store ptr %606, ptr @xx_link, align 8, !tbaa !8
  %607 = getelementptr inbounds [2 x %struct.LIST], ptr %606, i64 0, i64 1, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !5
  %609 = icmp eq ptr %608, %606
  br i1 %609, label %615, label %610

610:                                              ; preds = %585
  store ptr %608, ptr @zz_res, align 8, !tbaa !8
  %611 = getelementptr inbounds [2 x %struct.LIST], ptr %606, i64 0, i64 1
  %612 = load ptr, ptr %611, align 8, !tbaa !5
  %613 = getelementptr inbounds [2 x %struct.LIST], ptr %608, i64 0, i64 1
  store ptr %612, ptr %613, align 8, !tbaa !5
  %614 = getelementptr inbounds [2 x %struct.LIST], ptr %612, i64 0, i64 1, i32 1
  store ptr %608, ptr %614, align 8, !tbaa !5
  store ptr %606, ptr %607, align 8, !tbaa !5
  store ptr %606, ptr %611, align 8, !tbaa !5
  br label %615

615:                                              ; preds = %585, %610
  %616 = phi ptr [ %608, %610 ], [ null, %585 ]
  store ptr %616, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %606, ptr @zz_hold, align 8, !tbaa !8
  %617 = getelementptr inbounds %struct.LIST, ptr %606, i64 0, i32 1
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  %619 = icmp eq ptr %618, %606
  br i1 %619, label %628, label %620

620:                                              ; preds = %615
  store ptr %618, ptr @zz_res, align 8, !tbaa !8
  %621 = load ptr, ptr %606, align 8, !tbaa !5
  store ptr %621, ptr %618, align 8, !tbaa !5
  %622 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %623 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %624 = load ptr, ptr %623, align 8, !tbaa !5
  %625 = getelementptr inbounds %struct.LIST, ptr %624, i64 0, i32 1
  store ptr %622, ptr %625, align 8, !tbaa !5
  %626 = getelementptr inbounds %struct.LIST, ptr %623, i64 0, i32 1
  store ptr %623, ptr %626, align 8, !tbaa !5
  store ptr %623, ptr %623, align 8, !tbaa !5
  %627 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %628

628:                                              ; preds = %615, %620
  %629 = phi ptr [ %606, %615 ], [ %627, %620 ]
  store ptr %629, ptr @zz_hold, align 8, !tbaa !8
  %630 = getelementptr inbounds %struct.word_type, ptr %629, i64 0, i32 1
  %631 = load i8, ptr %630, align 8, !tbaa !5
  %632 = add i8 %631, -11
  %633 = icmp ult i8 %632, 2
  %634 = getelementptr inbounds %struct.word_type, ptr %629, i64 0, i32 1, i32 0, i32 1
  %635 = zext i8 %631 to i64
  %636 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %635
  %637 = select i1 %633, ptr %634, ptr %636
  %638 = load i8, ptr %637, align 1, !tbaa !5
  %639 = zext i8 %638 to i32
  store i32 %639, ptr @zz_size, align 4, !tbaa !10
  %640 = zext i8 %638 to i64
  %641 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !8
  store ptr %642, ptr %629, align 8, !tbaa !5
  %643 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %644 = load i32, ptr @zz_size, align 4, !tbaa !10
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %645
  store ptr %643, ptr %646, align 8, !tbaa !8
  %647 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %648 = getelementptr inbounds [2 x %struct.LIST], ptr %647, i64 0, i64 1, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !5
  %650 = icmp eq ptr %649, %647
  br i1 %650, label %651, label %1056

651:                                              ; preds = %628
  %652 = call i32 @DisposeObject(ptr noundef nonnull %647) #6
  br label %1056

653:                                              ; preds = %484
  %654 = load ptr, ptr %39, align 8, !tbaa !5
  %655 = icmp eq ptr %654, null
  br i1 %655, label %1163, label %656

656:                                              ; preds = %653
  %657 = call i32 @DisposeObject(ptr noundef nonnull %654) #6
  store ptr null, ptr %39, align 8, !tbaa !5
  br label %1163

658:                                              ; preds = %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307, %307
  %659 = load i32, ptr %254, align 8
  %660 = and i32 %659, 1610612736
  %661 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 2
  %662 = load i32, ptr %661, align 8
  %663 = and i32 %662, -1610612737
  %664 = or disjoint i32 %663, %660
  store i32 %664, ptr %661, align 8
  br i1 %30, label %694, label %665

665:                                              ; preds = %658
  %666 = getelementptr inbounds %struct.LIST, ptr %275, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !5
  %668 = icmp eq ptr %667, %0
  br i1 %668, label %690, label %669

669:                                              ; preds = %665, %685
  %670 = phi ptr [ %688, %685 ], [ %667, %665 ]
  br label %671

671:                                              ; preds = %669, %671
  %672 = phi ptr [ %674, %671 ], [ %670, %669 ]
  %673 = getelementptr inbounds [2 x %struct.LIST], ptr %672, i64 0, i64 1
  %674 = load ptr, ptr %673, align 8, !tbaa !5
  %675 = getelementptr inbounds %struct.word_type, ptr %674, i64 0, i32 1
  %676 = load i8, ptr %675, align 8, !tbaa !5
  switch i8 %676, label %685 [
    i8 0, label %671
    i8 121, label %677
    i8 122, label %677
    i8 1, label %678
  ]

677:                                              ; preds = %671, %671
  store ptr %674, ptr %3, align 8, !tbaa !8
  br label %1452

678:                                              ; preds = %671
  %679 = getelementptr inbounds %struct.gapobj_type, ptr %674, i64 0, i32 3
  %680 = load i16, ptr %679, align 4
  %681 = and i16 %680, 512
  %682 = icmp eq i16 %681, 0
  br i1 %682, label %683, label %685

683:                                              ; preds = %678
  %684 = load ptr, ptr %0, align 8, !tbaa !5
  br label %685

685:                                              ; preds = %671, %683, %678
  %686 = phi ptr [ %670, %678 ], [ %684, %683 ], [ %670, %671 ]
  %687 = getelementptr inbounds %struct.LIST, ptr %686, i64 0, i32 1
  %688 = load ptr, ptr %687, align 8, !tbaa !5
  %689 = icmp eq ptr %688, %0
  br i1 %689, label %690, label %669

690:                                              ; preds = %685, %665
  %691 = icmp eq i8 %308, 18
  br i1 %691, label %692, label %694

692:                                              ; preds = %690
  %693 = call i32 @VerticalHyphenate(ptr noundef %309) #6
  br label %694

694:                                              ; preds = %690, %692, %658
  br i1 %265, label %695, label %1004

695:                                              ; preds = %694
  %696 = icmp eq ptr %276, null
  br i1 %696, label %697, label %769

697:                                              ; preds = %695
  %698 = load ptr, ptr %271, align 8, !tbaa !5
  %699 = load ptr, ptr %272, align 8, !tbaa !5
  %700 = icmp eq ptr %698, %699
  br i1 %700, label %704, label %701

701:                                              ; preds = %697
  %702 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %703 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %702, ptr noundef nonnull @.str.11) #6
  br label %704

704:                                              ; preds = %701, %697
  %705 = load ptr, ptr %269, align 8, !tbaa !5
  br label %706

706:                                              ; preds = %706, %704
  %707 = phi ptr [ %705, %704 ], [ %708, %706 ]
  %708 = load ptr, ptr %707, align 8, !tbaa !5
  %709 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 1
  %710 = load i8, ptr %709, align 8, !tbaa !5
  %711 = icmp eq i8 %710, 0
  br i1 %711, label %706, label %712

712:                                              ; preds = %706
  %713 = icmp eq i8 %710, %34
  br i1 %713, label %718, label %714

714:                                              ; preds = %712
  %715 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %716 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %715, ptr noundef nonnull @.str.12) #6
  %717 = load ptr, ptr %269, align 8, !tbaa !5
  br label %718

718:                                              ; preds = %712, %714
  %719 = phi ptr [ %705, %712 ], [ %717, %714 ]
  call void @SetNeighbours(ptr noundef %719, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #6
  %720 = load ptr, ptr %7, align 8, !tbaa !8
  %721 = icmp eq ptr %720, null
  br i1 %721, label %722, label %731

722:                                              ; preds = %718
  %723 = load ptr, ptr %3, align 8, !tbaa !8
  %724 = getelementptr inbounds %struct.word_type, ptr %723, i64 0, i32 1
  %725 = load i8, ptr %724, align 8, !tbaa !5
  %726 = add i8 %725, -2
  %727 = icmp ult i8 %726, 7
  br i1 %727, label %731, label %728

728:                                              ; preds = %722
  %729 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %730 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %729, ptr noundef nonnull @.str.13) #6
  br label %731

731:                                              ; preds = %722, %728, %718
  %732 = load ptr, ptr %9, align 8, !tbaa !8
  %733 = icmp eq ptr %732, null
  br i1 %733, label %737, label %734

734:                                              ; preds = %731
  %735 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %736 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %735, ptr noundef nonnull @.str.14) #6
  br label %737

737:                                              ; preds = %734, %731
  %738 = load i32, ptr %6, align 4, !tbaa !10
  %739 = icmp eq i32 %738, 153
  br i1 %739, label %749, label %740

740:                                              ; preds = %737
  %741 = load ptr, ptr %3, align 8, !tbaa !8
  %742 = getelementptr inbounds %struct.word_type, ptr %741, i64 0, i32 1
  %743 = load i8, ptr %742, align 8, !tbaa !5
  %744 = add i8 %743, -2
  %745 = icmp ult i8 %744, 7
  br i1 %745, label %749, label %746

746:                                              ; preds = %740
  %747 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %748 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %747, ptr noundef nonnull @.str.15) #6
  br label %749

749:                                              ; preds = %740, %746, %737
  %750 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 3
  %751 = getelementptr inbounds [2 x i32], ptr %750, i64 0, i64 %35
  %752 = load i32, ptr %751, align 4, !tbaa !5
  %753 = getelementptr inbounds %struct.word_type, ptr %708, i64 0, i32 3, i32 1
  %754 = getelementptr inbounds [2 x i32], ptr %753, i64 0, i64 %35
  %755 = load i32, ptr %754, align 4, !tbaa !5
  %756 = getelementptr inbounds [2 x i32], ptr %750, i64 0, i64 %36
  %757 = load i32, ptr %756, align 4, !tbaa !5
  %758 = getelementptr inbounds [2 x i32], ptr %753, i64 0, i64 %36
  %759 = load i32, ptr %758, align 4, !tbaa !5
  call void @Constrained(ptr noundef nonnull %708, ptr noundef nonnull %4, i32 noundef %26, ptr noundef nonnull %11) #6
  call void @Constrained(ptr noundef nonnull %708, ptr noundef nonnull %5, i32 noundef %32, ptr noundef nonnull %11) #6
  %760 = load i32, ptr %4, align 8, !tbaa !12
  %761 = icmp ne i32 %760, 8388607
  %762 = load i32, ptr %37, align 4
  %763 = icmp ne i32 %762, 8388607
  %764 = select i1 %761, i1 true, i1 %763
  %765 = load i32, ptr %38, align 8
  %766 = icmp ne i32 %765, 8388607
  %767 = select i1 %764, i1 true, i1 %766
  %768 = select i1 %767, i32 %762, i32 0
  br label %769

769:                                              ; preds = %749, %695
  %770 = phi i32 [ %757, %749 ], [ %282, %695 ]
  %771 = phi i32 [ %759, %749 ], [ %281, %695 ]
  %772 = phi i32 [ %768, %749 ], [ %280, %695 ]
  %773 = phi i32 [ %755, %749 ], [ %279, %695 ]
  %774 = phi i32 [ %752, %749 ], [ %278, %695 ]
  %775 = phi ptr [ %708, %749 ], [ %276, %695 ]
  %776 = load ptr, ptr %3, align 8, !tbaa !8
  %777 = getelementptr inbounds %struct.word_type, ptr %776, i64 0, i32 1
  %778 = load i8, ptr %777, align 8, !tbaa !5
  %779 = add i8 %778, -2
  %780 = icmp ult i8 %779, 7
  br i1 %780, label %1004, label %781

781:                                              ; preds = %769
  %782 = getelementptr inbounds %struct.word_type, ptr %776, i64 0, i32 3
  %783 = getelementptr inbounds %struct.word_type, ptr %776, i64 0, i32 3, i32 1
  %784 = getelementptr inbounds [2 x i32], ptr %783, i64 0, i64 %35
  %785 = load i32, ptr %784, align 4, !tbaa !5
  %786 = add nsw i32 %785, %773
  %787 = load ptr, ptr %8, align 8, !tbaa !8
  %788 = getelementptr inbounds %struct.word_type, ptr %787, i64 0, i32 3, i32 1
  %789 = getelementptr inbounds [2 x i32], ptr %788, i64 0, i64 %35
  %790 = load i32, ptr %789, align 4, !tbaa !5
  %791 = sub i32 %786, %790
  %792 = getelementptr inbounds [2 x i32], ptr %782, i64 0, i64 %35
  %793 = load i32, ptr %792, align 4, !tbaa !5
  %794 = load ptr, ptr %7, align 8, !tbaa !8
  %795 = getelementptr inbounds %struct.gapobj_type, ptr %794, i64 0, i32 3
  %796 = add nsw i32 %774, %773
  %797 = sub i32 %796, %790
  %798 = call i32 @ActualGap(i32 noundef %790, i32 noundef %793, i32 noundef %785, ptr noundef nonnull %795, i32 noundef %772, i32 noundef %797) #6
  %799 = add nsw i32 %791, %798
  %800 = load ptr, ptr %7, align 8, !tbaa !8
  %801 = getelementptr inbounds %struct.gapobj_type, ptr %800, i64 0, i32 3
  %802 = load i16, ptr %801, align 4
  %803 = and i16 %802, 7168
  %804 = icmp eq i16 %803, 2048
  br i1 %804, label %805, label %812

805:                                              ; preds = %781
  %806 = getelementptr inbounds %struct.gapobj_type, ptr %800, i64 0, i32 3, i32 1
  %807 = load i16, ptr %806, align 2, !tbaa !5
  %808 = icmp sgt i16 %807, 4096
  %809 = load i32, ptr %4, align 8
  %810 = icmp sgt i32 %774, %809
  %811 = select i1 %808, i1 true, i1 %810
  br i1 %811, label %828, label %815

812:                                              ; preds = %781
  %813 = load i32, ptr %4, align 8, !tbaa !12
  %814 = icmp sgt i32 %774, %813
  br i1 %814, label %828, label %815

815:                                              ; preds = %805, %812
  %816 = add nsw i32 %799, %774
  %817 = load i32, ptr %37, align 4, !tbaa !14
  %818 = icmp sgt i32 %816, %817
  %819 = load i32, ptr %38, align 8
  %820 = icmp sgt i32 %799, %819
  %821 = select i1 %818, i1 true, i1 %820
  br i1 %821, label %828, label %822

822:                                              ; preds = %815
  %823 = load ptr, ptr %39, align 8, !tbaa !5
  %824 = icmp eq ptr %823, null
  br i1 %824, label %961, label %825

825:                                              ; preds = %822
  %826 = load i32, ptr %40, align 8, !tbaa !5
  %827 = icmp slt i32 %826, 1
  br i1 %827, label %831, label %961

828:                                              ; preds = %815, %812, %805
  %829 = load ptr, ptr %39, align 8, !tbaa !5
  %830 = icmp eq ptr %829, null
  br i1 %830, label %1163, label %831

831:                                              ; preds = %825, %828
  %832 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 26), align 1, !tbaa !5
  %833 = zext i8 %832 to i32
  store i32 %833, ptr @zz_size, align 4, !tbaa !10
  %834 = zext i8 %832 to i64
  %835 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !8
  %837 = icmp eq ptr %836, null
  br i1 %837, label %838, label %841

838:                                              ; preds = %831
  %839 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %840 = call ptr @GetMemory(i32 noundef %833, ptr noundef %839) #6
  store ptr %840, ptr @zz_hold, align 8, !tbaa !8
  br label %843

841:                                              ; preds = %831
  store ptr %836, ptr @zz_hold, align 8, !tbaa !8
  %842 = load ptr, ptr %836, align 8, !tbaa !5
  store ptr %842, ptr %835, align 8, !tbaa !8
  br label %843

843:                                              ; preds = %838, %841
  %844 = phi ptr [ %840, %838 ], [ %836, %841 ]
  %845 = getelementptr inbounds %struct.word_type, ptr %844, i64 0, i32 1
  store i8 26, ptr %845, align 8, !tbaa !5
  %846 = getelementptr inbounds [2 x %struct.LIST], ptr %844, i64 0, i64 1
  %847 = getelementptr inbounds [2 x %struct.LIST], ptr %844, i64 0, i64 1, i32 1
  store ptr %844, ptr %847, align 8, !tbaa !5
  store ptr %844, ptr %846, align 8, !tbaa !5
  %848 = getelementptr inbounds %struct.LIST, ptr %844, i64 0, i32 1
  store ptr %844, ptr %848, align 8, !tbaa !5
  store ptr %844, ptr %844, align 8, !tbaa !5
  %849 = getelementptr inbounds %struct.closure_type, ptr %844, i64 0, i32 4
  %850 = load <2 x i32>, ptr %4, align 8, !tbaa !10
  store <2 x i32> %850, ptr %849, align 8, !tbaa !5
  %851 = load i32, ptr %38, align 8, !tbaa !15
  %852 = getelementptr inbounds %struct.closure_type, ptr %844, i64 0, i32 4, i32 0, i32 2
  store i32 %851, ptr %852, align 8, !tbaa !5
  %853 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %854 = zext i8 %853 to i32
  store i32 %854, ptr @zz_size, align 4, !tbaa !10
  %855 = zext i8 %853 to i64
  %856 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %855
  %857 = load ptr, ptr %856, align 8, !tbaa !8
  %858 = icmp eq ptr %857, null
  br i1 %858, label %859, label %862

859:                                              ; preds = %843
  %860 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %861 = call ptr @GetMemory(i32 noundef %854, ptr noundef %860) #6
  br label %864

862:                                              ; preds = %843
  store ptr %857, ptr @zz_hold, align 8, !tbaa !8
  %863 = load ptr, ptr %857, align 8, !tbaa !5
  store ptr %863, ptr %856, align 8, !tbaa !8
  br label %864

864:                                              ; preds = %859, %862
  %865 = phi ptr [ %861, %859 ], [ %857, %862 ]
  %866 = getelementptr inbounds %struct.word_type, ptr %865, i64 0, i32 1
  store i8 0, ptr %866, align 8, !tbaa !5
  %867 = getelementptr inbounds [2 x %struct.LIST], ptr %865, i64 0, i64 1, i32 1
  store ptr %865, ptr %867, align 8, !tbaa !5
  %868 = getelementptr inbounds [2 x %struct.LIST], ptr %865, i64 0, i64 1
  store ptr %865, ptr %868, align 8, !tbaa !5
  %869 = getelementptr inbounds %struct.LIST, ptr %865, i64 0, i32 1
  store ptr %865, ptr %869, align 8, !tbaa !5
  store ptr %865, ptr %865, align 8, !tbaa !5
  store ptr %865, ptr @xx_link, align 8, !tbaa !8
  store ptr %865, ptr @zz_res, align 8, !tbaa !8
  %870 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %870, ptr @zz_hold, align 8, !tbaa !8
  %871 = icmp eq ptr %870, null
  br i1 %871, label %872, label %873

872:                                              ; preds = %864
  store ptr %844, ptr @zz_hold, align 8, !tbaa !8
  br label %885

873:                                              ; preds = %864
  %874 = load ptr, ptr %870, align 8, !tbaa !5
  store ptr %874, ptr @zz_tmp, align 8, !tbaa !8
  %875 = load ptr, ptr %865, align 8, !tbaa !5
  store ptr %875, ptr %870, align 8, !tbaa !5
  %876 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %877 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %878 = load ptr, ptr %877, align 8, !tbaa !5
  %879 = getelementptr inbounds %struct.LIST, ptr %878, i64 0, i32 1
  store ptr %876, ptr %879, align 8, !tbaa !5
  %880 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %880, ptr %877, align 8, !tbaa !5
  %881 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %882 = getelementptr inbounds %struct.LIST, ptr %880, i64 0, i32 1
  store ptr %881, ptr %882, align 8, !tbaa !5
  %883 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %883, ptr @zz_res, align 8, !tbaa !8
  store ptr %844, ptr @zz_hold, align 8, !tbaa !8
  %884 = icmp eq ptr %883, null
  br i1 %884, label %892, label %885

885:                                              ; preds = %872, %873
  %886 = phi ptr [ %865, %872 ], [ %883, %873 ]
  %887 = load ptr, ptr %846, align 8, !tbaa !5
  store ptr %887, ptr @zz_tmp, align 8, !tbaa !8
  %888 = getelementptr inbounds [2 x %struct.LIST], ptr %886, i64 0, i64 1
  %889 = load ptr, ptr %888, align 8, !tbaa !5
  store ptr %889, ptr %846, align 8, !tbaa !5
  %890 = getelementptr inbounds [2 x %struct.LIST], ptr %889, i64 0, i64 1, i32 1
  store ptr %844, ptr %890, align 8, !tbaa !5
  store ptr %887, ptr %888, align 8, !tbaa !5
  %891 = getelementptr inbounds [2 x %struct.LIST], ptr %887, i64 0, i64 1, i32 1
  store ptr %886, ptr %891, align 8, !tbaa !5
  br label %892

892:                                              ; preds = %873, %885
  %893 = load ptr, ptr %44, align 8, !tbaa !5
  %894 = icmp eq ptr %893, null
  br i1 %894, label %960, label %895

895:                                              ; preds = %892
  %896 = getelementptr inbounds %struct.LIST, ptr %893, i64 0, i32 1
  %897 = load ptr, ptr %896, align 8, !tbaa !5
  %898 = icmp eq ptr %897, %893
  br i1 %898, label %960, label %899

899:                                              ; preds = %895, %899
  %900 = phi ptr [ %902, %899 ], [ %897, %895 ]
  %901 = getelementptr inbounds [2 x %struct.LIST], ptr %900, i64 0, i64 1
  %902 = load ptr, ptr %901, align 8, !tbaa !5
  %903 = getelementptr inbounds %struct.word_type, ptr %902, i64 0, i32 1
  %904 = load i8, ptr %903, align 8, !tbaa !5
  %905 = icmp eq i8 %904, 0
  br i1 %905, label %899, label %906

906:                                              ; preds = %899
  %907 = getelementptr inbounds %struct.word_type, ptr %902, i64 0, i32 3
  %908 = load i32, ptr %907, align 8, !tbaa !5
  %909 = add nsw i32 %908, -1
  %910 = load i32, ptr %40, align 8, !tbaa !5
  %911 = add nsw i32 %909, %910
  store i32 %911, ptr %40, align 8, !tbaa !5
  %912 = getelementptr inbounds [2 x %struct.LIST], ptr %902, i64 0, i64 1, i32 1
  %913 = load ptr, ptr %912, align 8, !tbaa !5
  store ptr %913, ptr @xx_link, align 8, !tbaa !8
  %914 = getelementptr inbounds [2 x %struct.LIST], ptr %913, i64 0, i64 1, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !5
  %916 = icmp eq ptr %915, %913
  br i1 %916, label %922, label %917

917:                                              ; preds = %906
  store ptr %915, ptr @zz_res, align 8, !tbaa !8
  %918 = getelementptr inbounds [2 x %struct.LIST], ptr %913, i64 0, i64 1
  %919 = load ptr, ptr %918, align 8, !tbaa !5
  %920 = getelementptr inbounds [2 x %struct.LIST], ptr %915, i64 0, i64 1
  store ptr %919, ptr %920, align 8, !tbaa !5
  %921 = getelementptr inbounds [2 x %struct.LIST], ptr %919, i64 0, i64 1, i32 1
  store ptr %915, ptr %921, align 8, !tbaa !5
  store ptr %913, ptr %914, align 8, !tbaa !5
  store ptr %913, ptr %918, align 8, !tbaa !5
  br label %922

922:                                              ; preds = %906, %917
  %923 = phi ptr [ %915, %917 ], [ null, %906 ]
  store ptr %923, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %913, ptr @zz_hold, align 8, !tbaa !8
  %924 = getelementptr inbounds %struct.LIST, ptr %913, i64 0, i32 1
  %925 = load ptr, ptr %924, align 8, !tbaa !5
  %926 = icmp eq ptr %925, %913
  br i1 %926, label %935, label %927

927:                                              ; preds = %922
  store ptr %925, ptr @zz_res, align 8, !tbaa !8
  %928 = load ptr, ptr %913, align 8, !tbaa !5
  store ptr %928, ptr %925, align 8, !tbaa !5
  %929 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %930 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %931 = load ptr, ptr %930, align 8, !tbaa !5
  %932 = getelementptr inbounds %struct.LIST, ptr %931, i64 0, i32 1
  store ptr %929, ptr %932, align 8, !tbaa !5
  %933 = getelementptr inbounds %struct.LIST, ptr %930, i64 0, i32 1
  store ptr %930, ptr %933, align 8, !tbaa !5
  store ptr %930, ptr %930, align 8, !tbaa !5
  %934 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %935

935:                                              ; preds = %922, %927
  %936 = phi ptr [ %913, %922 ], [ %934, %927 ]
  store ptr %936, ptr @zz_hold, align 8, !tbaa !8
  %937 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1
  %938 = load i8, ptr %937, align 8, !tbaa !5
  %939 = add i8 %938, -11
  %940 = icmp ult i8 %939, 2
  %941 = getelementptr inbounds %struct.word_type, ptr %936, i64 0, i32 1, i32 0, i32 1
  %942 = zext i8 %938 to i64
  %943 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %942
  %944 = select i1 %940, ptr %941, ptr %943
  %945 = load i8, ptr %944, align 1, !tbaa !5
  %946 = zext i8 %945 to i32
  store i32 %946, ptr @zz_size, align 4, !tbaa !10
  %947 = zext i8 %945 to i64
  %948 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !8
  store ptr %949, ptr %936, align 8, !tbaa !5
  %950 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %951 = load i32, ptr @zz_size, align 4, !tbaa !10
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %952
  store ptr %950, ptr %953, align 8, !tbaa !8
  %954 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %955 = getelementptr inbounds [2 x %struct.LIST], ptr %954, i64 0, i64 1, i32 1
  %956 = load ptr, ptr %955, align 8, !tbaa !5
  %957 = icmp eq ptr %956, %954
  br i1 %957, label %958, label %1163

958:                                              ; preds = %935
  %959 = call i32 @DisposeObject(ptr noundef nonnull %954) #6
  br label %1163

960:                                              ; preds = %895, %892
  store i32 65535, ptr %40, align 8, !tbaa !5
  br label %1163

961:                                              ; preds = %825, %822
  %962 = load i16, ptr %22, align 2
  %963 = and i16 %962, 32
  %964 = icmp eq i16 %963, 0
  %965 = load ptr, ptr %3, align 8, !tbaa !8
  %966 = getelementptr inbounds %struct.word_type, ptr %965, i64 0, i32 3
  %967 = getelementptr inbounds [2 x i32], ptr %966, i64 0, i64 %36
  %968 = load i32, ptr %967, align 4, !tbaa !5
  br i1 %964, label %974, label %969

969:                                              ; preds = %961
  %970 = getelementptr inbounds %struct.word_type, ptr %965, i64 0, i32 3, i32 1
  %971 = getelementptr inbounds [2 x i32], ptr %970, i64 0, i64 %36
  %972 = load i32, ptr %971, align 4, !tbaa !5
  %973 = add nsw i32 %972, %968
  br label %979

974:                                              ; preds = %961
  %975 = call i32 @llvm.smax.i32(i32 %770, i32 %968)
  %976 = getelementptr inbounds %struct.word_type, ptr %965, i64 0, i32 3, i32 1
  %977 = getelementptr inbounds [2 x i32], ptr %976, i64 0, i64 %36
  %978 = load i32, ptr %977, align 4, !tbaa !5
  br label %979

979:                                              ; preds = %974, %969
  %980 = phi i32 [ %978, %974 ], [ %973, %969 ]
  %981 = phi i32 [ %975, %974 ], [ 0, %969 ]
  %982 = call i32 @llvm.smax.i32(i32 %771, i32 %980)
  %983 = load i32, ptr %5, align 4, !tbaa !12
  %984 = icmp sgt i32 %981, %983
  br i1 %984, label %992, label %985

985:                                              ; preds = %979
  %986 = add nsw i32 %981, %982
  %987 = load i32, ptr %41, align 4, !tbaa !14
  %988 = icmp sgt i32 %986, %987
  %989 = load i32, ptr %42, align 4
  %990 = icmp sgt i32 %982, %989
  %991 = select i1 %988, i1 true, i1 %990
  br i1 %991, label %992, label %1000

992:                                              ; preds = %985, %979
  br i1 %824, label %995, label %993

993:                                              ; preds = %992
  %994 = call i32 @DisposeObject(ptr noundef nonnull %823) #6
  store ptr null, ptr %39, align 8, !tbaa !5
  br label %995

995:                                              ; preds = %993, %992
  br i1 %30, label %1163, label %996

996:                                              ; preds = %995
  %997 = load ptr, ptr %3, align 8, !tbaa !8
  %998 = getelementptr inbounds %struct.word_type, ptr %997, i64 0, i32 1
  %999 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 20, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %998) #6
  br label %1163

1000:                                             ; preds = %985
  store ptr %965, ptr %8, align 8, !tbaa !8
  br i1 %824, label %1004, label %1001

1001:                                             ; preds = %1000
  %1002 = load i32, ptr %40, align 8, !tbaa !5
  %1003 = add nsw i32 %1002, -1
  store i32 %1003, ptr %40, align 8, !tbaa !5
  br label %1004

1004:                                             ; preds = %769, %1001, %1000, %694
  %1005 = phi i32 [ %981, %1001 ], [ %981, %1000 ], [ %282, %694 ], [ %770, %769 ]
  %1006 = phi i32 [ %982, %1001 ], [ %982, %1000 ], [ %281, %694 ], [ %771, %769 ]
  %1007 = phi i32 [ %772, %1001 ], [ %772, %1000 ], [ %280, %694 ], [ %772, %769 ]
  %1008 = phi i32 [ %799, %1001 ], [ %799, %1000 ], [ %279, %694 ], [ %773, %769 ]
  %1009 = phi i32 [ %774, %1001 ], [ %774, %1000 ], [ %278, %694 ], [ %774, %769 ]
  %1010 = phi i32 [ 1, %1001 ], [ 1, %1000 ], [ %277, %694 ], [ %277, %769 ]
  %1011 = phi ptr [ %775, %1001 ], [ %775, %1000 ], [ %276, %694 ], [ %775, %769 ]
  %1012 = icmp eq i32 %287, 0
  br i1 %1012, label %1013, label %1017

1013:                                             ; preds = %1004
  %1014 = load i16, ptr %273, align 2
  %1015 = and i16 %1014, 32
  %1016 = icmp ne i16 %1015, 0
  br label %1017

1017:                                             ; preds = %1013, %1004
  %1018 = phi i1 [ true, %1004 ], [ %1016, %1013 ]
  %1019 = zext i1 %1018 to i32
  %1020 = load ptr, ptr %2, align 8, !tbaa !8
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1056, label %1022

1022:                                             ; preds = %1017
  %1023 = getelementptr inbounds %struct.LIST, ptr %275, i64 0, i32 1
  %1024 = load ptr, ptr %1023, align 8, !tbaa !5
  %1025 = getelementptr inbounds %struct.word_type, ptr %1024, i64 0, i32 1
  %1026 = load i8, ptr %1025, align 8, !tbaa !5
  %1027 = icmp eq i8 %1026, 0
  br i1 %1027, label %1028, label %1045

1028:                                             ; preds = %1022, %1028
  %1029 = phi ptr [ %1031, %1028 ], [ %1024, %1022 ]
  %1030 = getelementptr inbounds [2 x %struct.LIST], ptr %1029, i64 0, i64 1
  %1031 = load ptr, ptr %1030, align 8, !tbaa !5
  %1032 = getelementptr inbounds %struct.word_type, ptr %1031, i64 0, i32 1
  %1033 = load i8, ptr %1032, align 8, !tbaa !5
  switch i8 %1033, label %1034 [
    i8 0, label %1028
    i8 1, label %1037
  ]

1034:                                             ; preds = %1028
  %1035 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1036 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1035, ptr noundef nonnull @.str.17) #6
  br label %1037

1037:                                             ; preds = %1028, %1034
  %1038 = getelementptr inbounds %struct.gapobj_type, ptr %1031, i64 0, i32 3
  %1039 = load i16, ptr %1038, align 4
  %1040 = and i16 %1039, 128
  %1041 = icmp eq i16 %1040, 0
  br i1 %1041, label %1042, label %1056

1042:                                             ; preds = %1037
  %1043 = getelementptr inbounds %struct.LIST, ptr %275, i64 0, i32 1
  %1044 = load ptr, ptr %1043, align 8, !tbaa !5
  br label %1045

1045:                                             ; preds = %1022, %1042
  %1046 = phi ptr [ %1044, %1042 ], [ %1024, %1022 ]
  call void @Promote(ptr noundef %0, ptr noundef %1046, ptr noundef %251, i32 noundef 1) #6
  %1047 = icmp eq i32 %1010, 0
  br i1 %1047, label %1049, label %1048

1048:                                             ; preds = %1045
  call void @AdjustSize(ptr noundef %1011, i32 noundef %1009, i32 noundef %1008, i32 noundef %26) #6
  call void @AdjustSize(ptr noundef %1011, i32 noundef %1005, i32 noundef %1006, i32 noundef %32) #6
  br label %1049

1049:                                             ; preds = %1045, %1048
  %1050 = load ptr, ptr %2, align 8, !tbaa !8
  call void @FlushInners(ptr noundef %1050, ptr noundef %0) #6
  br label %2704

1051:                                             ; preds = %307
  %1052 = zext i8 %308 to i32
  %1053 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1054 = call ptr @Image(i32 noundef %1052) #6
  %1055 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef %1053, ptr noundef nonnull @.str.18, ptr noundef %1054) #6
  br label %1056

1056:                                             ; preds = %1037, %307, %307, %307, %307, %397, %338, %1051, %335, %325, %403, %474, %451, %628, %651, %484, %1017
  %1057 = phi i32 [ %289, %1051 ], [ %289, %1017 ], [ %289, %474 ], [ %289, %451 ], [ %289, %484 ], [ %289, %651 ], [ %289, %628 ], [ %289, %403 ], [ %289, %338 ], [ %326, %325 ], [ %326, %335 ], [ %289, %397 ], [ %289, %307 ], [ %289, %307 ], [ %289, %307 ], [ %289, %307 ], [ %289, %1037 ]
  %1058 = phi i32 [ %288, %1051 ], [ %288, %1017 ], [ %288, %474 ], [ %288, %451 ], [ %288, %484 ], [ %288, %651 ], [ %288, %628 ], [ %288, %403 ], [ %288, %338 ], [ %327, %325 ], [ %327, %335 ], [ %288, %397 ], [ %288, %307 ], [ %288, %307 ], [ %288, %307 ], [ %288, %307 ], [ %288, %1037 ]
  %1059 = phi i32 [ %287, %1051 ], [ %1019, %1017 ], [ %287, %474 ], [ %287, %451 ], [ %287, %484 ], [ %287, %651 ], [ %287, %628 ], [ %287, %403 ], [ %287, %338 ], [ %287, %325 ], [ %287, %335 ], [ %287, %397 ], [ %287, %307 ], [ %287, %307 ], [ %287, %307 ], [ %287, %307 ], [ %1019, %1037 ]
  %1060 = phi i32 [ %286, %1051 ], [ %286, %1017 ], [ %286, %474 ], [ %286, %451 ], [ %286, %484 ], [ %286, %651 ], [ %286, %628 ], [ %286, %403 ], [ %286, %338 ], [ %328, %325 ], [ %328, %335 ], [ %286, %397 ], [ %286, %307 ], [ %286, %307 ], [ %286, %307 ], [ %286, %307 ], [ %286, %1037 ]
  %1061 = phi i32 [ %285, %1051 ], [ %285, %1017 ], [ %285, %474 ], [ %285, %451 ], [ %285, %484 ], [ %285, %651 ], [ %285, %628 ], [ %285, %403 ], [ %285, %338 ], [ %285, %325 ], [ %285, %335 ], [ %285, %397 ], [ 1, %307 ], [ 1, %307 ], [ 1, %307 ], [ 1, %307 ], [ %285, %1037 ]
  %1062 = phi i32 [ %284, %1051 ], [ %284, %1017 ], [ %284, %474 ], [ %284, %451 ], [ %284, %484 ], [ %284, %651 ], [ %284, %628 ], [ %284, %403 ], [ %284, %338 ], [ %329, %325 ], [ %329, %335 ], [ %284, %397 ], [ %284, %307 ], [ %284, %307 ], [ %284, %307 ], [ %284, %307 ], [ %284, %1037 ]
  %1063 = phi ptr [ %283, %1051 ], [ %283, %1017 ], [ %283, %474 ], [ %283, %451 ], [ %283, %484 ], [ %283, %651 ], [ %283, %628 ], [ %283, %403 ], [ %283, %338 ], [ %330, %325 ], [ %330, %335 ], [ %283, %397 ], [ %283, %307 ], [ %283, %307 ], [ %283, %307 ], [ %283, %307 ], [ %283, %1037 ]
  %1064 = phi i32 [ %282, %1051 ], [ %1005, %1017 ], [ %282, %474 ], [ %282, %451 ], [ %282, %484 ], [ %282, %651 ], [ %282, %628 ], [ %282, %403 ], [ %282, %338 ], [ %282, %325 ], [ %282, %335 ], [ %282, %397 ], [ %282, %307 ], [ %282, %307 ], [ %282, %307 ], [ %282, %307 ], [ %1005, %1037 ]
  %1065 = phi i32 [ %281, %1051 ], [ %1006, %1017 ], [ %281, %474 ], [ %281, %451 ], [ %281, %484 ], [ %281, %651 ], [ %281, %628 ], [ %281, %403 ], [ %281, %338 ], [ %281, %325 ], [ %281, %335 ], [ %281, %397 ], [ %281, %307 ], [ %281, %307 ], [ %281, %307 ], [ %281, %307 ], [ %1006, %1037 ]
  %1066 = phi i32 [ %280, %1051 ], [ %1007, %1017 ], [ %280, %474 ], [ %280, %451 ], [ %280, %484 ], [ %280, %651 ], [ %280, %628 ], [ %280, %403 ], [ %280, %338 ], [ %280, %325 ], [ %280, %335 ], [ %280, %397 ], [ %280, %307 ], [ %280, %307 ], [ %280, %307 ], [ %280, %307 ], [ %1007, %1037 ]
  %1067 = phi i32 [ %279, %1051 ], [ %1008, %1017 ], [ %279, %474 ], [ %279, %451 ], [ %279, %484 ], [ %279, %651 ], [ %279, %628 ], [ %279, %403 ], [ %279, %338 ], [ %279, %325 ], [ %279, %335 ], [ %279, %397 ], [ %279, %307 ], [ %279, %307 ], [ %279, %307 ], [ %279, %307 ], [ %1008, %1037 ]
  %1068 = phi i32 [ %278, %1051 ], [ %1009, %1017 ], [ %278, %474 ], [ %278, %451 ], [ %278, %484 ], [ %278, %651 ], [ %278, %628 ], [ %278, %403 ], [ %278, %338 ], [ %278, %325 ], [ %278, %335 ], [ %278, %397 ], [ %278, %307 ], [ %278, %307 ], [ %278, %307 ], [ %278, %307 ], [ %1009, %1037 ]
  %1069 = phi i32 [ %277, %1051 ], [ %1010, %1017 ], [ %277, %474 ], [ %277, %451 ], [ %277, %484 ], [ %277, %651 ], [ %277, %628 ], [ %277, %403 ], [ %277, %338 ], [ %277, %325 ], [ %277, %335 ], [ %277, %397 ], [ %277, %307 ], [ %277, %307 ], [ %277, %307 ], [ %277, %307 ], [ %1010, %1037 ]
  %1070 = phi ptr [ %276, %1051 ], [ %1011, %1017 ], [ %276, %474 ], [ %276, %451 ], [ %276, %484 ], [ %276, %651 ], [ %276, %628 ], [ %276, %403 ], [ %276, %338 ], [ %276, %325 ], [ %276, %335 ], [ %276, %397 ], [ %276, %307 ], [ %276, %307 ], [ %276, %307 ], [ %276, %307 ], [ %1011, %1037 ]
  %1071 = phi ptr [ %275, %1051 ], [ %275, %1017 ], [ %427, %474 ], [ %427, %451 ], [ %275, %484 ], [ %604, %651 ], [ %604, %628 ], [ %275, %403 ], [ %275, %338 ], [ %275, %325 ], [ %275, %335 ], [ %275, %397 ], [ %275, %307 ], [ %275, %307 ], [ %275, %307 ], [ %275, %307 ], [ %275, %1037 ]
  %1072 = getelementptr inbounds %struct.LIST, ptr %1071, i64 0, i32 1
  %1073 = load ptr, ptr %1072, align 8, !tbaa !5
  %1074 = icmp eq ptr %1073, %0
  br i1 %1074, label %1075, label %274

1075:                                             ; preds = %1056
  %1076 = load ptr, ptr %2, align 8, !tbaa !8
  %1077 = icmp eq i32 %1069, 0
  %1078 = icmp eq ptr %1076, null
  br i1 %1078, label %1081, label %1079

1079:                                             ; preds = %1075
  %1080 = call i32 @DisposeObject(ptr noundef nonnull %1076) #6
  br label %1081

1081:                                             ; preds = %1079, %1075
  %1082 = load ptr, ptr %31, align 8, !tbaa !5
  %1083 = icmp eq ptr %1082, %0
  br i1 %1083, label %1090, label %1088

1084:                                             ; preds = %260
  %1085 = load ptr, ptr %31, align 8, !tbaa !5
  %1086 = icmp eq ptr %1085, %0
  br i1 %1086, label %1090, label %1087

1087:                                             ; preds = %1084
  call void @Promote(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %251, i32 noundef 1) #6
  br label %1090

1088:                                             ; preds = %1081
  call void @Promote(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %251, i32 noundef 1) #6
  br i1 %1077, label %1090, label %1089

1089:                                             ; preds = %1088
  call void @AdjustSize(ptr noundef %1070, i32 noundef %1068, i32 noundef %1067, i32 noundef %26) #6
  call void @AdjustSize(ptr noundef %1070, i32 noundef %1064, i32 noundef %1065, i32 noundef %32) #6
  br label %1090

1090:                                             ; preds = %1087, %1084, %1088, %1089, %1081
  %1091 = phi i32 [ %51, %1084 ], [ %1059, %1088 ], [ %1059, %1089 ], [ %1059, %1081 ], [ %51, %1087 ]
  %1092 = phi ptr [ null, %1084 ], [ %1070, %1088 ], [ %1070, %1089 ], [ %1070, %1081 ], [ null, %1087 ]
  %1093 = load ptr, ptr %39, align 8, !tbaa !5
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1162, label %1095

1095:                                             ; preds = %1090
  %1096 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 26), align 1, !tbaa !5
  %1097 = zext i8 %1096 to i32
  store i32 %1097, ptr @zz_size, align 4, !tbaa !10
  %1098 = zext i8 %1096 to i64
  %1099 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1098
  %1100 = load ptr, ptr %1099, align 8, !tbaa !8
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1102, label %1105

1102:                                             ; preds = %1095
  %1103 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1104 = call ptr @GetMemory(i32 noundef %1097, ptr noundef %1103) #6
  store ptr %1104, ptr @zz_hold, align 8, !tbaa !8
  br label %1107

1105:                                             ; preds = %1095
  store ptr %1100, ptr @zz_hold, align 8, !tbaa !8
  %1106 = load ptr, ptr %1100, align 8, !tbaa !5
  store ptr %1106, ptr %1099, align 8, !tbaa !8
  br label %1107

1107:                                             ; preds = %1102, %1105
  %1108 = phi ptr [ %1104, %1102 ], [ %1100, %1105 ]
  %1109 = getelementptr inbounds %struct.word_type, ptr %1108, i64 0, i32 1
  store i8 26, ptr %1109, align 8, !tbaa !5
  %1110 = getelementptr inbounds [2 x %struct.LIST], ptr %1108, i64 0, i64 1
  %1111 = getelementptr inbounds [2 x %struct.LIST], ptr %1108, i64 0, i64 1, i32 1
  store ptr %1108, ptr %1111, align 8, !tbaa !5
  store ptr %1108, ptr %1110, align 8, !tbaa !5
  %1112 = getelementptr inbounds %struct.LIST, ptr %1108, i64 0, i32 1
  store ptr %1108, ptr %1112, align 8, !tbaa !5
  store ptr %1108, ptr %1108, align 8, !tbaa !5
  %1113 = icmp eq ptr %1092, null
  %1114 = load i32, ptr %4, align 8
  %1115 = load i32, ptr %37, align 4
  %1116 = load i32, ptr %38, align 8
  %1117 = select i1 %1113, i32 8388607, i32 %1114
  %1118 = select i1 %1113, i32 8388607, i32 %1115
  %1119 = select i1 %1113, i32 8388607, i32 %1116
  %1120 = getelementptr inbounds %struct.closure_type, ptr %1108, i64 0, i32 4
  store i32 %1117, ptr %1120, align 8
  %1121 = getelementptr inbounds %struct.closure_type, ptr %1108, i64 0, i32 4, i32 0, i32 1
  store i32 %1118, ptr %1121, align 4
  %1122 = getelementptr inbounds %struct.closure_type, ptr %1108, i64 0, i32 4, i32 0, i32 2
  store i32 %1119, ptr %1122, align 8
  %1123 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1124 = zext i8 %1123 to i32
  store i32 %1124, ptr @zz_size, align 4, !tbaa !10
  %1125 = zext i8 %1123 to i64
  %1126 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1125
  %1127 = load ptr, ptr %1126, align 8, !tbaa !8
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1129, label %1132

1129:                                             ; preds = %1107
  %1130 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1131 = call ptr @GetMemory(i32 noundef %1124, ptr noundef %1130) #6
  br label %1134

1132:                                             ; preds = %1107
  store ptr %1127, ptr @zz_hold, align 8, !tbaa !8
  %1133 = load ptr, ptr %1127, align 8, !tbaa !5
  store ptr %1133, ptr %1126, align 8, !tbaa !8
  br label %1134

1134:                                             ; preds = %1129, %1132
  %1135 = phi ptr [ %1131, %1129 ], [ %1127, %1132 ]
  %1136 = getelementptr inbounds %struct.word_type, ptr %1135, i64 0, i32 1
  store i8 0, ptr %1136, align 8, !tbaa !5
  %1137 = getelementptr inbounds [2 x %struct.LIST], ptr %1135, i64 0, i64 1, i32 1
  store ptr %1135, ptr %1137, align 8, !tbaa !5
  %1138 = getelementptr inbounds [2 x %struct.LIST], ptr %1135, i64 0, i64 1
  store ptr %1135, ptr %1138, align 8, !tbaa !5
  %1139 = getelementptr inbounds %struct.LIST, ptr %1135, i64 0, i32 1
  store ptr %1135, ptr %1139, align 8, !tbaa !5
  store ptr %1135, ptr %1135, align 8, !tbaa !5
  store ptr %1135, ptr @xx_link, align 8, !tbaa !8
  store ptr %1135, ptr @zz_res, align 8, !tbaa !8
  %1140 = load ptr, ptr %43, align 8, !tbaa !5
  store ptr %1140, ptr @zz_hold, align 8, !tbaa !8
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1134
  store ptr %1108, ptr @zz_hold, align 8, !tbaa !8
  br label %1155

1143:                                             ; preds = %1134
  %1144 = load ptr, ptr %1140, align 8, !tbaa !5
  store ptr %1144, ptr @zz_tmp, align 8, !tbaa !8
  %1145 = load ptr, ptr %1135, align 8, !tbaa !5
  store ptr %1145, ptr %1140, align 8, !tbaa !5
  %1146 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1147 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1148 = load ptr, ptr %1147, align 8, !tbaa !5
  %1149 = getelementptr inbounds %struct.LIST, ptr %1148, i64 0, i32 1
  store ptr %1146, ptr %1149, align 8, !tbaa !5
  %1150 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1150, ptr %1147, align 8, !tbaa !5
  %1151 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1152 = getelementptr inbounds %struct.LIST, ptr %1150, i64 0, i32 1
  store ptr %1151, ptr %1152, align 8, !tbaa !5
  %1153 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1153, ptr @zz_res, align 8, !tbaa !8
  store ptr %1108, ptr @zz_hold, align 8, !tbaa !8
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1162, label %1155

1155:                                             ; preds = %1142, %1143
  %1156 = phi ptr [ %1135, %1142 ], [ %1153, %1143 ]
  %1157 = load ptr, ptr %1110, align 8, !tbaa !5
  store ptr %1157, ptr @zz_tmp, align 8, !tbaa !8
  %1158 = getelementptr inbounds [2 x %struct.LIST], ptr %1156, i64 0, i64 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !5
  store ptr %1159, ptr %1110, align 8, !tbaa !5
  %1160 = getelementptr inbounds [2 x %struct.LIST], ptr %1159, i64 0, i64 1, i32 1
  store ptr %1108, ptr %1160, align 8, !tbaa !5
  store ptr %1157, ptr %1158, align 8, !tbaa !5
  %1161 = getelementptr inbounds [2 x %struct.LIST], ptr %1157, i64 0, i64 1, i32 1
  store ptr %1156, ptr %1161, align 8, !tbaa !5
  br label %1162

1162:                                             ; preds = %1155, %1143, %1090
  call void @DetachGalley(ptr noundef nonnull %0) #6
  call void @KillGalley(ptr noundef nonnull %0, i32 noundef 1) #6
  call fastcc void @ParentFlush(i32 noundef %1091, ptr noundef %251, i32 noundef 1)
  br label %2748

1163:                                             ; preds = %960, %958, %935, %995, %996, %828, %653, %656
  %1164 = phi i32 [ %770, %828 ], [ %770, %996 ], [ %770, %995 ], [ %282, %656 ], [ %282, %653 ], [ %770, %935 ], [ %770, %958 ], [ %770, %960 ]
  %1165 = phi i32 [ %771, %828 ], [ %771, %996 ], [ %771, %995 ], [ %281, %656 ], [ %281, %653 ], [ %771, %935 ], [ %771, %958 ], [ %771, %960 ]
  %1166 = phi i32 [ %772, %828 ], [ %772, %996 ], [ %772, %995 ], [ %280, %656 ], [ %280, %653 ], [ %772, %935 ], [ %772, %958 ], [ %772, %960 ]
  %1167 = phi i32 [ %773, %828 ], [ %773, %996 ], [ %773, %995 ], [ %279, %656 ], [ %279, %653 ], [ %773, %935 ], [ %773, %958 ], [ %773, %960 ]
  %1168 = phi i32 [ %774, %828 ], [ %774, %996 ], [ %774, %995 ], [ %278, %656 ], [ %278, %653 ], [ %774, %935 ], [ %774, %958 ], [ %774, %960 ]
  %1169 = phi ptr [ %775, %828 ], [ %775, %996 ], [ %775, %995 ], [ %276, %656 ], [ %276, %653 ], [ %775, %935 ], [ %775, %958 ], [ %775, %960 ]
  %1170 = getelementptr inbounds %struct.closure_type, ptr %253, i64 0, i32 5
  %1171 = load ptr, ptr %1170, align 8, !tbaa !5
  %1172 = load ptr, ptr @PrintSym, align 8, !tbaa !8
  %1173 = icmp eq ptr %1171, %1172
  br i1 %1173, label %1174, label %1177

1174:                                             ; preds = %1163
  %1175 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1176 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1175, ptr noundef nonnull @.str.19) #6
  br label %1177

1177:                                             ; preds = %1174, %1163
  %1178 = load ptr, ptr %2, align 8, !tbaa !8
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1182, label %1180

1180:                                             ; preds = %1177
  %1181 = call i32 @DisposeObject(ptr noundef nonnull %1178) #6
  br label %1182

1182:                                             ; preds = %1180, %1177
  %1183 = icmp eq ptr %283, null
  br i1 %1183, label %1187, label %1184

1184:                                             ; preds = %1182
  call void @Promote(ptr noundef nonnull %0, ptr noundef nonnull %283, ptr noundef %251, i32 noundef 1) #6
  %1185 = icmp eq i32 %277, 0
  br i1 %1185, label %1187, label %1186

1186:                                             ; preds = %1184
  call void @AdjustSize(ptr noundef %1169, i32 noundef %284, i32 noundef %286, i32 noundef %26) #6
  call void @AdjustSize(ptr noundef %1169, i32 noundef %289, i32 noundef %288, i32 noundef %32) #6
  br label %1187

1187:                                             ; preds = %1184, %1186, %1182
  %1188 = icmp ne i32 %285, 0
  %1189 = select i1 %265, i1 %1188, i1 false
  br i1 %1189, label %1190, label %1229

1190:                                             ; preds = %1187
  %1191 = load ptr, ptr %31, align 8, !tbaa !5
  %1192 = icmp eq ptr %1191, %275
  br i1 %1192, label %1229, label %1193

1193:                                             ; preds = %1190, %1224
  %1194 = phi ptr [ %1227, %1224 ], [ %1191, %1190 ]
  %1195 = phi ptr [ %1225, %1224 ], [ %0, %1190 ]
  br label %1196

1196:                                             ; preds = %1193, %1196
  %1197 = phi ptr [ %1199, %1196 ], [ %1194, %1193 ]
  %1198 = getelementptr inbounds [2 x %struct.LIST], ptr %1197, i64 0, i64 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !5
  %1200 = getelementptr inbounds %struct.word_type, ptr %1199, i64 0, i32 1
  %1201 = load i8, ptr %1200, align 8, !tbaa !5
  switch i8 %1201, label %1213 [
    i8 0, label %1196
    i8 9, label %1202
  ]

1202:                                             ; preds = %1196
  %1203 = getelementptr inbounds %struct.LIST, ptr %1199, i64 0, i32 1
  %1204 = select i1 %30, ptr %1203, ptr %1199
  %1205 = load ptr, ptr %1204, align 8, !tbaa !5
  br label %1206

1206:                                             ; preds = %1206, %1202
  %1207 = phi ptr [ %1205, %1202 ], [ %1209, %1206 ]
  %1208 = getelementptr inbounds [2 x %struct.LIST], ptr %1207, i64 0, i64 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !5
  %1210 = getelementptr inbounds %struct.word_type, ptr %1209, i64 0, i32 1
  %1211 = load i8, ptr %1210, align 8, !tbaa !5
  %1212 = icmp eq i8 %1211, 0
  br i1 %1212, label %1206, label %1213

1213:                                             ; preds = %1196, %1206
  %1214 = phi i8 [ %1211, %1206 ], [ %1201, %1196 ]
  %1215 = phi ptr [ %1209, %1206 ], [ %1199, %1196 ]
  %1216 = and i8 %1214, -4
  %1217 = icmp eq i8 %1216, 20
  br i1 %1217, label %1218, label %1224

1218:                                             ; preds = %1213
  %1219 = icmp eq ptr %1199, %1215
  br i1 %1219, label %1223, label %1220

1220:                                             ; preds = %1218
  %1221 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1222 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1221, ptr noundef nonnull @.str.20) #6
  br label %1223

1223:                                             ; preds = %1220, %1218
  call void @HandleHeader(ptr noundef %0, ptr noundef nonnull %1215) #6
  br label %1224

1224:                                             ; preds = %1213, %1223
  %1225 = phi ptr [ %1195, %1223 ], [ %1194, %1213 ]
  %1226 = getelementptr inbounds %struct.LIST, ptr %1225, i64 0, i32 1
  %1227 = load ptr, ptr %1226, align 8, !tbaa !5
  %1228 = icmp eq ptr %1227, %275
  br i1 %1228, label %1229, label %1193

1229:                                             ; preds = %1224, %1190, %1187
  %1230 = load ptr, ptr %45, align 8, !tbaa !5
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1319, label %1232

1232:                                             ; preds = %1229
  %1233 = getelementptr inbounds %struct.LIST, ptr %1230, i64 0, i32 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !5
  %1235 = icmp eq ptr %1234, %1230
  br i1 %1235, label %1236, label %1239

1236:                                             ; preds = %1232
  %1237 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1238 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1237, ptr noundef nonnull @.str.21) #6
  br label %1239

1239:                                             ; preds = %1236, %1232
  %1240 = load ptr, ptr %31, align 8, !tbaa !5
  %1241 = icmp eq ptr %1240, %0
  br i1 %1241, label %1242, label %1245

1242:                                             ; preds = %1239
  %1243 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1244 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1243, ptr noundef nonnull @.str.22) #6
  br label %1245

1245:                                             ; preds = %1242, %1239
  %1246 = load ptr, ptr %45, align 8, !tbaa !5
  %1247 = getelementptr inbounds %struct.LIST, ptr %1246, i64 0, i32 1
  %1248 = load ptr, ptr %1247, align 8, !tbaa !5
  %1249 = icmp eq ptr %1248, %1246
  br i1 %1249, label %1319, label %1250

1250:                                             ; preds = %1245
  %1251 = icmp eq ptr %1240, null
  br label %1252

1252:                                             ; preds = %1250, %1307
  %1253 = phi ptr [ %1248, %1250 ], [ %1310, %1307 ]
  %1254 = phi i32 [ 0, %1250 ], [ %1308, %1307 ]
  br label %1255

1255:                                             ; preds = %1252, %1255
  %1256 = phi ptr [ %1258, %1255 ], [ %1253, %1252 ]
  %1257 = getelementptr inbounds [2 x %struct.LIST], ptr %1256, i64 0, i64 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !5
  %1259 = getelementptr inbounds %struct.word_type, ptr %1258, i64 0, i32 1
  %1260 = load i8, ptr %1259, align 8, !tbaa !5
  switch i8 %1260, label %1264 [
    i8 0, label %1255
    i8 16, label %1261
    i8 15, label %1261
  ]

1261:                                             ; preds = %1255, %1255
  store ptr %1258, ptr %3, align 8, !tbaa !8
  %1262 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1263 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1262, ptr noundef nonnull @.str.23) #6
  br label %1265

1264:                                             ; preds = %1255
  store ptr %1258, ptr %3, align 8, !tbaa !8
  br label %1265

1265:                                             ; preds = %1264, %1261
  %1266 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1267 = zext i8 %1266 to i32
  store i32 %1267, ptr @zz_size, align 4, !tbaa !10
  %1268 = zext i8 %1266 to i64
  %1269 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1268
  %1270 = load ptr, ptr %1269, align 8, !tbaa !8
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1272, label %1275

1272:                                             ; preds = %1265
  %1273 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1274 = call ptr @GetMemory(i32 noundef %1267, ptr noundef %1273) #6
  br label %1277

1275:                                             ; preds = %1265
  store ptr %1270, ptr @zz_hold, align 8, !tbaa !8
  %1276 = load ptr, ptr %1270, align 8, !tbaa !5
  store ptr %1276, ptr %1269, align 8, !tbaa !8
  br label %1277

1277:                                             ; preds = %1272, %1275
  %1278 = phi ptr [ %1274, %1272 ], [ %1270, %1275 ]
  %1279 = getelementptr inbounds %struct.word_type, ptr %1278, i64 0, i32 1
  store i8 0, ptr %1279, align 8, !tbaa !5
  %1280 = getelementptr inbounds [2 x %struct.LIST], ptr %1278, i64 0, i64 1, i32 1
  store ptr %1278, ptr %1280, align 8, !tbaa !5
  %1281 = getelementptr inbounds [2 x %struct.LIST], ptr %1278, i64 0, i64 1
  store ptr %1278, ptr %1281, align 8, !tbaa !5
  %1282 = getelementptr inbounds %struct.LIST, ptr %1278, i64 0, i32 1
  store ptr %1278, ptr %1282, align 8, !tbaa !5
  store ptr %1278, ptr %1278, align 8, !tbaa !5
  store ptr %1278, ptr @xx_link, align 8, !tbaa !8
  store ptr %1278, ptr @zz_res, align 8, !tbaa !8
  store ptr %1240, ptr @zz_hold, align 8, !tbaa !8
  br i1 %1251, label %1294, label %1283

1283:                                             ; preds = %1277
  %1284 = load ptr, ptr %1240, align 8, !tbaa !5
  store ptr %1284, ptr @zz_tmp, align 8, !tbaa !8
  %1285 = load ptr, ptr %1278, align 8, !tbaa !5
  store ptr %1285, ptr %1240, align 8, !tbaa !5
  %1286 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1287 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1288 = load ptr, ptr %1287, align 8, !tbaa !5
  %1289 = getelementptr inbounds %struct.LIST, ptr %1288, i64 0, i32 1
  store ptr %1286, ptr %1289, align 8, !tbaa !5
  %1290 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1290, ptr %1287, align 8, !tbaa !5
  %1291 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1292 = getelementptr inbounds %struct.LIST, ptr %1290, i64 0, i32 1
  store ptr %1291, ptr %1292, align 8, !tbaa !5
  %1293 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1294

1294:                                             ; preds = %1277, %1283
  %1295 = phi ptr [ %1278, %1277 ], [ %1293, %1283 ]
  store ptr %1295, ptr @zz_res, align 8, !tbaa !8
  %1296 = load ptr, ptr %3, align 8, !tbaa !8
  store ptr %1296, ptr @zz_hold, align 8, !tbaa !8
  %1297 = icmp eq ptr %1296, null
  %1298 = icmp eq ptr %1295, null
  %1299 = select i1 %1297, i1 true, i1 %1298
  br i1 %1299, label %1307, label %1300

1300:                                             ; preds = %1294
  %1301 = getelementptr inbounds [2 x %struct.LIST], ptr %1296, i64 0, i64 1
  %1302 = load ptr, ptr %1301, align 8, !tbaa !5
  store ptr %1302, ptr @zz_tmp, align 8, !tbaa !8
  %1303 = getelementptr inbounds [2 x %struct.LIST], ptr %1295, i64 0, i64 1
  %1304 = load ptr, ptr %1303, align 8, !tbaa !5
  store ptr %1304, ptr %1301, align 8, !tbaa !5
  %1305 = getelementptr inbounds [2 x %struct.LIST], ptr %1304, i64 0, i64 1, i32 1
  store ptr %1296, ptr %1305, align 8, !tbaa !5
  store ptr %1302, ptr %1303, align 8, !tbaa !5
  %1306 = getelementptr inbounds [2 x %struct.LIST], ptr %1302, i64 0, i64 1, i32 1
  store ptr %1295, ptr %1306, align 8, !tbaa !5
  br label %1307

1307:                                             ; preds = %1294, %1300
  %1308 = add nuw nsw i32 %1254, 1
  %1309 = getelementptr inbounds %struct.LIST, ptr %1253, i64 0, i32 1
  %1310 = load ptr, ptr %1309, align 8, !tbaa !5
  %1311 = load ptr, ptr %45, align 8, !tbaa !5
  %1312 = icmp eq ptr %1310, %1311
  br i1 %1312, label %1313, label %1252

1313:                                             ; preds = %1307
  %1314 = and i32 %1254, 1
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1316, label %1319

1316:                                             ; preds = %1313
  %1317 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1318 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1317, ptr noundef nonnull @.str.24) #6
  br label %1319

1319:                                             ; preds = %1245, %1313, %1316, %1229
  call void @DetachGalley(ptr noundef nonnull %0) #6
  %1320 = getelementptr inbounds %struct.word_type, ptr %251, i64 0, i32 1
  %1321 = load i8, ptr %1320, align 8, !tbaa !5
  %1322 = icmp eq i8 %1321, 122
  br i1 %1322, label %1326, label %1323

1323:                                             ; preds = %1319
  %1324 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1325 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1324, ptr noundef nonnull @.str.25) #6
  br label %1326

1326:                                             ; preds = %1323, %1319
  %1327 = icmp eq i32 %287, 0
  br i1 %1327, label %1328, label %1332

1328:                                             ; preds = %1326
  %1329 = load i16, ptr %273, align 2
  %1330 = and i16 %1329, 32
  %1331 = icmp ne i16 %1330, 0
  br label %1332

1332:                                             ; preds = %1328, %1326
  %1333 = phi i1 [ true, %1326 ], [ %1331, %1328 ]
  %1334 = zext i1 %1333 to i32
  store ptr %251, ptr @xx_hold, align 8, !tbaa !8
  %1335 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  %1336 = load ptr, ptr %1335, align 8, !tbaa !5
  %1337 = icmp eq ptr %1336, %251
  br i1 %1337, label %1338, label %1343

1338:                                             ; preds = %1365, %1332
  %1339 = phi ptr [ %251, %1332 ], [ %1384, %1365 ]
  %1340 = getelementptr inbounds %struct.LIST, ptr %1339, i64 0, i32 1
  %1341 = load ptr, ptr %1340, align 8, !tbaa !5
  %1342 = icmp eq ptr %1341, %1339
  br i1 %1342, label %1433, label %1388

1343:                                             ; preds = %1332, %1365
  %1344 = phi ptr [ %1386, %1365 ], [ %1336, %1332 ]
  store ptr %1344, ptr @xx_link, align 8, !tbaa !8
  %1345 = getelementptr inbounds [2 x %struct.LIST], ptr %1344, i64 0, i64 1, i32 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !5
  %1347 = icmp eq ptr %1346, %1344
  br i1 %1347, label %1353, label %1348

1348:                                             ; preds = %1343
  store ptr %1346, ptr @zz_res, align 8, !tbaa !8
  %1349 = getelementptr inbounds [2 x %struct.LIST], ptr %1344, i64 0, i64 1
  %1350 = load ptr, ptr %1349, align 8, !tbaa !5
  %1351 = getelementptr inbounds [2 x %struct.LIST], ptr %1346, i64 0, i64 1
  store ptr %1350, ptr %1351, align 8, !tbaa !5
  %1352 = getelementptr inbounds [2 x %struct.LIST], ptr %1350, i64 0, i64 1, i32 1
  store ptr %1346, ptr %1352, align 8, !tbaa !5
  store ptr %1344, ptr %1345, align 8, !tbaa !5
  store ptr %1344, ptr %1349, align 8, !tbaa !5
  br label %1353

1353:                                             ; preds = %1343, %1348
  store ptr %1344, ptr @zz_hold, align 8, !tbaa !8
  %1354 = getelementptr inbounds %struct.LIST, ptr %1344, i64 0, i32 1
  %1355 = load ptr, ptr %1354, align 8, !tbaa !5
  %1356 = icmp eq ptr %1355, %1344
  br i1 %1356, label %1365, label %1357

1357:                                             ; preds = %1353
  store ptr %1355, ptr @zz_res, align 8, !tbaa !8
  %1358 = load ptr, ptr %1344, align 8, !tbaa !5
  store ptr %1358, ptr %1355, align 8, !tbaa !5
  %1359 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1360 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1361 = load ptr, ptr %1360, align 8, !tbaa !5
  %1362 = getelementptr inbounds %struct.LIST, ptr %1361, i64 0, i32 1
  store ptr %1359, ptr %1362, align 8, !tbaa !5
  %1363 = getelementptr inbounds %struct.LIST, ptr %1360, i64 0, i32 1
  store ptr %1360, ptr %1363, align 8, !tbaa !5
  store ptr %1360, ptr %1360, align 8, !tbaa !5
  %1364 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1365

1365:                                             ; preds = %1353, %1357
  %1366 = phi ptr [ %1344, %1353 ], [ %1364, %1357 ]
  store ptr %1366, ptr @zz_hold, align 8, !tbaa !8
  %1367 = getelementptr inbounds %struct.word_type, ptr %1366, i64 0, i32 1
  %1368 = load i8, ptr %1367, align 8, !tbaa !5
  %1369 = add i8 %1368, -11
  %1370 = icmp ult i8 %1369, 2
  %1371 = getelementptr inbounds %struct.word_type, ptr %1366, i64 0, i32 1, i32 0, i32 1
  %1372 = zext i8 %1368 to i64
  %1373 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1372
  %1374 = select i1 %1370, ptr %1371, ptr %1373
  %1375 = load i8, ptr %1374, align 1, !tbaa !5
  %1376 = zext i8 %1375 to i32
  store i32 %1376, ptr @zz_size, align 4, !tbaa !10
  %1377 = zext i8 %1375 to i64
  %1378 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1377
  %1379 = load ptr, ptr %1378, align 8, !tbaa !8
  store ptr %1379, ptr %1366, align 8, !tbaa !5
  %1380 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1381 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1382
  store ptr %1380, ptr %1383, align 8, !tbaa !8
  %1384 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1385 = getelementptr inbounds [2 x %struct.LIST], ptr %1384, i64 0, i64 1, i32 1
  %1386 = load ptr, ptr %1385, align 8, !tbaa !5
  %1387 = icmp eq ptr %1386, %1384
  br i1 %1387, label %1338, label %1343

1388:                                             ; preds = %1338, %1410
  %1389 = phi ptr [ %1431, %1410 ], [ %1341, %1338 ]
  store ptr %1389, ptr @xx_link, align 8, !tbaa !8
  %1390 = getelementptr inbounds [2 x %struct.LIST], ptr %1389, i64 0, i64 1, i32 1
  %1391 = load ptr, ptr %1390, align 8, !tbaa !5
  %1392 = icmp eq ptr %1391, %1389
  br i1 %1392, label %1398, label %1393

1393:                                             ; preds = %1388
  store ptr %1391, ptr @zz_res, align 8, !tbaa !8
  %1394 = getelementptr inbounds [2 x %struct.LIST], ptr %1389, i64 0, i64 1
  %1395 = load ptr, ptr %1394, align 8, !tbaa !5
  %1396 = getelementptr inbounds [2 x %struct.LIST], ptr %1391, i64 0, i64 1
  store ptr %1395, ptr %1396, align 8, !tbaa !5
  %1397 = getelementptr inbounds [2 x %struct.LIST], ptr %1395, i64 0, i64 1, i32 1
  store ptr %1391, ptr %1397, align 8, !tbaa !5
  store ptr %1389, ptr %1390, align 8, !tbaa !5
  store ptr %1389, ptr %1394, align 8, !tbaa !5
  br label %1398

1398:                                             ; preds = %1388, %1393
  store ptr %1389, ptr @zz_hold, align 8, !tbaa !8
  %1399 = getelementptr inbounds %struct.LIST, ptr %1389, i64 0, i32 1
  %1400 = load ptr, ptr %1399, align 8, !tbaa !5
  %1401 = icmp eq ptr %1400, %1389
  br i1 %1401, label %1410, label %1402

1402:                                             ; preds = %1398
  store ptr %1400, ptr @zz_res, align 8, !tbaa !8
  %1403 = load ptr, ptr %1389, align 8, !tbaa !5
  store ptr %1403, ptr %1400, align 8, !tbaa !5
  %1404 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1405 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1406 = load ptr, ptr %1405, align 8, !tbaa !5
  %1407 = getelementptr inbounds %struct.LIST, ptr %1406, i64 0, i32 1
  store ptr %1404, ptr %1407, align 8, !tbaa !5
  %1408 = getelementptr inbounds %struct.LIST, ptr %1405, i64 0, i32 1
  store ptr %1405, ptr %1408, align 8, !tbaa !5
  store ptr %1405, ptr %1405, align 8, !tbaa !5
  %1409 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1410

1410:                                             ; preds = %1398, %1402
  %1411 = phi ptr [ %1389, %1398 ], [ %1409, %1402 ]
  store ptr %1411, ptr @zz_hold, align 8, !tbaa !8
  %1412 = getelementptr inbounds %struct.word_type, ptr %1411, i64 0, i32 1
  %1413 = load i8, ptr %1412, align 8, !tbaa !5
  %1414 = add i8 %1413, -11
  %1415 = icmp ult i8 %1414, 2
  %1416 = getelementptr inbounds %struct.word_type, ptr %1411, i64 0, i32 1, i32 0, i32 1
  %1417 = zext i8 %1413 to i64
  %1418 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1417
  %1419 = select i1 %1415, ptr %1416, ptr %1418
  %1420 = load i8, ptr %1419, align 1, !tbaa !5
  %1421 = zext i8 %1420 to i32
  store i32 %1421, ptr @zz_size, align 4, !tbaa !10
  %1422 = zext i8 %1420 to i64
  %1423 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1422
  %1424 = load ptr, ptr %1423, align 8, !tbaa !8
  store ptr %1424, ptr %1411, align 8, !tbaa !5
  %1425 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1426 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1427
  store ptr %1425, ptr %1428, align 8, !tbaa !8
  %1429 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %1430 = getelementptr inbounds %struct.LIST, ptr %1429, i64 0, i32 1
  %1431 = load ptr, ptr %1430, align 8, !tbaa !5
  %1432 = icmp eq ptr %1431, %1429
  br i1 %1432, label %1433, label %1388

1433:                                             ; preds = %1410, %1338
  %1434 = phi ptr [ %1339, %1338 ], [ %1429, %1410 ]
  store ptr %1434, ptr @zz_hold, align 8, !tbaa !8
  %1435 = getelementptr inbounds %struct.word_type, ptr %1434, i64 0, i32 1
  %1436 = load i8, ptr %1435, align 8, !tbaa !5
  %1437 = add i8 %1436, -11
  %1438 = icmp ult i8 %1437, 2
  %1439 = getelementptr inbounds %struct.word_type, ptr %1434, i64 0, i32 1, i32 0, i32 1
  %1440 = zext i8 %1436 to i64
  %1441 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1440
  %1442 = select i1 %1438, ptr %1439, ptr %1441
  %1443 = load i8, ptr %1442, align 1, !tbaa !5
  %1444 = zext i8 %1443 to i32
  store i32 %1444, ptr @zz_size, align 4, !tbaa !10
  %1445 = zext i8 %1443 to i64
  %1446 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1445
  %1447 = load ptr, ptr %1446, align 8, !tbaa !8
  store ptr %1447, ptr %1434, align 8, !tbaa !5
  %1448 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1449 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1450 = sext i32 %1449 to i64
  %1451 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1450
  store ptr %1448, ptr %1451, align 8, !tbaa !8
  br label %2704

1452:                                             ; preds = %484, %307, %307, %132, %677
  %1453 = phi i32 [ %289, %677 ], [ %49, %132 ], [ %289, %307 ], [ %289, %307 ], [ %289, %484 ]
  %1454 = phi i32 [ %288, %677 ], [ %50, %132 ], [ %288, %307 ], [ %288, %307 ], [ %288, %484 ]
  %1455 = phi i32 [ %287, %677 ], [ %51, %132 ], [ %287, %307 ], [ %287, %307 ], [ %287, %484 ]
  %1456 = phi i32 [ %286, %677 ], [ %52, %132 ], [ %286, %307 ], [ %286, %307 ], [ %286, %484 ]
  %1457 = phi i32 [ %284, %677 ], [ %53, %132 ], [ %284, %307 ], [ %284, %307 ], [ %284, %484 ]
  %1458 = phi ptr [ %283, %677 ], [ null, %132 ], [ %283, %307 ], [ %283, %307 ], [ %283, %484 ]
  %1459 = phi i32 [ %282, %677 ], [ %54, %132 ], [ %282, %307 ], [ %282, %307 ], [ %282, %484 ]
  %1460 = phi i32 [ %281, %677 ], [ %55, %132 ], [ %281, %307 ], [ %281, %307 ], [ %281, %484 ]
  %1461 = phi i32 [ %280, %677 ], [ %56, %132 ], [ %280, %307 ], [ %280, %307 ], [ %280, %484 ]
  %1462 = phi i32 [ %279, %677 ], [ %57, %132 ], [ %279, %307 ], [ %279, %307 ], [ %279, %484 ]
  %1463 = phi i32 [ %278, %677 ], [ %58, %132 ], [ %278, %307 ], [ %278, %307 ], [ %278, %484 ]
  %1464 = phi i32 [ %277, %677 ], [ %59, %132 ], [ %277, %307 ], [ %277, %307 ], [ %277, %484 ]
  %1465 = phi ptr [ %276, %677 ], [ %60, %132 ], [ %276, %307 ], [ %276, %307 ], [ %276, %484 ]
  %1466 = phi ptr [ %251, %677 ], [ %85, %132 ], [ %251, %307 ], [ %251, %307 ], [ %251, %484 ]
  %1467 = load ptr, ptr %2, align 8, !tbaa !8
  %1468 = icmp eq ptr %1467, null
  br i1 %1468, label %1471, label %1469

1469:                                             ; preds = %1452
  %1470 = call i32 @DisposeObject(ptr noundef nonnull %1467) #6
  br label %1471

1471:                                             ; preds = %1469, %1452
  %1472 = icmp eq ptr %1458, null
  br i1 %1472, label %1476, label %1473

1473:                                             ; preds = %1471
  call void @Promote(ptr noundef %0, ptr noundef nonnull %1458, ptr noundef %1466, i32 noundef 1) #6
  %1474 = icmp eq i32 %1464, 0
  br i1 %1474, label %1476, label %1475

1475:                                             ; preds = %1473
  call void @AdjustSize(ptr noundef %1465, i32 noundef %1457, i32 noundef %1456, i32 noundef %26) #6
  call void @AdjustSize(ptr noundef %1465, i32 noundef %1453, i32 noundef %1454, i32 noundef %32) #6
  br label %1476

1476:                                             ; preds = %1473, %1475, %1471
  %1477 = load ptr, ptr %3, align 8, !tbaa !8
  %1478 = getelementptr inbounds %struct.word_type, ptr %1477, i64 0, i32 1
  %1479 = load i8, ptr %1478, align 8, !tbaa !5
  %1480 = icmp eq i8 %1479, 121
  br i1 %1480, label %1481, label %2448

1481:                                             ; preds = %1476
  %1482 = load ptr, ptr %46, align 8, !tbaa !5
  %1483 = icmp ne ptr %1482, null
  %1484 = load i32, ptr @AllowCrossDb, align 4
  %1485 = icmp ne i32 %1484, 0
  %1486 = select i1 %1483, i1 %1485, i1 false
  br i1 %1486, label %1487, label %2154

1487:                                             ; preds = %1481
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %15) #6
  %1488 = getelementptr inbounds %struct.LIST, ptr %1482, i64 0, i32 1
  %1489 = load ptr, ptr %1488, align 8, !tbaa !5
  br label %1490

1490:                                             ; preds = %1490, %1487
  %1491 = phi ptr [ %1489, %1487 ], [ %1493, %1490 ]
  %1492 = getelementptr inbounds [2 x %struct.LIST], ptr %1491, i64 0, i64 1
  %1493 = load ptr, ptr %1492, align 8, !tbaa !5
  %1494 = getelementptr inbounds %struct.word_type, ptr %1493, i64 0, i32 1
  %1495 = load i8, ptr %1494, align 8, !tbaa !5
  %1496 = icmp eq i8 %1495, 0
  br i1 %1496, label %1490, label %1497

1497:                                             ; preds = %1490
  call void @SwitchScope(ptr noundef null) #6
  %1498 = getelementptr inbounds %struct.ext_gall_type, ptr %1493, i64 0, i32 2
  %1499 = load i16, ptr %1498, align 2, !tbaa !5
  %1500 = getelementptr inbounds %struct.ext_gall_type, ptr %1493, i64 0, i32 4
  %1501 = load i64, ptr %1500, align 8, !tbaa !5
  %1502 = getelementptr inbounds %struct.ext_gall_type, ptr %1493, i64 0, i32 3
  %1503 = load i32, ptr %1502, align 4, !tbaa !5
  %1504 = call ptr @ReadFromFile(i16 noundef zeroext %1499, i64 noundef %1501, i32 noundef %1503) #6
  call void @UnSwitchScope(ptr noundef null) #6
  %1505 = icmp eq ptr %1504, null
  br i1 %1505, label %1506, label %1512

1506:                                             ; preds = %1497
  %1507 = load ptr, ptr %3, align 8, !tbaa !8
  %1508 = getelementptr inbounds %struct.word_type, ptr %1507, i64 0, i32 1
  %1509 = load i16, ptr %1498, align 2, !tbaa !5
  %1510 = call ptr @FileName(i16 noundef zeroext %1509) #6
  %1511 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 20, i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %1508, ptr noundef %1510) #6
  br label %1512

1512:                                             ; preds = %1506, %1497
  %1513 = getelementptr inbounds %struct.word_type, ptr %1504, i64 0, i32 1
  %1514 = load i8, ptr %1513, align 8, !tbaa !5
  %1515 = icmp eq i8 %1514, 2
  br i1 %1515, label %1519, label %1516

1516:                                             ; preds = %1512
  %1517 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1518 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1517, ptr noundef nonnull @.str.27) #6
  br label %1519

1519:                                             ; preds = %1516, %1512
  %1520 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 120), align 1, !tbaa !5
  %1521 = zext i8 %1520 to i32
  store i32 %1521, ptr @zz_size, align 4, !tbaa !10
  %1522 = zext i8 %1520 to i64
  %1523 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1522
  %1524 = load ptr, ptr %1523, align 8, !tbaa !8
  %1525 = icmp eq ptr %1524, null
  br i1 %1525, label %1526, label %1529

1526:                                             ; preds = %1519
  %1527 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1528 = call ptr @GetMemory(i32 noundef %1521, ptr noundef %1527) #6
  store ptr %1528, ptr @zz_hold, align 8, !tbaa !8
  br label %1531

1529:                                             ; preds = %1519
  store ptr %1524, ptr @zz_hold, align 8, !tbaa !8
  %1530 = load ptr, ptr %1524, align 8, !tbaa !5
  store ptr %1530, ptr %1523, align 8, !tbaa !8
  br label %1531

1531:                                             ; preds = %1526, %1529
  %1532 = phi ptr [ %1528, %1526 ], [ %1524, %1529 ]
  %1533 = getelementptr inbounds %struct.word_type, ptr %1532, i64 0, i32 1
  store i8 120, ptr %1533, align 8, !tbaa !5
  %1534 = getelementptr inbounds [2 x %struct.LIST], ptr %1532, i64 0, i64 1
  %1535 = getelementptr inbounds [2 x %struct.LIST], ptr %1532, i64 0, i64 1, i32 1
  store ptr %1532, ptr %1535, align 8, !tbaa !5
  store ptr %1532, ptr %1534, align 8, !tbaa !5
  %1536 = getelementptr inbounds %struct.LIST, ptr %1532, i64 0, i32 1
  store ptr %1532, ptr %1536, align 8, !tbaa !5
  store ptr %1532, ptr %1532, align 8, !tbaa !5
  %1537 = getelementptr inbounds %struct.closure_type, ptr %1532, i64 0, i32 6
  store ptr null, ptr %1537, align 8, !tbaa !5
  %1538 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !5
  %1539 = zext i8 %1538 to i32
  store i32 %1539, ptr @zz_size, align 4, !tbaa !10
  %1540 = zext i8 %1538 to i64
  %1541 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1540
  %1542 = load ptr, ptr %1541, align 8, !tbaa !8
  %1543 = icmp eq ptr %1542, null
  br i1 %1543, label %1544, label %1547

1544:                                             ; preds = %1531
  %1545 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1546 = call ptr @GetMemory(i32 noundef %1539, ptr noundef %1545) #6
  store ptr %1546, ptr @zz_hold, align 8, !tbaa !8
  br label %1549

1547:                                             ; preds = %1531
  store ptr %1542, ptr @zz_hold, align 8, !tbaa !8
  %1548 = load ptr, ptr %1542, align 8, !tbaa !5
  store ptr %1548, ptr %1541, align 8, !tbaa !8
  br label %1549

1549:                                             ; preds = %1544, %1547
  %1550 = phi ptr [ %1546, %1544 ], [ %1542, %1547 ]
  %1551 = getelementptr inbounds %struct.word_type, ptr %1550, i64 0, i32 1
  store i8 8, ptr %1551, align 8, !tbaa !5
  %1552 = getelementptr inbounds [2 x %struct.LIST], ptr %1550, i64 0, i64 1
  %1553 = getelementptr inbounds [2 x %struct.LIST], ptr %1550, i64 0, i64 1, i32 1
  store ptr %1550, ptr %1553, align 8, !tbaa !5
  store ptr %1550, ptr %1552, align 8, !tbaa !5
  %1554 = getelementptr inbounds %struct.LIST, ptr %1550, i64 0, i32 1
  store ptr %1550, ptr %1554, align 8, !tbaa !5
  store ptr %1550, ptr %1550, align 8, !tbaa !5
  %1555 = getelementptr inbounds %struct.word_type, ptr %1504, i64 0, i32 1, i32 0, i32 2
  %1556 = load i16, ptr %1555, align 2, !tbaa !5
  %1557 = getelementptr inbounds %struct.word_type, ptr %1550, i64 0, i32 1, i32 0, i32 2
  store i16 %1556, ptr %1557, align 2, !tbaa !5
  %1558 = getelementptr inbounds %struct.word_type, ptr %1504, i64 0, i32 1, i32 0, i32 3
  %1559 = load i32, ptr %1558, align 4
  %1560 = and i32 %1559, 1048575
  %1561 = getelementptr inbounds %struct.word_type, ptr %1550, i64 0, i32 1, i32 0, i32 3
  %1562 = load i32, ptr %1561, align 4
  %1563 = and i32 %1562, -1048576
  %1564 = or disjoint i32 %1563, %1560
  store i32 %1564, ptr %1561, align 4
  %1565 = load i32, ptr %1558, align 4
  %1566 = and i32 %1565, -1048576
  %1567 = or disjoint i32 %1566, %1560
  store i32 %1567, ptr %1561, align 4
  %1568 = getelementptr inbounds %struct.closure_type, ptr %1504, i64 0, i32 5
  %1569 = load ptr, ptr %1568, align 8, !tbaa !5
  %1570 = getelementptr inbounds %struct.closure_type, ptr %1550, i64 0, i32 5
  store ptr %1569, ptr %1570, align 8, !tbaa !5
  %1571 = getelementptr inbounds %struct.head_type, ptr %1550, i64 0, i32 11
  store ptr null, ptr %1571, align 8, !tbaa !5
  %1572 = getelementptr inbounds %struct.head_type, ptr %1550, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1572, i8 0, i64 16, i1 false)
  %1573 = load ptr, ptr %1568, align 8, !tbaa !5
  %1574 = getelementptr inbounds i8, ptr %1573, i64 41
  %1575 = load i24, ptr %1574, align 1
  %1576 = getelementptr inbounds %struct.word_type, ptr %1550, i64 0, i32 2
  %1577 = getelementptr inbounds i8, ptr %1550, i64 42
  %1578 = load i16, ptr %1577, align 2
  %1579 = lshr i24 %1575, 13
  %1580 = trunc i24 %1579 to i16
  %1581 = and i16 %1580, 256
  %1582 = and i16 %1578, -387
  %1583 = or disjoint i16 %1581, %1582
  %1584 = getelementptr inbounds %struct.head_type, ptr %1550, i64 0, i32 7
  store ptr null, ptr %1584, align 8, !tbaa !5
  %1585 = or disjoint i16 %1583, 128
  store i16 %1585, ptr %1577, align 2
  %1586 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1587 = zext i8 %1586 to i32
  store i32 %1587, ptr @zz_size, align 4, !tbaa !10
  %1588 = zext i8 %1586 to i64
  %1589 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1588
  %1590 = load ptr, ptr %1589, align 8, !tbaa !8
  %1591 = icmp eq ptr %1590, null
  br i1 %1591, label %1592, label %1595

1592:                                             ; preds = %1549
  %1593 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1594 = call ptr @GetMemory(i32 noundef %1587, ptr noundef %1593) #6
  br label %1597

1595:                                             ; preds = %1549
  store ptr %1590, ptr @zz_hold, align 8, !tbaa !8
  %1596 = load ptr, ptr %1590, align 8, !tbaa !5
  store ptr %1596, ptr %1589, align 8, !tbaa !8
  br label %1597

1597:                                             ; preds = %1592, %1595
  %1598 = phi ptr [ %1594, %1592 ], [ %1590, %1595 ]
  %1599 = getelementptr inbounds %struct.word_type, ptr %1598, i64 0, i32 1
  store i8 0, ptr %1599, align 8, !tbaa !5
  %1600 = getelementptr inbounds [2 x %struct.LIST], ptr %1598, i64 0, i64 1, i32 1
  store ptr %1598, ptr %1600, align 8, !tbaa !5
  %1601 = getelementptr inbounds [2 x %struct.LIST], ptr %1598, i64 0, i64 1
  store ptr %1598, ptr %1601, align 8, !tbaa !5
  %1602 = getelementptr inbounds %struct.LIST, ptr %1598, i64 0, i32 1
  store ptr %1598, ptr %1602, align 8, !tbaa !5
  store ptr %1598, ptr %1598, align 8, !tbaa !5
  store ptr %1598, ptr @xx_link, align 8, !tbaa !8
  store ptr %1598, ptr @zz_res, align 8, !tbaa !8
  store ptr %1532, ptr @zz_hold, align 8, !tbaa !8
  %1603 = load ptr, ptr %1532, align 8, !tbaa !5
  store ptr %1603, ptr @zz_tmp, align 8, !tbaa !8
  %1604 = load ptr, ptr %1598, align 8, !tbaa !5
  store ptr %1604, ptr %1532, align 8, !tbaa !5
  %1605 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1606 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1607 = load ptr, ptr %1606, align 8, !tbaa !5
  %1608 = getelementptr inbounds %struct.LIST, ptr %1607, i64 0, i32 1
  store ptr %1605, ptr %1608, align 8, !tbaa !5
  %1609 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1609, ptr %1606, align 8, !tbaa !5
  %1610 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1611 = getelementptr inbounds %struct.LIST, ptr %1609, i64 0, i32 1
  store ptr %1610, ptr %1611, align 8, !tbaa !5
  %1612 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1612, ptr @zz_res, align 8, !tbaa !8
  store ptr %1550, ptr @zz_hold, align 8, !tbaa !8
  %1613 = icmp eq ptr %1612, null
  br i1 %1613, label %1620, label %1614

1614:                                             ; preds = %1597
  %1615 = load ptr, ptr %1552, align 8, !tbaa !5
  store ptr %1615, ptr @zz_tmp, align 8, !tbaa !8
  %1616 = getelementptr inbounds [2 x %struct.LIST], ptr %1612, i64 0, i64 1
  %1617 = load ptr, ptr %1616, align 8, !tbaa !5
  store ptr %1617, ptr %1552, align 8, !tbaa !5
  %1618 = getelementptr inbounds [2 x %struct.LIST], ptr %1617, i64 0, i64 1, i32 1
  store ptr %1550, ptr %1618, align 8, !tbaa !5
  store ptr %1615, ptr %1616, align 8, !tbaa !5
  %1619 = getelementptr inbounds [2 x %struct.LIST], ptr %1615, i64 0, i64 1, i32 1
  store ptr %1612, ptr %1619, align 8, !tbaa !5
  br label %1620

1620:                                             ; preds = %1597, %1614
  %1621 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1622 = zext i8 %1621 to i32
  store i32 %1622, ptr @zz_size, align 4, !tbaa !10
  %1623 = zext i8 %1621 to i64
  %1624 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1623
  %1625 = load ptr, ptr %1624, align 8, !tbaa !8
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1627, label %1630

1627:                                             ; preds = %1620
  %1628 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1629 = call ptr @GetMemory(i32 noundef %1622, ptr noundef %1628) #6
  br label %1632

1630:                                             ; preds = %1620
  store ptr %1625, ptr @zz_hold, align 8, !tbaa !8
  %1631 = load ptr, ptr %1625, align 8, !tbaa !5
  store ptr %1631, ptr %1624, align 8, !tbaa !8
  br label %1632

1632:                                             ; preds = %1627, %1630
  %1633 = phi ptr [ %1629, %1627 ], [ %1625, %1630 ]
  %1634 = getelementptr inbounds %struct.word_type, ptr %1633, i64 0, i32 1
  store i8 0, ptr %1634, align 8, !tbaa !5
  %1635 = getelementptr inbounds [2 x %struct.LIST], ptr %1633, i64 0, i64 1, i32 1
  store ptr %1633, ptr %1635, align 8, !tbaa !5
  %1636 = getelementptr inbounds [2 x %struct.LIST], ptr %1633, i64 0, i64 1
  store ptr %1633, ptr %1636, align 8, !tbaa !5
  %1637 = getelementptr inbounds %struct.LIST, ptr %1633, i64 0, i32 1
  store ptr %1633, ptr %1637, align 8, !tbaa !5
  store ptr %1633, ptr %1633, align 8, !tbaa !5
  store ptr %1633, ptr @xx_link, align 8, !tbaa !8
  store ptr %1633, ptr @zz_res, align 8, !tbaa !8
  store ptr %1550, ptr @zz_hold, align 8, !tbaa !8
  %1638 = load ptr, ptr %1550, align 8, !tbaa !5
  store ptr %1638, ptr @zz_tmp, align 8, !tbaa !8
  %1639 = load ptr, ptr %1633, align 8, !tbaa !5
  store ptr %1639, ptr %1550, align 8, !tbaa !5
  %1640 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1641 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1642 = load ptr, ptr %1641, align 8, !tbaa !5
  %1643 = getelementptr inbounds %struct.LIST, ptr %1642, i64 0, i32 1
  store ptr %1640, ptr %1643, align 8, !tbaa !5
  %1644 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1644, ptr %1641, align 8, !tbaa !5
  %1645 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1646 = getelementptr inbounds %struct.LIST, ptr %1644, i64 0, i32 1
  store ptr %1645, ptr %1646, align 8, !tbaa !5
  %1647 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1647, ptr @zz_res, align 8, !tbaa !8
  store ptr %1504, ptr @zz_hold, align 8, !tbaa !8
  %1648 = icmp eq ptr %1647, null
  br i1 %1648, label %1656, label %1649

1649:                                             ; preds = %1632
  %1650 = getelementptr inbounds [2 x %struct.LIST], ptr %1504, i64 0, i64 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !5
  store ptr %1651, ptr @zz_tmp, align 8, !tbaa !8
  %1652 = getelementptr inbounds [2 x %struct.LIST], ptr %1647, i64 0, i64 1
  %1653 = load ptr, ptr %1652, align 8, !tbaa !5
  store ptr %1653, ptr %1650, align 8, !tbaa !5
  %1654 = getelementptr inbounds [2 x %struct.LIST], ptr %1653, i64 0, i64 1, i32 1
  store ptr %1504, ptr %1654, align 8, !tbaa !5
  store ptr %1651, ptr %1652, align 8, !tbaa !5
  %1655 = getelementptr inbounds [2 x %struct.LIST], ptr %1651, i64 0, i64 1, i32 1
  store ptr %1647, ptr %1655, align 8, !tbaa !5
  br label %1656

1656:                                             ; preds = %1632, %1649
  call void @SetTarget(ptr noundef nonnull %1550) #6
  store i8 -127, ptr %1576, align 8, !tbaa !5
  %1657 = load ptr, ptr %1570, align 8, !tbaa !5
  %1658 = getelementptr inbounds %struct.symbol_type, ptr %1657, i64 0, i32 16
  %1659 = load i8, ptr %1658, align 2
  %1660 = and i8 %1659, 32
  %1661 = icmp eq i8 %1660, 0
  br i1 %1661, label %1664, label %1662

1662:                                             ; preds = %1656
  %1663 = call ptr @BuildEnclose(ptr noundef nonnull %1550) #6
  br label %1664

1664:                                             ; preds = %1656, %1662
  %1665 = phi ptr [ %1663, %1662 ], [ null, %1656 ]
  %1666 = getelementptr inbounds %struct.head_type, ptr %1550, i64 0, i32 12
  store ptr %1665, ptr %1666, align 8, !tbaa !5
  %1667 = getelementptr inbounds %struct.head_type, ptr %1550, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1667, i8 0, i64 16, i1 false)
  %1668 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1669 = zext i8 %1668 to i32
  store i32 %1669, ptr @zz_size, align 4, !tbaa !10
  %1670 = zext i8 %1668 to i64
  %1671 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1670
  %1672 = load ptr, ptr %1671, align 8, !tbaa !8
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1674, label %1677

1674:                                             ; preds = %1664
  %1675 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1676 = call ptr @GetMemory(i32 noundef %1669, ptr noundef %1675) #6
  br label %1679

1677:                                             ; preds = %1664
  store ptr %1672, ptr @zz_hold, align 8, !tbaa !8
  %1678 = load ptr, ptr %1672, align 8, !tbaa !5
  store ptr %1678, ptr %1671, align 8, !tbaa !8
  br label %1679

1679:                                             ; preds = %1674, %1677
  %1680 = phi ptr [ %1676, %1674 ], [ %1672, %1677 ]
  %1681 = getelementptr inbounds %struct.word_type, ptr %1680, i64 0, i32 1
  store i8 0, ptr %1681, align 8, !tbaa !5
  %1682 = getelementptr inbounds [2 x %struct.LIST], ptr %1680, i64 0, i64 1, i32 1
  store ptr %1680, ptr %1682, align 8, !tbaa !5
  %1683 = getelementptr inbounds [2 x %struct.LIST], ptr %1680, i64 0, i64 1
  store ptr %1680, ptr %1683, align 8, !tbaa !5
  %1684 = getelementptr inbounds %struct.LIST, ptr %1680, i64 0, i32 1
  store ptr %1680, ptr %1684, align 8, !tbaa !5
  store ptr %1680, ptr %1680, align 8, !tbaa !5
  store ptr %1680, ptr @xx_link, align 8, !tbaa !8
  store ptr %1680, ptr @zz_res, align 8, !tbaa !8
  %1685 = load ptr, ptr %3, align 8, !tbaa !8
  %1686 = getelementptr inbounds [2 x %struct.LIST], ptr %1685, i64 0, i64 1, i32 1
  %1687 = load ptr, ptr %1686, align 8, !tbaa !5
  store ptr %1687, ptr @zz_hold, align 8, !tbaa !8
  %1688 = icmp eq ptr %1687, null
  br i1 %1688, label %1689, label %1690

1689:                                             ; preds = %1679
  store ptr %1532, ptr @zz_hold, align 8, !tbaa !8
  br label %1702

1690:                                             ; preds = %1679
  %1691 = load ptr, ptr %1687, align 8, !tbaa !5
  store ptr %1691, ptr @zz_tmp, align 8, !tbaa !8
  %1692 = load ptr, ptr %1680, align 8, !tbaa !5
  store ptr %1692, ptr %1687, align 8, !tbaa !5
  %1693 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1694 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1695 = load ptr, ptr %1694, align 8, !tbaa !5
  %1696 = getelementptr inbounds %struct.LIST, ptr %1695, i64 0, i32 1
  store ptr %1693, ptr %1696, align 8, !tbaa !5
  %1697 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1697, ptr %1694, align 8, !tbaa !5
  %1698 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1699 = getelementptr inbounds %struct.LIST, ptr %1697, i64 0, i32 1
  store ptr %1698, ptr %1699, align 8, !tbaa !5
  %1700 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1700, ptr @zz_res, align 8, !tbaa !8
  store ptr %1532, ptr @zz_hold, align 8, !tbaa !8
  %1701 = icmp eq ptr %1700, null
  br i1 %1701, label %1709, label %1702

1702:                                             ; preds = %1689, %1690
  %1703 = phi ptr [ %1680, %1689 ], [ %1700, %1690 ]
  %1704 = load ptr, ptr %1534, align 8, !tbaa !5
  store ptr %1704, ptr @zz_tmp, align 8, !tbaa !8
  %1705 = getelementptr inbounds [2 x %struct.LIST], ptr %1703, i64 0, i64 1
  %1706 = load ptr, ptr %1705, align 8, !tbaa !5
  store ptr %1706, ptr %1534, align 8, !tbaa !5
  %1707 = getelementptr inbounds [2 x %struct.LIST], ptr %1706, i64 0, i64 1, i32 1
  store ptr %1532, ptr %1707, align 8, !tbaa !5
  store ptr %1704, ptr %1705, align 8, !tbaa !5
  %1708 = getelementptr inbounds [2 x %struct.LIST], ptr %1704, i64 0, i64 1, i32 1
  store ptr %1703, ptr %1708, align 8, !tbaa !5
  br label %1709

1709:                                             ; preds = %1690, %1702
  %1710 = getelementptr inbounds %struct.LIST, ptr %1493, i64 0, i32 1
  %1711 = load ptr, ptr %1710, align 8, !tbaa !5
  br label %1712

1712:                                             ; preds = %1712, %1709
  %1713 = phi ptr [ %1711, %1709 ], [ %1715, %1712 ]
  %1714 = getelementptr inbounds [2 x %struct.LIST], ptr %1713, i64 0, i64 1
  %1715 = load ptr, ptr %1714, align 8, !tbaa !5
  %1716 = getelementptr inbounds %struct.word_type, ptr %1715, i64 0, i32 1
  %1717 = load i8, ptr %1716, align 8, !tbaa !5
  %1718 = icmp eq i8 %1717, 0
  br i1 %1718, label %1712, label %1719

1719:                                             ; preds = %1712
  %1720 = load ptr, ptr %1493, align 8, !tbaa !5
  br label %1721

1721:                                             ; preds = %1721, %1719
  %1722 = phi ptr [ %1720, %1719 ], [ %1724, %1721 ]
  %1723 = getelementptr inbounds [2 x %struct.LIST], ptr %1722, i64 0, i64 1
  %1724 = load ptr, ptr %1723, align 8, !tbaa !5
  %1725 = getelementptr inbounds %struct.word_type, ptr %1724, i64 0, i32 1
  %1726 = load i8, ptr %1725, align 8, !tbaa !5
  %1727 = icmp eq i8 %1726, 0
  br i1 %1727, label %1721, label %1728

1728:                                             ; preds = %1721
  %1729 = getelementptr inbounds %struct.ext_gall_type, ptr %1493, i64 0, i32 5
  %1730 = getelementptr inbounds %struct.ext_gall_type, ptr %1493, i64 0, i32 6
  %1731 = getelementptr inbounds %struct.word_type, ptr %1715, i64 0, i32 4
  %1732 = getelementptr inbounds %struct.word_type, ptr %1724, i64 0, i32 4
  br label %1733

1733:                                             ; preds = %1728, %1891
  %1734 = phi ptr [ %1892, %1891 ], [ %1550, %1728 ]
  %1735 = load ptr, ptr @OldCrossDb, align 8, !tbaa !8
  %1736 = call i32 @DbRetrieveNext(ptr noundef %1735, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %1498, ptr noundef nonnull %1500, ptr noundef nonnull %1502, ptr noundef nonnull %1729) #6
  %1737 = icmp eq i32 %1736, 0
  %1738 = load i32, ptr %13, align 4
  %1739 = icmp eq i32 %1738, 0
  %1740 = select i1 %1737, i1 true, i1 %1739
  br i1 %1740, label %2073, label %1741

1741:                                             ; preds = %1733
  %1742 = load ptr, ptr %12, align 8, !tbaa !8
  %1743 = load ptr, ptr %1730, align 8, !tbaa !5
  %1744 = icmp eq ptr %1742, %1743
  br i1 %1744, label %1745, label %2073

1745:                                             ; preds = %1741
  %1746 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1731) #7
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1748, label %2073

1748:                                             ; preds = %1745
  %1749 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1732) #7
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1751, label %1891

1751:                                             ; preds = %1748
  call void @SwitchScope(ptr noundef null) #6
  %1752 = load i16, ptr %1498, align 2, !tbaa !5
  %1753 = load i64, ptr %1500, align 8, !tbaa !5
  %1754 = load i32, ptr %1502, align 4, !tbaa !5
  %1755 = call ptr @ReadFromFile(i16 noundef zeroext %1752, i64 noundef %1753, i32 noundef %1754) #6
  call void @UnSwitchScope(ptr noundef null) #6
  %1756 = icmp eq ptr %1755, null
  br i1 %1756, label %1757, label %1763

1757:                                             ; preds = %1751
  %1758 = load ptr, ptr %3, align 8, !tbaa !8
  %1759 = getelementptr inbounds %struct.word_type, ptr %1758, i64 0, i32 1
  %1760 = load i16, ptr %1498, align 2, !tbaa !5
  %1761 = call ptr @FileName(i16 noundef zeroext %1760) #6
  %1762 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 20, i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %1759, ptr noundef %1761) #6
  br label %1763

1763:                                             ; preds = %1757, %1751
  %1764 = getelementptr inbounds %struct.word_type, ptr %1755, i64 0, i32 1
  %1765 = load i8, ptr %1764, align 8, !tbaa !5
  %1766 = icmp eq i8 %1765, 2
  br i1 %1766, label %1770, label %1767

1767:                                             ; preds = %1763
  %1768 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1769 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1768, ptr noundef nonnull @.str.27) #6
  br label %1770

1770:                                             ; preds = %1767, %1763
  %1771 = getelementptr inbounds %struct.closure_type, ptr %1755, i64 0, i32 5
  %1772 = load ptr, ptr %1771, align 8, !tbaa !5
  %1773 = getelementptr inbounds %struct.symbol_type, ptr %1772, i64 0, i32 16
  %1774 = load i8, ptr %1773, align 2
  %1775 = and i8 %1774, 8
  %1776 = icmp eq i8 %1775, 0
  br i1 %1776, label %1777, label %1779

1777:                                             ; preds = %1770
  %1778 = call i32 @DisposeObject(ptr noundef nonnull %1755) #6
  br label %1891

1779:                                             ; preds = %1770
  %1780 = getelementptr inbounds %struct.word_type, ptr %1734, i64 0, i32 1
  %1781 = load i8, ptr %1780, align 8, !tbaa !5
  %1782 = icmp eq i8 %1781, 17
  br i1 %1782, label %1854, label %1783

1783:                                             ; preds = %1779
  %1784 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %1785 = zext i8 %1784 to i32
  store i32 %1785, ptr @zz_size, align 4, !tbaa !10
  %1786 = zext i8 %1784 to i64
  %1787 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1786
  %1788 = load ptr, ptr %1787, align 8, !tbaa !8
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %1790, label %1793

1790:                                             ; preds = %1783
  %1791 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1792 = call ptr @GetMemory(i32 noundef %1785, ptr noundef %1791) #6
  store ptr %1792, ptr @zz_hold, align 8, !tbaa !8
  br label %1795

1793:                                             ; preds = %1783
  store ptr %1788, ptr @zz_hold, align 8, !tbaa !8
  %1794 = load ptr, ptr %1788, align 8, !tbaa !5
  store ptr %1794, ptr %1787, align 8, !tbaa !8
  br label %1795

1795:                                             ; preds = %1790, %1793
  %1796 = phi ptr [ %1792, %1790 ], [ %1788, %1793 ]
  %1797 = getelementptr inbounds %struct.word_type, ptr %1796, i64 0, i32 1
  store i8 17, ptr %1797, align 8, !tbaa !5
  %1798 = getelementptr inbounds [2 x %struct.LIST], ptr %1796, i64 0, i64 1
  %1799 = getelementptr inbounds [2 x %struct.LIST], ptr %1796, i64 0, i64 1, i32 1
  store ptr %1796, ptr %1799, align 8, !tbaa !5
  store ptr %1796, ptr %1798, align 8, !tbaa !5
  %1800 = getelementptr inbounds %struct.LIST, ptr %1796, i64 0, i32 1
  store ptr %1796, ptr %1800, align 8, !tbaa !5
  store ptr %1796, ptr %1796, align 8, !tbaa !5
  %1801 = getelementptr inbounds [2 x %struct.LIST], ptr %1734, i64 0, i64 1
  %1802 = getelementptr inbounds [2 x %struct.LIST], ptr %1734, i64 0, i64 1, i32 1
  %1803 = load ptr, ptr %1802, align 8, !tbaa !5
  store ptr %1803, ptr @xx_link, align 8, !tbaa !8
  %1804 = getelementptr inbounds [2 x %struct.LIST], ptr %1803, i64 0, i64 1, i32 1
  %1805 = load ptr, ptr %1804, align 8, !tbaa !5
  %1806 = icmp eq ptr %1805, %1803
  %1807 = getelementptr inbounds [2 x %struct.LIST], ptr %1803, i64 0, i64 1
  %1808 = load ptr, ptr %1807, align 8, !tbaa !5
  br i1 %1806, label %1813, label %1809

1809:                                             ; preds = %1795
  %1810 = getelementptr inbounds [2 x %struct.LIST], ptr %1805, i64 0, i64 1
  store ptr %1808, ptr %1810, align 8, !tbaa !5
  %1811 = getelementptr inbounds [2 x %struct.LIST], ptr %1808, i64 0, i64 1, i32 1
  store ptr %1805, ptr %1811, align 8, !tbaa !5
  store ptr %1803, ptr %1804, align 8, !tbaa !5
  store ptr %1803, ptr %1807, align 8, !tbaa !5
  %1812 = load ptr, ptr %1798, align 8, !tbaa !5
  br label %1813

1813:                                             ; preds = %1795, %1809
  %1814 = phi ptr [ %1803, %1809 ], [ %1808, %1795 ]
  %1815 = phi ptr [ %1812, %1809 ], [ %1796, %1795 ]
  store ptr %1803, ptr @zz_res, align 8, !tbaa !8
  store ptr %1796, ptr @zz_hold, align 8, !tbaa !8
  store ptr %1815, ptr @zz_tmp, align 8, !tbaa !8
  %1816 = getelementptr inbounds [2 x %struct.LIST], ptr %1803, i64 0, i64 1
  store ptr %1814, ptr %1798, align 8, !tbaa !5
  %1817 = load ptr, ptr %1816, align 8, !tbaa !5
  %1818 = getelementptr inbounds [2 x %struct.LIST], ptr %1817, i64 0, i64 1, i32 1
  store ptr %1796, ptr %1818, align 8, !tbaa !5
  store ptr %1815, ptr %1816, align 8, !tbaa !5
  %1819 = getelementptr inbounds [2 x %struct.LIST], ptr %1815, i64 0, i64 1, i32 1
  store ptr %1803, ptr %1819, align 8, !tbaa !5
  %1820 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1821 = zext i8 %1820 to i32
  store i32 %1821, ptr @zz_size, align 4, !tbaa !10
  %1822 = zext i8 %1820 to i64
  %1823 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1822
  %1824 = load ptr, ptr %1823, align 8, !tbaa !8
  %1825 = icmp eq ptr %1824, null
  br i1 %1825, label %1826, label %1829

1826:                                             ; preds = %1813
  %1827 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1828 = call ptr @GetMemory(i32 noundef %1821, ptr noundef %1827) #6
  br label %1831

1829:                                             ; preds = %1813
  store ptr %1824, ptr @zz_hold, align 8, !tbaa !8
  %1830 = load ptr, ptr %1824, align 8, !tbaa !5
  store ptr %1830, ptr %1823, align 8, !tbaa !8
  br label %1831

1831:                                             ; preds = %1826, %1829
  %1832 = phi ptr [ %1828, %1826 ], [ %1824, %1829 ]
  %1833 = getelementptr inbounds %struct.word_type, ptr %1832, i64 0, i32 1
  store i8 0, ptr %1833, align 8, !tbaa !5
  %1834 = getelementptr inbounds [2 x %struct.LIST], ptr %1832, i64 0, i64 1, i32 1
  store ptr %1832, ptr %1834, align 8, !tbaa !5
  %1835 = getelementptr inbounds [2 x %struct.LIST], ptr %1832, i64 0, i64 1
  store ptr %1832, ptr %1835, align 8, !tbaa !5
  %1836 = getelementptr inbounds %struct.LIST, ptr %1832, i64 0, i32 1
  store ptr %1832, ptr %1836, align 8, !tbaa !5
  store ptr %1832, ptr %1832, align 8, !tbaa !5
  store ptr %1832, ptr @xx_link, align 8, !tbaa !8
  store ptr %1832, ptr @zz_res, align 8, !tbaa !8
  store ptr %1796, ptr @zz_hold, align 8, !tbaa !8
  %1837 = load ptr, ptr %1796, align 8, !tbaa !5
  store ptr %1837, ptr @zz_tmp, align 8, !tbaa !8
  %1838 = load ptr, ptr %1832, align 8, !tbaa !5
  store ptr %1838, ptr %1796, align 8, !tbaa !5
  %1839 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1840 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1841 = load ptr, ptr %1840, align 8, !tbaa !5
  %1842 = getelementptr inbounds %struct.LIST, ptr %1841, i64 0, i32 1
  store ptr %1839, ptr %1842, align 8, !tbaa !5
  %1843 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1843, ptr %1840, align 8, !tbaa !5
  %1844 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1845 = getelementptr inbounds %struct.LIST, ptr %1843, i64 0, i32 1
  store ptr %1844, ptr %1845, align 8, !tbaa !5
  %1846 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1846, ptr @zz_res, align 8, !tbaa !8
  store ptr %1734, ptr @zz_hold, align 8, !tbaa !8
  %1847 = icmp eq ptr %1846, null
  br i1 %1847, label %1854, label %1848

1848:                                             ; preds = %1831
  %1849 = load ptr, ptr %1801, align 8, !tbaa !5
  store ptr %1849, ptr @zz_tmp, align 8, !tbaa !8
  %1850 = getelementptr inbounds [2 x %struct.LIST], ptr %1846, i64 0, i64 1
  %1851 = load ptr, ptr %1850, align 8, !tbaa !5
  store ptr %1851, ptr %1801, align 8, !tbaa !5
  %1852 = getelementptr inbounds [2 x %struct.LIST], ptr %1851, i64 0, i64 1, i32 1
  store ptr %1734, ptr %1852, align 8, !tbaa !5
  store ptr %1849, ptr %1850, align 8, !tbaa !5
  %1853 = getelementptr inbounds [2 x %struct.LIST], ptr %1849, i64 0, i64 1, i32 1
  store ptr %1846, ptr %1853, align 8, !tbaa !5
  br label %1854

1854:                                             ; preds = %1848, %1831, %1779
  %1855 = phi ptr [ %1734, %1779 ], [ %1796, %1831 ], [ %1796, %1848 ]
  %1856 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1857 = zext i8 %1856 to i32
  store i32 %1857, ptr @zz_size, align 4, !tbaa !10
  %1858 = zext i8 %1856 to i64
  %1859 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1858
  %1860 = load ptr, ptr %1859, align 8, !tbaa !8
  %1861 = icmp eq ptr %1860, null
  br i1 %1861, label %1862, label %1865

1862:                                             ; preds = %1854
  %1863 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1864 = call ptr @GetMemory(i32 noundef %1857, ptr noundef %1863) #6
  br label %1867

1865:                                             ; preds = %1854
  store ptr %1860, ptr @zz_hold, align 8, !tbaa !8
  %1866 = load ptr, ptr %1860, align 8, !tbaa !5
  store ptr %1866, ptr %1859, align 8, !tbaa !8
  br label %1867

1867:                                             ; preds = %1862, %1865
  %1868 = phi ptr [ %1864, %1862 ], [ %1860, %1865 ]
  %1869 = getelementptr inbounds %struct.word_type, ptr %1868, i64 0, i32 1
  store i8 0, ptr %1869, align 8, !tbaa !5
  %1870 = getelementptr inbounds [2 x %struct.LIST], ptr %1868, i64 0, i64 1, i32 1
  store ptr %1868, ptr %1870, align 8, !tbaa !5
  %1871 = getelementptr inbounds [2 x %struct.LIST], ptr %1868, i64 0, i64 1
  store ptr %1868, ptr %1871, align 8, !tbaa !5
  %1872 = getelementptr inbounds %struct.LIST, ptr %1868, i64 0, i32 1
  store ptr %1868, ptr %1872, align 8, !tbaa !5
  store ptr %1868, ptr %1868, align 8, !tbaa !5
  store ptr %1868, ptr @xx_link, align 8, !tbaa !8
  store ptr %1868, ptr @zz_res, align 8, !tbaa !8
  store ptr %1855, ptr @zz_hold, align 8, !tbaa !8
  %1873 = load ptr, ptr %1855, align 8, !tbaa !5
  store ptr %1873, ptr @zz_tmp, align 8, !tbaa !8
  %1874 = load ptr, ptr %1868, align 8, !tbaa !5
  store ptr %1874, ptr %1855, align 8, !tbaa !5
  %1875 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1876 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1877 = load ptr, ptr %1876, align 8, !tbaa !5
  %1878 = getelementptr inbounds %struct.LIST, ptr %1877, i64 0, i32 1
  store ptr %1875, ptr %1878, align 8, !tbaa !5
  %1879 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %1879, ptr %1876, align 8, !tbaa !5
  %1880 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1881 = getelementptr inbounds %struct.LIST, ptr %1879, i64 0, i32 1
  store ptr %1880, ptr %1881, align 8, !tbaa !5
  %1882 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %1882, ptr @zz_res, align 8, !tbaa !8
  store ptr %1755, ptr @zz_hold, align 8, !tbaa !8
  %1883 = icmp eq ptr %1882, null
  br i1 %1883, label %1891, label %1884

1884:                                             ; preds = %1867
  %1885 = getelementptr inbounds [2 x %struct.LIST], ptr %1755, i64 0, i64 1
  %1886 = load ptr, ptr %1885, align 8, !tbaa !5
  store ptr %1886, ptr @zz_tmp, align 8, !tbaa !8
  %1887 = getelementptr inbounds [2 x %struct.LIST], ptr %1882, i64 0, i64 1
  %1888 = load ptr, ptr %1887, align 8, !tbaa !5
  store ptr %1888, ptr %1885, align 8, !tbaa !5
  %1889 = getelementptr inbounds [2 x %struct.LIST], ptr %1888, i64 0, i64 1, i32 1
  store ptr %1755, ptr %1889, align 8, !tbaa !5
  store ptr %1886, ptr %1887, align 8, !tbaa !5
  %1890 = getelementptr inbounds [2 x %struct.LIST], ptr %1886, i64 0, i64 1, i32 1
  store ptr %1882, ptr %1890, align 8, !tbaa !5
  br label %1891

1891:                                             ; preds = %1884, %1777, %1748, %1867
  %1892 = phi ptr [ %1855, %1867 ], [ %1734, %1748 ], [ %1734, %1777 ], [ %1855, %1884 ]
  %1893 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1732) #7
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1733, label %1895

1895:                                             ; preds = %1891
  %1896 = getelementptr inbounds [2 x %struct.LIST], ptr %1715, i64 0, i64 1, i32 1
  %1897 = load ptr, ptr %1896, align 8, !tbaa !5
  store ptr %1897, ptr @xx_link, align 8, !tbaa !8
  %1898 = getelementptr inbounds [2 x %struct.LIST], ptr %1897, i64 0, i64 1, i32 1
  %1899 = load ptr, ptr %1898, align 8, !tbaa !5
  %1900 = icmp eq ptr %1899, %1897
  br i1 %1900, label %1906, label %1901

1901:                                             ; preds = %1895
  store ptr %1899, ptr @zz_res, align 8, !tbaa !8
  %1902 = getelementptr inbounds [2 x %struct.LIST], ptr %1897, i64 0, i64 1
  %1903 = load ptr, ptr %1902, align 8, !tbaa !5
  %1904 = getelementptr inbounds [2 x %struct.LIST], ptr %1899, i64 0, i64 1
  store ptr %1903, ptr %1904, align 8, !tbaa !5
  %1905 = getelementptr inbounds [2 x %struct.LIST], ptr %1903, i64 0, i64 1, i32 1
  store ptr %1899, ptr %1905, align 8, !tbaa !5
  store ptr %1897, ptr %1898, align 8, !tbaa !5
  store ptr %1897, ptr %1902, align 8, !tbaa !5
  br label %1906

1906:                                             ; preds = %1895, %1901
  %1907 = phi ptr [ %1899, %1901 ], [ null, %1895 ]
  store ptr %1907, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1897, ptr @zz_hold, align 8, !tbaa !8
  %1908 = getelementptr inbounds %struct.LIST, ptr %1897, i64 0, i32 1
  %1909 = load ptr, ptr %1908, align 8, !tbaa !5
  %1910 = icmp eq ptr %1909, %1897
  br i1 %1910, label %1919, label %1911

1911:                                             ; preds = %1906
  store ptr %1909, ptr @zz_res, align 8, !tbaa !8
  %1912 = load ptr, ptr %1897, align 8, !tbaa !5
  store ptr %1912, ptr %1909, align 8, !tbaa !5
  %1913 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1914 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1915 = load ptr, ptr %1914, align 8, !tbaa !5
  %1916 = getelementptr inbounds %struct.LIST, ptr %1915, i64 0, i32 1
  store ptr %1913, ptr %1916, align 8, !tbaa !5
  %1917 = getelementptr inbounds %struct.LIST, ptr %1914, i64 0, i32 1
  store ptr %1914, ptr %1917, align 8, !tbaa !5
  store ptr %1914, ptr %1914, align 8, !tbaa !5
  %1918 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1919

1919:                                             ; preds = %1906, %1911
  %1920 = phi ptr [ %1897, %1906 ], [ %1918, %1911 ]
  store ptr %1920, ptr @zz_hold, align 8, !tbaa !8
  %1921 = getelementptr inbounds %struct.word_type, ptr %1920, i64 0, i32 1
  %1922 = load i8, ptr %1921, align 8, !tbaa !5
  %1923 = add i8 %1922, -11
  %1924 = icmp ult i8 %1923, 2
  %1925 = getelementptr inbounds %struct.word_type, ptr %1920, i64 0, i32 1, i32 0, i32 1
  %1926 = zext i8 %1922 to i64
  %1927 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1926
  %1928 = select i1 %1924, ptr %1925, ptr %1927
  %1929 = load i8, ptr %1928, align 1, !tbaa !5
  %1930 = zext i8 %1929 to i32
  store i32 %1930, ptr @zz_size, align 4, !tbaa !10
  %1931 = zext i8 %1929 to i64
  %1932 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1931
  %1933 = load ptr, ptr %1932, align 8, !tbaa !8
  store ptr %1933, ptr %1920, align 8, !tbaa !5
  %1934 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1935 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1936
  store ptr %1934, ptr %1937, align 8, !tbaa !8
  %1938 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1939 = getelementptr inbounds [2 x %struct.LIST], ptr %1938, i64 0, i64 1, i32 1
  %1940 = load ptr, ptr %1939, align 8, !tbaa !5
  %1941 = icmp eq ptr %1940, %1938
  br i1 %1941, label %1942, label %1944

1942:                                             ; preds = %1919
  %1943 = call i32 @DisposeObject(ptr noundef nonnull %1938) #6
  br label %1944

1944:                                             ; preds = %1942, %1919
  %1945 = getelementptr inbounds [2 x %struct.LIST], ptr %1724, i64 0, i64 1, i32 1
  %1946 = load ptr, ptr %1945, align 8, !tbaa !5
  store ptr %1946, ptr @xx_link, align 8, !tbaa !8
  %1947 = getelementptr inbounds [2 x %struct.LIST], ptr %1946, i64 0, i64 1, i32 1
  %1948 = load ptr, ptr %1947, align 8, !tbaa !5
  %1949 = icmp eq ptr %1948, %1946
  br i1 %1949, label %1955, label %1950

1950:                                             ; preds = %1944
  store ptr %1948, ptr @zz_res, align 8, !tbaa !8
  %1951 = getelementptr inbounds [2 x %struct.LIST], ptr %1946, i64 0, i64 1
  %1952 = load ptr, ptr %1951, align 8, !tbaa !5
  %1953 = getelementptr inbounds [2 x %struct.LIST], ptr %1948, i64 0, i64 1
  store ptr %1952, ptr %1953, align 8, !tbaa !5
  %1954 = getelementptr inbounds [2 x %struct.LIST], ptr %1952, i64 0, i64 1, i32 1
  store ptr %1948, ptr %1954, align 8, !tbaa !5
  store ptr %1946, ptr %1947, align 8, !tbaa !5
  store ptr %1946, ptr %1951, align 8, !tbaa !5
  br label %1955

1955:                                             ; preds = %1944, %1950
  %1956 = phi ptr [ %1948, %1950 ], [ null, %1944 ]
  store ptr %1956, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %1946, ptr @zz_hold, align 8, !tbaa !8
  %1957 = getelementptr inbounds %struct.LIST, ptr %1946, i64 0, i32 1
  %1958 = load ptr, ptr %1957, align 8, !tbaa !5
  %1959 = icmp eq ptr %1958, %1946
  br i1 %1959, label %1968, label %1960

1960:                                             ; preds = %1955
  store ptr %1958, ptr @zz_res, align 8, !tbaa !8
  %1961 = load ptr, ptr %1946, align 8, !tbaa !5
  store ptr %1961, ptr %1958, align 8, !tbaa !5
  %1962 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %1963 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1964 = load ptr, ptr %1963, align 8, !tbaa !5
  %1965 = getelementptr inbounds %struct.LIST, ptr %1964, i64 0, i32 1
  store ptr %1962, ptr %1965, align 8, !tbaa !5
  %1966 = getelementptr inbounds %struct.LIST, ptr %1963, i64 0, i32 1
  store ptr %1963, ptr %1966, align 8, !tbaa !5
  store ptr %1963, ptr %1963, align 8, !tbaa !5
  %1967 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %1968

1968:                                             ; preds = %1955, %1960
  %1969 = phi ptr [ %1946, %1955 ], [ %1967, %1960 ]
  store ptr %1969, ptr @zz_hold, align 8, !tbaa !8
  %1970 = getelementptr inbounds %struct.word_type, ptr %1969, i64 0, i32 1
  %1971 = load i8, ptr %1970, align 8, !tbaa !5
  %1972 = add i8 %1971, -11
  %1973 = icmp ult i8 %1972, 2
  %1974 = getelementptr inbounds %struct.word_type, ptr %1969, i64 0, i32 1, i32 0, i32 1
  %1975 = zext i8 %1971 to i64
  %1976 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %1975
  %1977 = select i1 %1973, ptr %1974, ptr %1976
  %1978 = load i8, ptr %1977, align 1, !tbaa !5
  %1979 = zext i8 %1978 to i32
  store i32 %1979, ptr @zz_size, align 4, !tbaa !10
  %1980 = zext i8 %1978 to i64
  %1981 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1980
  %1982 = load ptr, ptr %1981, align 8, !tbaa !8
  store ptr %1982, ptr %1969, align 8, !tbaa !5
  %1983 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %1984 = load i32, ptr @zz_size, align 4, !tbaa !10
  %1985 = sext i32 %1984 to i64
  %1986 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %1985
  store ptr %1983, ptr %1986, align 8, !tbaa !8
  %1987 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %1988 = getelementptr inbounds [2 x %struct.LIST], ptr %1987, i64 0, i64 1, i32 1
  %1989 = load ptr, ptr %1988, align 8, !tbaa !5
  %1990 = icmp eq ptr %1989, %1987
  br i1 %1990, label %1991, label %1993

1991:                                             ; preds = %1968
  %1992 = call i32 @DisposeObject(ptr noundef nonnull %1987) #6
  br label %1993

1993:                                             ; preds = %1991, %1968
  %1994 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1995 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %14, ptr noundef %1994) #6
  %1996 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %1997 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %15, ptr noundef %1996) #6
  %1998 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %1999 = zext i8 %1998 to i32
  store i32 %1999, ptr @zz_size, align 4, !tbaa !10
  %2000 = zext i8 %1998 to i64
  %2001 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2000
  %2002 = load ptr, ptr %2001, align 8, !tbaa !8
  %2003 = icmp eq ptr %2002, null
  br i1 %2003, label %2004, label %2007

2004:                                             ; preds = %1993
  %2005 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2006 = call ptr @GetMemory(i32 noundef %1999, ptr noundef %2005) #6
  br label %2009

2007:                                             ; preds = %1993
  store ptr %2002, ptr @zz_hold, align 8, !tbaa !8
  %2008 = load ptr, ptr %2002, align 8, !tbaa !5
  store ptr %2008, ptr %2001, align 8, !tbaa !8
  br label %2009

2009:                                             ; preds = %2004, %2007
  %2010 = phi ptr [ %2006, %2004 ], [ %2002, %2007 ]
  %2011 = getelementptr inbounds %struct.word_type, ptr %2010, i64 0, i32 1
  store i8 0, ptr %2011, align 8, !tbaa !5
  %2012 = getelementptr inbounds [2 x %struct.LIST], ptr %2010, i64 0, i64 1, i32 1
  store ptr %2010, ptr %2012, align 8, !tbaa !5
  %2013 = getelementptr inbounds [2 x %struct.LIST], ptr %2010, i64 0, i64 1
  store ptr %2010, ptr %2013, align 8, !tbaa !5
  %2014 = getelementptr inbounds %struct.LIST, ptr %2010, i64 0, i32 1
  store ptr %2010, ptr %2014, align 8, !tbaa !5
  store ptr %2010, ptr %2010, align 8, !tbaa !5
  store ptr %2010, ptr @xx_link, align 8, !tbaa !8
  store ptr %2010, ptr @zz_res, align 8, !tbaa !8
  store ptr %1493, ptr @zz_hold, align 8, !tbaa !8
  %2015 = load ptr, ptr %1493, align 8, !tbaa !5
  store ptr %2015, ptr @zz_tmp, align 8, !tbaa !8
  %2016 = load ptr, ptr %2010, align 8, !tbaa !5
  store ptr %2016, ptr %1493, align 8, !tbaa !5
  %2017 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2018 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2019 = load ptr, ptr %2018, align 8, !tbaa !5
  %2020 = getelementptr inbounds %struct.LIST, ptr %2019, i64 0, i32 1
  store ptr %2017, ptr %2020, align 8, !tbaa !5
  %2021 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2021, ptr %2018, align 8, !tbaa !5
  %2022 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2023 = getelementptr inbounds %struct.LIST, ptr %2021, i64 0, i32 1
  store ptr %2022, ptr %2023, align 8, !tbaa !5
  %2024 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2024, ptr @zz_res, align 8, !tbaa !8
  store ptr %1995, ptr @zz_hold, align 8, !tbaa !8
  %2025 = icmp eq ptr %1995, null
  %2026 = icmp eq ptr %2024, null
  %2027 = select i1 %2025, i1 true, i1 %2026
  br i1 %2027, label %2035, label %2028

2028:                                             ; preds = %2009
  %2029 = getelementptr inbounds [2 x %struct.LIST], ptr %1995, i64 0, i64 1
  %2030 = load ptr, ptr %2029, align 8, !tbaa !5
  store ptr %2030, ptr @zz_tmp, align 8, !tbaa !8
  %2031 = getelementptr inbounds [2 x %struct.LIST], ptr %2024, i64 0, i64 1
  %2032 = load ptr, ptr %2031, align 8, !tbaa !5
  store ptr %2032, ptr %2029, align 8, !tbaa !5
  %2033 = getelementptr inbounds [2 x %struct.LIST], ptr %2032, i64 0, i64 1, i32 1
  store ptr %1995, ptr %2033, align 8, !tbaa !5
  store ptr %2030, ptr %2031, align 8, !tbaa !5
  %2034 = getelementptr inbounds [2 x %struct.LIST], ptr %2030, i64 0, i64 1, i32 1
  store ptr %2024, ptr %2034, align 8, !tbaa !5
  br label %2035

2035:                                             ; preds = %2009, %2028
  %2036 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2037 = zext i8 %2036 to i32
  store i32 %2037, ptr @zz_size, align 4, !tbaa !10
  %2038 = zext i8 %2036 to i64
  %2039 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2038
  %2040 = load ptr, ptr %2039, align 8, !tbaa !8
  %2041 = icmp eq ptr %2040, null
  br i1 %2041, label %2042, label %2045

2042:                                             ; preds = %2035
  %2043 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2044 = call ptr @GetMemory(i32 noundef %2037, ptr noundef %2043) #6
  br label %2047

2045:                                             ; preds = %2035
  store ptr %2040, ptr @zz_hold, align 8, !tbaa !8
  %2046 = load ptr, ptr %2040, align 8, !tbaa !5
  store ptr %2046, ptr %2039, align 8, !tbaa !8
  br label %2047

2047:                                             ; preds = %2042, %2045
  %2048 = phi ptr [ %2044, %2042 ], [ %2040, %2045 ]
  %2049 = getelementptr inbounds %struct.word_type, ptr %2048, i64 0, i32 1
  store i8 0, ptr %2049, align 8, !tbaa !5
  %2050 = getelementptr inbounds [2 x %struct.LIST], ptr %2048, i64 0, i64 1, i32 1
  store ptr %2048, ptr %2050, align 8, !tbaa !5
  %2051 = getelementptr inbounds [2 x %struct.LIST], ptr %2048, i64 0, i64 1
  store ptr %2048, ptr %2051, align 8, !tbaa !5
  %2052 = getelementptr inbounds %struct.LIST, ptr %2048, i64 0, i32 1
  store ptr %2048, ptr %2052, align 8, !tbaa !5
  store ptr %2048, ptr %2048, align 8, !tbaa !5
  store ptr %2048, ptr @xx_link, align 8, !tbaa !8
  store ptr %2048, ptr @zz_res, align 8, !tbaa !8
  store ptr %1493, ptr @zz_hold, align 8, !tbaa !8
  %2053 = load ptr, ptr %1493, align 8, !tbaa !5
  store ptr %2053, ptr @zz_tmp, align 8, !tbaa !8
  %2054 = load ptr, ptr %2048, align 8, !tbaa !5
  store ptr %2054, ptr %1493, align 8, !tbaa !5
  %2055 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2056 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2057 = load ptr, ptr %2056, align 8, !tbaa !5
  %2058 = getelementptr inbounds %struct.LIST, ptr %2057, i64 0, i32 1
  store ptr %2055, ptr %2058, align 8, !tbaa !5
  %2059 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2059, ptr %2056, align 8, !tbaa !5
  %2060 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2061 = getelementptr inbounds %struct.LIST, ptr %2059, i64 0, i32 1
  store ptr %2060, ptr %2061, align 8, !tbaa !5
  %2062 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2062, ptr @zz_res, align 8, !tbaa !8
  store ptr %1997, ptr @zz_hold, align 8, !tbaa !8
  %2063 = icmp eq ptr %1997, null
  %2064 = icmp eq ptr %2062, null
  %2065 = select i1 %2063, i1 true, i1 %2064
  br i1 %2065, label %2145, label %2066

2066:                                             ; preds = %2047
  %2067 = getelementptr inbounds [2 x %struct.LIST], ptr %1997, i64 0, i64 1
  %2068 = load ptr, ptr %2067, align 8, !tbaa !5
  store ptr %2068, ptr @zz_tmp, align 8, !tbaa !8
  %2069 = getelementptr inbounds [2 x %struct.LIST], ptr %2062, i64 0, i64 1
  %2070 = load ptr, ptr %2069, align 8, !tbaa !5
  store ptr %2070, ptr %2067, align 8, !tbaa !5
  %2071 = getelementptr inbounds [2 x %struct.LIST], ptr %2070, i64 0, i64 1, i32 1
  store ptr %1997, ptr %2071, align 8, !tbaa !5
  store ptr %2068, ptr %2069, align 8, !tbaa !5
  %2072 = getelementptr inbounds [2 x %struct.LIST], ptr %2068, i64 0, i64 1, i32 1
  store ptr %2062, ptr %2072, align 8, !tbaa !5
  br label %2145

2073:                                             ; preds = %1741, %1733, %1745
  %2074 = getelementptr inbounds [2 x %struct.LIST], ptr %1493, i64 0, i64 1, i32 1
  %2075 = load ptr, ptr %2074, align 8, !tbaa !5
  store ptr %2075, ptr @xx_link, align 8, !tbaa !8
  %2076 = getelementptr inbounds [2 x %struct.LIST], ptr %2075, i64 0, i64 1, i32 1
  %2077 = load ptr, ptr %2076, align 8, !tbaa !5
  %2078 = icmp eq ptr %2077, %2075
  br i1 %2078, label %2084, label %2079

2079:                                             ; preds = %2073
  store ptr %2077, ptr @zz_res, align 8, !tbaa !8
  %2080 = getelementptr inbounds [2 x %struct.LIST], ptr %2075, i64 0, i64 1
  %2081 = load ptr, ptr %2080, align 8, !tbaa !5
  %2082 = getelementptr inbounds [2 x %struct.LIST], ptr %2077, i64 0, i64 1
  store ptr %2081, ptr %2082, align 8, !tbaa !5
  %2083 = getelementptr inbounds [2 x %struct.LIST], ptr %2081, i64 0, i64 1, i32 1
  store ptr %2077, ptr %2083, align 8, !tbaa !5
  store ptr %2075, ptr %2076, align 8, !tbaa !5
  store ptr %2075, ptr %2080, align 8, !tbaa !5
  br label %2084

2084:                                             ; preds = %2073, %2079
  %2085 = phi ptr [ %2077, %2079 ], [ null, %2073 ]
  store ptr %2085, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %2075, ptr @zz_hold, align 8, !tbaa !8
  %2086 = getelementptr inbounds %struct.LIST, ptr %2075, i64 0, i32 1
  %2087 = load ptr, ptr %2086, align 8, !tbaa !5
  %2088 = icmp eq ptr %2087, %2075
  br i1 %2088, label %2097, label %2089

2089:                                             ; preds = %2084
  store ptr %2087, ptr @zz_res, align 8, !tbaa !8
  %2090 = load ptr, ptr %2075, align 8, !tbaa !5
  store ptr %2090, ptr %2087, align 8, !tbaa !5
  %2091 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2092 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2093 = load ptr, ptr %2092, align 8, !tbaa !5
  %2094 = getelementptr inbounds %struct.LIST, ptr %2093, i64 0, i32 1
  store ptr %2091, ptr %2094, align 8, !tbaa !5
  %2095 = getelementptr inbounds %struct.LIST, ptr %2092, i64 0, i32 1
  store ptr %2092, ptr %2095, align 8, !tbaa !5
  store ptr %2092, ptr %2092, align 8, !tbaa !5
  %2096 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2097

2097:                                             ; preds = %2084, %2089
  %2098 = phi ptr [ %2075, %2084 ], [ %2096, %2089 ]
  store ptr %2098, ptr @zz_hold, align 8, !tbaa !8
  %2099 = getelementptr inbounds %struct.word_type, ptr %2098, i64 0, i32 1
  %2100 = load i8, ptr %2099, align 8, !tbaa !5
  %2101 = add i8 %2100, -11
  %2102 = icmp ult i8 %2101, 2
  %2103 = getelementptr inbounds %struct.word_type, ptr %2098, i64 0, i32 1, i32 0, i32 1
  %2104 = zext i8 %2100 to i64
  %2105 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2104
  %2106 = select i1 %2102, ptr %2103, ptr %2105
  %2107 = load i8, ptr %2106, align 1, !tbaa !5
  %2108 = zext i8 %2107 to i32
  store i32 %2108, ptr @zz_size, align 4, !tbaa !10
  %2109 = zext i8 %2107 to i64
  %2110 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2109
  %2111 = load ptr, ptr %2110, align 8, !tbaa !8
  store ptr %2111, ptr %2098, align 8, !tbaa !5
  %2112 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2113 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2114 = sext i32 %2113 to i64
  %2115 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2114
  store ptr %2112, ptr %2115, align 8, !tbaa !8
  %2116 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %2117 = getelementptr inbounds [2 x %struct.LIST], ptr %2116, i64 0, i64 1, i32 1
  %2118 = load ptr, ptr %2117, align 8, !tbaa !5
  %2119 = icmp eq ptr %2118, %2116
  br i1 %2119, label %2120, label %2122

2120:                                             ; preds = %2097
  %2121 = call i32 @DisposeObject(ptr noundef nonnull %2116) #6
  br label %2122

2122:                                             ; preds = %2120, %2097
  %2123 = load ptr, ptr %46, align 8, !tbaa !5
  %2124 = getelementptr inbounds %struct.LIST, ptr %2123, i64 0, i32 1
  %2125 = load ptr, ptr %2124, align 8, !tbaa !5
  %2126 = icmp eq ptr %2125, %2123
  br i1 %2126, label %2127, label %2145

2127:                                             ; preds = %2122
  store ptr %2123, ptr @zz_hold, align 8, !tbaa !8
  %2128 = getelementptr inbounds %struct.word_type, ptr %2123, i64 0, i32 1
  %2129 = load i8, ptr %2128, align 8, !tbaa !5
  %2130 = add i8 %2129, -11
  %2131 = icmp ult i8 %2130, 2
  %2132 = getelementptr inbounds %struct.word_type, ptr %2123, i64 0, i32 1, i32 0, i32 1
  %2133 = zext i8 %2129 to i64
  %2134 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2133
  %2135 = select i1 %2131, ptr %2132, ptr %2134
  %2136 = load i8, ptr %2135, align 1, !tbaa !5
  %2137 = zext i8 %2136 to i32
  store i32 %2137, ptr @zz_size, align 4, !tbaa !10
  %2138 = zext i8 %2136 to i64
  %2139 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2138
  %2140 = load ptr, ptr %2139, align 8, !tbaa !8
  store ptr %2140, ptr %2123, align 8, !tbaa !5
  %2141 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2142 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2143
  store ptr %2141, ptr %2144, align 8, !tbaa !8
  store ptr null, ptr %46, align 8, !tbaa !5
  br label %2145

2145:                                             ; preds = %2047, %2122, %2127, %2066
  %2146 = phi ptr [ %1892, %2047 ], [ %1734, %2122 ], [ %1734, %2127 ], [ %1892, %2066 ]
  %2147 = getelementptr inbounds %struct.word_type, ptr %2146, i64 0, i32 1
  %2148 = load i8, ptr %2147, align 8, !tbaa !5
  %2149 = icmp eq i8 %2148, 17
  br i1 %2149, label %2150, label %2152

2150:                                             ; preds = %2145
  %2151 = call ptr @ConvertGalleyList(ptr noundef nonnull %2146) #6
  br label %2152

2152:                                             ; preds = %2150, %2145
  %2153 = phi ptr [ %2151, %2150 ], [ %2146, %2145 ]
  call void @FlushGalley(ptr noundef %2153)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  br label %2704

2154:                                             ; preds = %1481
  %2155 = getelementptr inbounds i8, ptr %1477, i64 42
  %2156 = load i16, ptr %2155, align 2
  %2157 = and i16 %2156, 64
  %2158 = icmp ne i16 %2157, 0
  %2159 = select i1 %2158, i1 %1485, i1 false
  br i1 %2159, label %2160, label %2454

2160:                                             ; preds = %2154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %17) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #6
  %2161 = getelementptr inbounds %struct.closure_type, ptr %1477, i64 0, i32 5
  %2162 = load ptr, ptr %2161, align 8, !tbaa !5
  %2163 = getelementptr inbounds %struct.closure_type, ptr %2162, i64 0, i32 5
  %2164 = load ptr, ptr %2163, align 8, !tbaa !5
  %2165 = call ptr @FirstExternTarget(ptr noundef %2164, ptr noundef nonnull %16) #6
  %2166 = icmp eq ptr %2165, null
  br i1 %2166, label %2438, label %2167

2167:                                             ; preds = %2160, %2430
  %2168 = phi ptr [ %2436, %2430 ], [ %2165, %2160 ]
  %2169 = load ptr, ptr %3, align 8, !tbaa !8
  %2170 = getelementptr inbounds %struct.closure_type, ptr %2169, i64 0, i32 5
  %2171 = load ptr, ptr %2170, align 8, !tbaa !5
  %2172 = getelementptr inbounds %struct.word_type, ptr %2171, i64 0, i32 1
  %2173 = call ptr @GallTargEval(ptr noundef nonnull %2168, ptr noundef nonnull %2172) #6
  %2174 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 132), align 1, !tbaa !5
  %2175 = zext i8 %2174 to i32
  store i32 %2175, ptr @zz_size, align 4, !tbaa !10
  %2176 = zext i8 %2174 to i64
  %2177 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2176
  %2178 = load ptr, ptr %2177, align 8, !tbaa !8
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2180, label %2183

2180:                                             ; preds = %2167
  %2181 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2182 = call ptr @GetMemory(i32 noundef %2175, ptr noundef %2181) #6
  store ptr %2182, ptr @zz_hold, align 8, !tbaa !8
  br label %2187

2183:                                             ; preds = %2167
  store ptr %2178, ptr @zz_hold, align 8, !tbaa !8
  %2184 = load ptr, ptr %2178, align 8, !tbaa !5
  %2185 = zext i8 %2174 to i64
  %2186 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2185
  store ptr %2184, ptr %2186, align 8, !tbaa !8
  br label %2187

2187:                                             ; preds = %2180, %2183
  %2188 = phi ptr [ %2182, %2180 ], [ %2178, %2183 ]
  %2189 = getelementptr inbounds %struct.word_type, ptr %2188, i64 0, i32 1
  store i8 -124, ptr %2189, align 8, !tbaa !5
  %2190 = getelementptr inbounds [2 x %struct.LIST], ptr %2188, i64 0, i64 1
  %2191 = getelementptr inbounds [2 x %struct.LIST], ptr %2188, i64 0, i64 1, i32 1
  store ptr %2188, ptr %2191, align 8, !tbaa !5
  store ptr %2188, ptr %2190, align 8, !tbaa !5
  %2192 = getelementptr inbounds %struct.LIST, ptr %2188, i64 0, i32 1
  store ptr %2188, ptr %2192, align 8, !tbaa !5
  store ptr %2188, ptr %2188, align 8, !tbaa !5
  %2193 = getelementptr inbounds %struct.closure_type, ptr %2188, i64 0, i32 5
  store ptr %2173, ptr %2193, align 8, !tbaa !5
  %2194 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2195 = zext i8 %2194 to i32
  store i32 %2195, ptr @zz_size, align 4, !tbaa !10
  %2196 = zext i8 %2194 to i64
  %2197 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2196
  %2198 = load ptr, ptr %2197, align 8, !tbaa !8
  %2199 = icmp eq ptr %2198, null
  br i1 %2199, label %2200, label %2203

2200:                                             ; preds = %2187
  %2201 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2202 = call ptr @GetMemory(i32 noundef %2195, ptr noundef %2201) #6
  br label %2207

2203:                                             ; preds = %2187
  store ptr %2198, ptr @zz_hold, align 8, !tbaa !8
  %2204 = load ptr, ptr %2198, align 8, !tbaa !5
  %2205 = zext i8 %2194 to i64
  %2206 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2205
  store ptr %2204, ptr %2206, align 8, !tbaa !8
  br label %2207

2207:                                             ; preds = %2200, %2203
  %2208 = phi ptr [ %2202, %2200 ], [ %2198, %2203 ]
  %2209 = getelementptr inbounds %struct.word_type, ptr %2208, i64 0, i32 1
  store i8 0, ptr %2209, align 8, !tbaa !5
  %2210 = getelementptr inbounds [2 x %struct.LIST], ptr %2208, i64 0, i64 1, i32 1
  store ptr %2208, ptr %2210, align 8, !tbaa !5
  %2211 = getelementptr inbounds [2 x %struct.LIST], ptr %2208, i64 0, i64 1
  store ptr %2208, ptr %2211, align 8, !tbaa !5
  %2212 = getelementptr inbounds %struct.LIST, ptr %2208, i64 0, i32 1
  store ptr %2208, ptr %2212, align 8, !tbaa !5
  store ptr %2208, ptr %2208, align 8, !tbaa !5
  store ptr %2208, ptr @xx_link, align 8, !tbaa !8
  store ptr %2208, ptr @zz_res, align 8, !tbaa !8
  %2213 = load ptr, ptr %3, align 8, !tbaa !8
  %2214 = getelementptr inbounds [2 x %struct.LIST], ptr %2213, i64 0, i64 1, i32 1
  %2215 = load ptr, ptr %2214, align 8, !tbaa !5
  store ptr %2215, ptr @zz_hold, align 8, !tbaa !8
  %2216 = icmp eq ptr %2215, null
  br i1 %2216, label %2217, label %2218

2217:                                             ; preds = %2207
  store ptr %2188, ptr @zz_hold, align 8, !tbaa !8
  br label %2230

2218:                                             ; preds = %2207
  %2219 = load ptr, ptr %2215, align 8, !tbaa !5
  store ptr %2219, ptr @zz_tmp, align 8, !tbaa !8
  %2220 = load ptr, ptr %2208, align 8, !tbaa !5
  store ptr %2220, ptr %2215, align 8, !tbaa !5
  %2221 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2222 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2223 = load ptr, ptr %2222, align 8, !tbaa !5
  %2224 = getelementptr inbounds %struct.LIST, ptr %2223, i64 0, i32 1
  store ptr %2221, ptr %2224, align 8, !tbaa !5
  %2225 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2225, ptr %2222, align 8, !tbaa !5
  %2226 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2227 = getelementptr inbounds %struct.LIST, ptr %2225, i64 0, i32 1
  store ptr %2226, ptr %2227, align 8, !tbaa !5
  %2228 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2228, ptr @zz_res, align 8, !tbaa !8
  store ptr %2188, ptr @zz_hold, align 8, !tbaa !8
  %2229 = icmp eq ptr %2228, null
  br i1 %2229, label %2237, label %2230

2230:                                             ; preds = %2217, %2218
  %2231 = phi ptr [ %2208, %2217 ], [ %2228, %2218 ]
  %2232 = load ptr, ptr %2190, align 8, !tbaa !5
  store ptr %2232, ptr @zz_tmp, align 8, !tbaa !8
  %2233 = getelementptr inbounds [2 x %struct.LIST], ptr %2231, i64 0, i64 1
  %2234 = load ptr, ptr %2233, align 8, !tbaa !5
  store ptr %2234, ptr %2190, align 8, !tbaa !5
  %2235 = getelementptr inbounds [2 x %struct.LIST], ptr %2234, i64 0, i64 1, i32 1
  store ptr %2188, ptr %2235, align 8, !tbaa !5
  store ptr %2232, ptr %2233, align 8, !tbaa !5
  %2236 = getelementptr inbounds [2 x %struct.LIST], ptr %2232, i64 0, i64 1, i32 1
  store ptr %2231, ptr %2236, align 8, !tbaa !5
  br label %2237

2237:                                             ; preds = %2218, %2230
  %2238 = load ptr, ptr %2173, align 8, !tbaa !5
  br label %2239

2239:                                             ; preds = %2239, %2237
  %2240 = phi ptr [ %2238, %2237 ], [ %2242, %2239 ]
  %2241 = getelementptr inbounds [2 x %struct.LIST], ptr %2240, i64 0, i64 1
  %2242 = load ptr, ptr %2241, align 8, !tbaa !5
  %2243 = getelementptr inbounds %struct.word_type, ptr %2242, i64 0, i32 1
  %2244 = load i8, ptr %2243, align 8, !tbaa !5
  switch i8 %2244, label %2245 [
    i8 0, label %2239
    i8 11, label %2248
    i8 12, label %2248
  ]

2245:                                             ; preds = %2239
  %2246 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2247 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2246, ptr noundef nonnull @.str.28) #6
  br label %2248

2248:                                             ; preds = %2239, %2239, %2245
  %2249 = load ptr, ptr @OldCrossDb, align 8, !tbaa !8
  %2250 = getelementptr inbounds %struct.word_type, ptr %2242, i64 0, i32 4
  %2251 = call i32 @DbRetrieve(ptr noundef %2249, i32 noundef 1, ptr noundef nonnull %2168, ptr noundef nonnull %2250, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20) #6
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2430, label %2253

2253:                                             ; preds = %2248
  %2254 = load ptr, ptr %46, align 8, !tbaa !5
  %2255 = icmp eq ptr %2254, null
  br i1 %2255, label %2256, label %2274

2256:                                             ; preds = %2253
  %2257 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %2258 = zext i8 %2257 to i32
  store i32 %2258, ptr @zz_size, align 4, !tbaa !10
  %2259 = zext i8 %2257 to i64
  %2260 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2259
  %2261 = load ptr, ptr %2260, align 8, !tbaa !8
  %2262 = icmp eq ptr %2261, null
  br i1 %2262, label %2263, label %2266

2263:                                             ; preds = %2256
  %2264 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2265 = call ptr @GetMemory(i32 noundef %2258, ptr noundef %2264) #6
  store ptr %2265, ptr @zz_hold, align 8, !tbaa !8
  br label %2268

2266:                                             ; preds = %2256
  store ptr %2261, ptr @zz_hold, align 8, !tbaa !8
  %2267 = load ptr, ptr %2261, align 8, !tbaa !5
  store ptr %2267, ptr %2260, align 8, !tbaa !8
  br label %2268

2268:                                             ; preds = %2263, %2266
  %2269 = phi ptr [ %2265, %2263 ], [ %2261, %2266 ]
  %2270 = getelementptr inbounds %struct.word_type, ptr %2269, i64 0, i32 1
  store i8 17, ptr %2270, align 8, !tbaa !5
  %2271 = getelementptr inbounds [2 x %struct.LIST], ptr %2269, i64 0, i64 1, i32 1
  store ptr %2269, ptr %2271, align 8, !tbaa !5
  %2272 = getelementptr inbounds [2 x %struct.LIST], ptr %2269, i64 0, i64 1
  store ptr %2269, ptr %2272, align 8, !tbaa !5
  %2273 = getelementptr inbounds %struct.LIST, ptr %2269, i64 0, i32 1
  store ptr %2269, ptr %2273, align 8, !tbaa !5
  store ptr %2269, ptr %2269, align 8, !tbaa !5
  store ptr %2269, ptr %46, align 8, !tbaa !5
  br label %2274

2274:                                             ; preds = %2268, %2253
  %2275 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 147), align 1, !tbaa !5
  %2276 = zext i8 %2275 to i32
  store i32 %2276, ptr @zz_size, align 4, !tbaa !10
  %2277 = zext i8 %2275 to i64
  %2278 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2277
  %2279 = load ptr, ptr %2278, align 8, !tbaa !8
  %2280 = icmp eq ptr %2279, null
  br i1 %2280, label %2281, label %2284

2281:                                             ; preds = %2274
  %2282 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2283 = call ptr @GetMemory(i32 noundef %2276, ptr noundef %2282) #6
  store ptr %2283, ptr @zz_hold, align 8, !tbaa !8
  br label %2288

2284:                                             ; preds = %2274
  store ptr %2279, ptr @zz_hold, align 8, !tbaa !8
  %2285 = load ptr, ptr %2279, align 8, !tbaa !5
  %2286 = zext i8 %2275 to i64
  %2287 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2286
  store ptr %2285, ptr %2287, align 8, !tbaa !8
  br label %2288

2288:                                             ; preds = %2281, %2284
  %2289 = phi ptr [ %2283, %2281 ], [ %2279, %2284 ]
  %2290 = getelementptr inbounds %struct.word_type, ptr %2289, i64 0, i32 1
  store i8 -109, ptr %2290, align 8, !tbaa !5
  %2291 = getelementptr inbounds [2 x %struct.LIST], ptr %2289, i64 0, i64 1
  %2292 = getelementptr inbounds [2 x %struct.LIST], ptr %2289, i64 0, i64 1, i32 1
  store ptr %2289, ptr %2292, align 8, !tbaa !5
  store ptr %2289, ptr %2291, align 8, !tbaa !5
  %2293 = getelementptr inbounds %struct.LIST, ptr %2289, i64 0, i32 1
  store ptr %2289, ptr %2293, align 8, !tbaa !5
  store ptr %2289, ptr %2289, align 8, !tbaa !5
  %2294 = load i16, ptr %18, align 2, !tbaa !16
  %2295 = getelementptr inbounds %struct.ext_gall_type, ptr %2289, i64 0, i32 2
  store i16 %2294, ptr %2295, align 2, !tbaa !5
  %2296 = load i64, ptr %19, align 8, !tbaa !18
  %2297 = getelementptr inbounds %struct.ext_gall_type, ptr %2289, i64 0, i32 4
  store i64 %2296, ptr %2297, align 8, !tbaa !5
  %2298 = load i32, ptr %21, align 4, !tbaa !10
  %2299 = getelementptr inbounds %struct.ext_gall_type, ptr %2289, i64 0, i32 3
  store i32 %2298, ptr %2299, align 4, !tbaa !5
  %2300 = getelementptr inbounds %struct.ext_gall_type, ptr %2289, i64 0, i32 6
  store ptr %2168, ptr %2300, align 8, !tbaa !5
  %2301 = load i64, ptr %20, align 8, !tbaa !18
  %2302 = getelementptr inbounds %struct.ext_gall_type, ptr %2289, i64 0, i32 5
  store i64 %2301, ptr %2302, align 8, !tbaa !5
  %2303 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2304 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %2250, ptr noundef %2303) #6
  %2305 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2306 = zext i8 %2305 to i32
  store i32 %2306, ptr @zz_size, align 4, !tbaa !10
  %2307 = zext i8 %2305 to i64
  %2308 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2307
  %2309 = load ptr, ptr %2308, align 8, !tbaa !8
  %2310 = icmp eq ptr %2309, null
  br i1 %2310, label %2311, label %2314

2311:                                             ; preds = %2288
  %2312 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2313 = call ptr @GetMemory(i32 noundef %2306, ptr noundef %2312) #6
  br label %2318

2314:                                             ; preds = %2288
  store ptr %2309, ptr @zz_hold, align 8, !tbaa !8
  %2315 = load ptr, ptr %2309, align 8, !tbaa !5
  %2316 = zext i8 %2305 to i64
  %2317 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2316
  store ptr %2315, ptr %2317, align 8, !tbaa !8
  br label %2318

2318:                                             ; preds = %2311, %2314
  %2319 = phi ptr [ %2313, %2311 ], [ %2309, %2314 ]
  %2320 = getelementptr inbounds %struct.word_type, ptr %2319, i64 0, i32 1
  store i8 0, ptr %2320, align 8, !tbaa !5
  %2321 = getelementptr inbounds [2 x %struct.LIST], ptr %2319, i64 0, i64 1, i32 1
  store ptr %2319, ptr %2321, align 8, !tbaa !5
  %2322 = getelementptr inbounds [2 x %struct.LIST], ptr %2319, i64 0, i64 1
  store ptr %2319, ptr %2322, align 8, !tbaa !5
  %2323 = getelementptr inbounds %struct.LIST, ptr %2319, i64 0, i32 1
  store ptr %2319, ptr %2323, align 8, !tbaa !5
  store ptr %2319, ptr %2319, align 8, !tbaa !5
  store ptr %2319, ptr @xx_link, align 8, !tbaa !8
  store ptr %2319, ptr @zz_res, align 8, !tbaa !8
  store ptr %2289, ptr @zz_hold, align 8, !tbaa !8
  %2324 = load ptr, ptr %2289, align 8, !tbaa !5
  store ptr %2324, ptr @zz_tmp, align 8, !tbaa !8
  %2325 = load ptr, ptr %2319, align 8, !tbaa !5
  store ptr %2325, ptr %2289, align 8, !tbaa !5
  %2326 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2327 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2328 = load ptr, ptr %2327, align 8, !tbaa !5
  %2329 = getelementptr inbounds %struct.LIST, ptr %2328, i64 0, i32 1
  store ptr %2326, ptr %2329, align 8, !tbaa !5
  %2330 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2330, ptr %2327, align 8, !tbaa !5
  %2331 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2332 = getelementptr inbounds %struct.LIST, ptr %2330, i64 0, i32 1
  store ptr %2331, ptr %2332, align 8, !tbaa !5
  %2333 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2333, ptr @zz_res, align 8, !tbaa !8
  store ptr %2304, ptr @zz_hold, align 8, !tbaa !8
  %2334 = icmp eq ptr %2304, null
  %2335 = icmp eq ptr %2333, null
  %2336 = select i1 %2334, i1 true, i1 %2335
  br i1 %2336, label %2344, label %2337

2337:                                             ; preds = %2318
  %2338 = getelementptr inbounds [2 x %struct.LIST], ptr %2304, i64 0, i64 1
  %2339 = load ptr, ptr %2338, align 8, !tbaa !5
  store ptr %2339, ptr @zz_tmp, align 8, !tbaa !8
  %2340 = getelementptr inbounds [2 x %struct.LIST], ptr %2333, i64 0, i64 1
  %2341 = load ptr, ptr %2340, align 8, !tbaa !5
  store ptr %2341, ptr %2338, align 8, !tbaa !5
  %2342 = getelementptr inbounds [2 x %struct.LIST], ptr %2341, i64 0, i64 1, i32 1
  store ptr %2304, ptr %2342, align 8, !tbaa !5
  store ptr %2339, ptr %2340, align 8, !tbaa !5
  %2343 = getelementptr inbounds [2 x %struct.LIST], ptr %2339, i64 0, i64 1, i32 1
  store ptr %2333, ptr %2343, align 8, !tbaa !5
  br label %2344

2344:                                             ; preds = %2318, %2337
  %2345 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2346 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %17, ptr noundef %2345) #6
  %2347 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2348 = zext i8 %2347 to i32
  store i32 %2348, ptr @zz_size, align 4, !tbaa !10
  %2349 = zext i8 %2347 to i64
  %2350 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2349
  %2351 = load ptr, ptr %2350, align 8, !tbaa !8
  %2352 = icmp eq ptr %2351, null
  br i1 %2352, label %2353, label %2356

2353:                                             ; preds = %2344
  %2354 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2355 = call ptr @GetMemory(i32 noundef %2348, ptr noundef %2354) #6
  br label %2360

2356:                                             ; preds = %2344
  store ptr %2351, ptr @zz_hold, align 8, !tbaa !8
  %2357 = load ptr, ptr %2351, align 8, !tbaa !5
  %2358 = zext i8 %2347 to i64
  %2359 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2358
  store ptr %2357, ptr %2359, align 8, !tbaa !8
  br label %2360

2360:                                             ; preds = %2353, %2356
  %2361 = phi ptr [ %2355, %2353 ], [ %2351, %2356 ]
  %2362 = getelementptr inbounds %struct.word_type, ptr %2361, i64 0, i32 1
  store i8 0, ptr %2362, align 8, !tbaa !5
  %2363 = getelementptr inbounds [2 x %struct.LIST], ptr %2361, i64 0, i64 1, i32 1
  store ptr %2361, ptr %2363, align 8, !tbaa !5
  %2364 = getelementptr inbounds [2 x %struct.LIST], ptr %2361, i64 0, i64 1
  store ptr %2361, ptr %2364, align 8, !tbaa !5
  %2365 = getelementptr inbounds %struct.LIST, ptr %2361, i64 0, i32 1
  store ptr %2361, ptr %2365, align 8, !tbaa !5
  store ptr %2361, ptr %2361, align 8, !tbaa !5
  store ptr %2361, ptr @xx_link, align 8, !tbaa !8
  store ptr %2361, ptr @zz_res, align 8, !tbaa !8
  store ptr %2289, ptr @zz_hold, align 8, !tbaa !8
  %2366 = load ptr, ptr %2289, align 8, !tbaa !5
  store ptr %2366, ptr @zz_tmp, align 8, !tbaa !8
  %2367 = load ptr, ptr %2361, align 8, !tbaa !5
  store ptr %2367, ptr %2289, align 8, !tbaa !5
  %2368 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2369 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2370 = load ptr, ptr %2369, align 8, !tbaa !5
  %2371 = getelementptr inbounds %struct.LIST, ptr %2370, i64 0, i32 1
  store ptr %2368, ptr %2371, align 8, !tbaa !5
  %2372 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2372, ptr %2369, align 8, !tbaa !5
  %2373 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2374 = getelementptr inbounds %struct.LIST, ptr %2372, i64 0, i32 1
  store ptr %2373, ptr %2374, align 8, !tbaa !5
  %2375 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2375, ptr @zz_res, align 8, !tbaa !8
  store ptr %2346, ptr @zz_hold, align 8, !tbaa !8
  %2376 = icmp eq ptr %2346, null
  %2377 = icmp eq ptr %2375, null
  %2378 = select i1 %2376, i1 true, i1 %2377
  br i1 %2378, label %2386, label %2379

2379:                                             ; preds = %2360
  %2380 = getelementptr inbounds [2 x %struct.LIST], ptr %2346, i64 0, i64 1
  %2381 = load ptr, ptr %2380, align 8, !tbaa !5
  store ptr %2381, ptr @zz_tmp, align 8, !tbaa !8
  %2382 = getelementptr inbounds [2 x %struct.LIST], ptr %2375, i64 0, i64 1
  %2383 = load ptr, ptr %2382, align 8, !tbaa !5
  store ptr %2383, ptr %2380, align 8, !tbaa !5
  %2384 = getelementptr inbounds [2 x %struct.LIST], ptr %2383, i64 0, i64 1, i32 1
  store ptr %2346, ptr %2384, align 8, !tbaa !5
  store ptr %2381, ptr %2382, align 8, !tbaa !5
  %2385 = getelementptr inbounds [2 x %struct.LIST], ptr %2381, i64 0, i64 1, i32 1
  store ptr %2375, ptr %2385, align 8, !tbaa !5
  br label %2386

2386:                                             ; preds = %2360, %2379
  %2387 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %2388 = zext i8 %2387 to i32
  store i32 %2388, ptr @zz_size, align 4, !tbaa !10
  %2389 = zext i8 %2387 to i64
  %2390 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2389
  %2391 = load ptr, ptr %2390, align 8, !tbaa !8
  %2392 = icmp eq ptr %2391, null
  br i1 %2392, label %2393, label %2396

2393:                                             ; preds = %2386
  %2394 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %2395 = call ptr @GetMemory(i32 noundef %2388, ptr noundef %2394) #6
  br label %2398

2396:                                             ; preds = %2386
  store ptr %2391, ptr @zz_hold, align 8, !tbaa !8
  %2397 = load ptr, ptr %2391, align 8, !tbaa !5
  store ptr %2397, ptr %2390, align 8, !tbaa !8
  br label %2398

2398:                                             ; preds = %2393, %2396
  %2399 = phi ptr [ %2395, %2393 ], [ %2391, %2396 ]
  %2400 = getelementptr inbounds %struct.word_type, ptr %2399, i64 0, i32 1
  store i8 0, ptr %2400, align 8, !tbaa !5
  %2401 = getelementptr inbounds [2 x %struct.LIST], ptr %2399, i64 0, i64 1, i32 1
  store ptr %2399, ptr %2401, align 8, !tbaa !5
  %2402 = getelementptr inbounds [2 x %struct.LIST], ptr %2399, i64 0, i64 1
  store ptr %2399, ptr %2402, align 8, !tbaa !5
  %2403 = getelementptr inbounds %struct.LIST, ptr %2399, i64 0, i32 1
  store ptr %2399, ptr %2403, align 8, !tbaa !5
  store ptr %2399, ptr %2399, align 8, !tbaa !5
  store ptr %2399, ptr @xx_link, align 8, !tbaa !8
  store ptr %2399, ptr @zz_res, align 8, !tbaa !8
  %2404 = load ptr, ptr %46, align 8, !tbaa !5
  store ptr %2404, ptr @zz_hold, align 8, !tbaa !8
  %2405 = icmp eq ptr %2404, null
  br i1 %2405, label %2406, label %2407

2406:                                             ; preds = %2398
  store ptr %2289, ptr @zz_hold, align 8, !tbaa !8
  br label %2422

2407:                                             ; preds = %2398
  %2408 = load ptr, ptr %2404, align 8, !tbaa !5
  store ptr %2408, ptr @zz_tmp, align 8, !tbaa !8
  %2409 = load ptr, ptr %2399, align 8, !tbaa !5
  store ptr %2409, ptr %2404, align 8, !tbaa !5
  %2410 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2411 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2412 = load ptr, ptr %2411, align 8, !tbaa !5
  %2413 = getelementptr inbounds %struct.LIST, ptr %2412, i64 0, i32 1
  store ptr %2410, ptr %2413, align 8, !tbaa !5
  %2414 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %2414, ptr %2411, align 8, !tbaa !5
  %2415 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2416 = getelementptr inbounds %struct.LIST, ptr %2414, i64 0, i32 1
  store ptr %2415, ptr %2416, align 8, !tbaa !5
  %2417 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %2417, ptr @zz_res, align 8, !tbaa !8
  store ptr %2289, ptr @zz_hold, align 8, !tbaa !8
  %2418 = icmp eq ptr %2417, null
  br i1 %2418, label %2430, label %2419

2419:                                             ; preds = %2407
  %2420 = getelementptr inbounds [2 x %struct.LIST], ptr %2417, i64 0, i64 1
  %2421 = load ptr, ptr %2420, align 8, !tbaa !5
  br label %2422

2422:                                             ; preds = %2419, %2406
  %2423 = phi ptr [ %2399, %2406 ], [ %2421, %2419 ]
  %2424 = phi ptr [ %2399, %2406 ], [ %2417, %2419 ]
  %2425 = load ptr, ptr %2291, align 8, !tbaa !5
  store ptr %2425, ptr @zz_tmp, align 8, !tbaa !8
  %2426 = getelementptr inbounds [2 x %struct.LIST], ptr %2424, i64 0, i64 1
  store ptr %2423, ptr %2291, align 8, !tbaa !5
  %2427 = load ptr, ptr %2426, align 8, !tbaa !5
  %2428 = getelementptr inbounds [2 x %struct.LIST], ptr %2427, i64 0, i64 1, i32 1
  store ptr %2289, ptr %2428, align 8, !tbaa !5
  store ptr %2425, ptr %2426, align 8, !tbaa !5
  %2429 = getelementptr inbounds [2 x %struct.LIST], ptr %2425, i64 0, i64 1, i32 1
  store ptr %2424, ptr %2429, align 8, !tbaa !5
  br label %2430

2430:                                             ; preds = %2407, %2248, %2422
  %2431 = load ptr, ptr %3, align 8, !tbaa !8
  %2432 = getelementptr inbounds %struct.closure_type, ptr %2431, i64 0, i32 5
  %2433 = load ptr, ptr %2432, align 8, !tbaa !5
  %2434 = getelementptr inbounds %struct.closure_type, ptr %2433, i64 0, i32 5
  %2435 = load ptr, ptr %2434, align 8, !tbaa !5
  %2436 = call ptr @NextExternTarget(ptr noundef %2435, ptr noundef nonnull %16) #6
  %2437 = icmp eq ptr %2436, null
  br i1 %2437, label %2438, label %2167

2438:                                             ; preds = %2430, %2160
  %2439 = load ptr, ptr %3, align 8, !tbaa !8
  %2440 = getelementptr inbounds i8, ptr %2439, i64 42
  %2441 = load i16, ptr %2440, align 2
  %2442 = and i16 %2441, -65
  store i16 %2442, ptr %2440, align 2
  %2443 = load ptr, ptr %46, align 8, !tbaa !5
  %2444 = icmp eq ptr %2443, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  br i1 %2444, label %2445, label %2704

2445:                                             ; preds = %2438
  %2446 = getelementptr inbounds %struct.word_type, ptr %2439, i64 0, i32 1
  %2447 = load i8, ptr %2446, align 8, !tbaa !5
  br label %2448

2448:                                             ; preds = %2445, %1476
  %2449 = phi i8 [ %1479, %1476 ], [ %2447, %2445 ]
  %2450 = phi ptr [ %1477, %1476 ], [ %2439, %2445 ]
  switch i8 %2449, label %2451 [
    i8 121, label %2454
    i8 122, label %2578
  ]

2451:                                             ; preds = %2448
  %2452 = getelementptr inbounds i8, ptr %2450, i64 42
  %2453 = load i16, ptr %2452, align 2
  br label %2732

2454:                                             ; preds = %2154, %2448
  %2455 = phi ptr [ %2450, %2448 ], [ %1477, %2154 ]
  %2456 = getelementptr inbounds i8, ptr %2455, i64 42
  %2457 = load i16, ptr %2456, align 2
  %2458 = and i16 %2457, 1
  %2459 = icmp eq i16 %2458, 0
  br i1 %2459, label %2732, label %2460

2460:                                             ; preds = %2454
  store ptr %2455, ptr @xx_hold, align 8, !tbaa !8
  %2461 = getelementptr inbounds [2 x %struct.LIST], ptr %2455, i64 0, i64 1, i32 1
  %2462 = load ptr, ptr %2461, align 8, !tbaa !5
  %2463 = icmp eq ptr %2462, %2455
  br i1 %2463, label %2464, label %2469

2464:                                             ; preds = %2491, %2460
  %2465 = phi ptr [ %2455, %2460 ], [ %2510, %2491 ]
  %2466 = getelementptr inbounds %struct.LIST, ptr %2465, i64 0, i32 1
  %2467 = load ptr, ptr %2466, align 8, !tbaa !5
  %2468 = icmp eq ptr %2467, %2465
  br i1 %2468, label %2559, label %2514

2469:                                             ; preds = %2460, %2491
  %2470 = phi ptr [ %2512, %2491 ], [ %2462, %2460 ]
  store ptr %2470, ptr @xx_link, align 8, !tbaa !8
  %2471 = getelementptr inbounds [2 x %struct.LIST], ptr %2470, i64 0, i64 1, i32 1
  %2472 = load ptr, ptr %2471, align 8, !tbaa !5
  %2473 = icmp eq ptr %2472, %2470
  br i1 %2473, label %2479, label %2474

2474:                                             ; preds = %2469
  store ptr %2472, ptr @zz_res, align 8, !tbaa !8
  %2475 = getelementptr inbounds [2 x %struct.LIST], ptr %2470, i64 0, i64 1
  %2476 = load ptr, ptr %2475, align 8, !tbaa !5
  %2477 = getelementptr inbounds [2 x %struct.LIST], ptr %2472, i64 0, i64 1
  store ptr %2476, ptr %2477, align 8, !tbaa !5
  %2478 = getelementptr inbounds [2 x %struct.LIST], ptr %2476, i64 0, i64 1, i32 1
  store ptr %2472, ptr %2478, align 8, !tbaa !5
  store ptr %2470, ptr %2471, align 8, !tbaa !5
  store ptr %2470, ptr %2475, align 8, !tbaa !5
  br label %2479

2479:                                             ; preds = %2469, %2474
  store ptr %2470, ptr @zz_hold, align 8, !tbaa !8
  %2480 = getelementptr inbounds %struct.LIST, ptr %2470, i64 0, i32 1
  %2481 = load ptr, ptr %2480, align 8, !tbaa !5
  %2482 = icmp eq ptr %2481, %2470
  br i1 %2482, label %2491, label %2483

2483:                                             ; preds = %2479
  store ptr %2481, ptr @zz_res, align 8, !tbaa !8
  %2484 = load ptr, ptr %2470, align 8, !tbaa !5
  store ptr %2484, ptr %2481, align 8, !tbaa !5
  %2485 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2486 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2487 = load ptr, ptr %2486, align 8, !tbaa !5
  %2488 = getelementptr inbounds %struct.LIST, ptr %2487, i64 0, i32 1
  store ptr %2485, ptr %2488, align 8, !tbaa !5
  %2489 = getelementptr inbounds %struct.LIST, ptr %2486, i64 0, i32 1
  store ptr %2486, ptr %2489, align 8, !tbaa !5
  store ptr %2486, ptr %2486, align 8, !tbaa !5
  %2490 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2491

2491:                                             ; preds = %2479, %2483
  %2492 = phi ptr [ %2470, %2479 ], [ %2490, %2483 ]
  store ptr %2492, ptr @zz_hold, align 8, !tbaa !8
  %2493 = getelementptr inbounds %struct.word_type, ptr %2492, i64 0, i32 1
  %2494 = load i8, ptr %2493, align 8, !tbaa !5
  %2495 = add i8 %2494, -11
  %2496 = icmp ult i8 %2495, 2
  %2497 = getelementptr inbounds %struct.word_type, ptr %2492, i64 0, i32 1, i32 0, i32 1
  %2498 = zext i8 %2494 to i64
  %2499 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2498
  %2500 = select i1 %2496, ptr %2497, ptr %2499
  %2501 = load i8, ptr %2500, align 1, !tbaa !5
  %2502 = zext i8 %2501 to i32
  store i32 %2502, ptr @zz_size, align 4, !tbaa !10
  %2503 = zext i8 %2501 to i64
  %2504 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2503
  %2505 = load ptr, ptr %2504, align 8, !tbaa !8
  store ptr %2505, ptr %2492, align 8, !tbaa !5
  %2506 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2507 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2508 = sext i32 %2507 to i64
  %2509 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2508
  store ptr %2506, ptr %2509, align 8, !tbaa !8
  %2510 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2511 = getelementptr inbounds [2 x %struct.LIST], ptr %2510, i64 0, i64 1, i32 1
  %2512 = load ptr, ptr %2511, align 8, !tbaa !5
  %2513 = icmp eq ptr %2512, %2510
  br i1 %2513, label %2464, label %2469

2514:                                             ; preds = %2464, %2536
  %2515 = phi ptr [ %2557, %2536 ], [ %2467, %2464 ]
  store ptr %2515, ptr @xx_link, align 8, !tbaa !8
  %2516 = getelementptr inbounds [2 x %struct.LIST], ptr %2515, i64 0, i64 1, i32 1
  %2517 = load ptr, ptr %2516, align 8, !tbaa !5
  %2518 = icmp eq ptr %2517, %2515
  br i1 %2518, label %2524, label %2519

2519:                                             ; preds = %2514
  store ptr %2517, ptr @zz_res, align 8, !tbaa !8
  %2520 = getelementptr inbounds [2 x %struct.LIST], ptr %2515, i64 0, i64 1
  %2521 = load ptr, ptr %2520, align 8, !tbaa !5
  %2522 = getelementptr inbounds [2 x %struct.LIST], ptr %2517, i64 0, i64 1
  store ptr %2521, ptr %2522, align 8, !tbaa !5
  %2523 = getelementptr inbounds [2 x %struct.LIST], ptr %2521, i64 0, i64 1, i32 1
  store ptr %2517, ptr %2523, align 8, !tbaa !5
  store ptr %2515, ptr %2516, align 8, !tbaa !5
  store ptr %2515, ptr %2520, align 8, !tbaa !5
  br label %2524

2524:                                             ; preds = %2514, %2519
  store ptr %2515, ptr @zz_hold, align 8, !tbaa !8
  %2525 = getelementptr inbounds %struct.LIST, ptr %2515, i64 0, i32 1
  %2526 = load ptr, ptr %2525, align 8, !tbaa !5
  %2527 = icmp eq ptr %2526, %2515
  br i1 %2527, label %2536, label %2528

2528:                                             ; preds = %2524
  store ptr %2526, ptr @zz_res, align 8, !tbaa !8
  %2529 = load ptr, ptr %2515, align 8, !tbaa !5
  store ptr %2529, ptr %2526, align 8, !tbaa !5
  %2530 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2531 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2532 = load ptr, ptr %2531, align 8, !tbaa !5
  %2533 = getelementptr inbounds %struct.LIST, ptr %2532, i64 0, i32 1
  store ptr %2530, ptr %2533, align 8, !tbaa !5
  %2534 = getelementptr inbounds %struct.LIST, ptr %2531, i64 0, i32 1
  store ptr %2531, ptr %2534, align 8, !tbaa !5
  store ptr %2531, ptr %2531, align 8, !tbaa !5
  %2535 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2536

2536:                                             ; preds = %2524, %2528
  %2537 = phi ptr [ %2515, %2524 ], [ %2535, %2528 ]
  store ptr %2537, ptr @zz_hold, align 8, !tbaa !8
  %2538 = getelementptr inbounds %struct.word_type, ptr %2537, i64 0, i32 1
  %2539 = load i8, ptr %2538, align 8, !tbaa !5
  %2540 = add i8 %2539, -11
  %2541 = icmp ult i8 %2540, 2
  %2542 = getelementptr inbounds %struct.word_type, ptr %2537, i64 0, i32 1, i32 0, i32 1
  %2543 = zext i8 %2539 to i64
  %2544 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2543
  %2545 = select i1 %2541, ptr %2542, ptr %2544
  %2546 = load i8, ptr %2545, align 1, !tbaa !5
  %2547 = zext i8 %2546 to i32
  store i32 %2547, ptr @zz_size, align 4, !tbaa !10
  %2548 = zext i8 %2546 to i64
  %2549 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2548
  %2550 = load ptr, ptr %2549, align 8, !tbaa !8
  store ptr %2550, ptr %2537, align 8, !tbaa !5
  %2551 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2552 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2553 = sext i32 %2552 to i64
  %2554 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2553
  store ptr %2551, ptr %2554, align 8, !tbaa !8
  %2555 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2556 = getelementptr inbounds %struct.LIST, ptr %2555, i64 0, i32 1
  %2557 = load ptr, ptr %2556, align 8, !tbaa !5
  %2558 = icmp eq ptr %2557, %2555
  br i1 %2558, label %2559, label %2514

2559:                                             ; preds = %2536, %2464
  %2560 = phi ptr [ %2465, %2464 ], [ %2555, %2536 ]
  store ptr %2560, ptr @zz_hold, align 8, !tbaa !8
  %2561 = getelementptr inbounds %struct.word_type, ptr %2560, i64 0, i32 1
  %2562 = load i8, ptr %2561, align 8, !tbaa !5
  %2563 = add i8 %2562, -11
  %2564 = icmp ult i8 %2563, 2
  %2565 = getelementptr inbounds %struct.word_type, ptr %2560, i64 0, i32 1, i32 0, i32 1
  %2566 = zext i8 %2562 to i64
  %2567 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2566
  %2568 = select i1 %2564, ptr %2565, ptr %2567
  %2569 = load i8, ptr %2568, align 1, !tbaa !5
  %2570 = zext i8 %2569 to i32
  store i32 %2570, ptr @zz_size, align 4, !tbaa !10
  %2571 = zext i8 %2569 to i64
  %2572 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2571
  %2573 = load ptr, ptr %2572, align 8, !tbaa !8
  store ptr %2573, ptr %2560, align 8, !tbaa !5
  %2574 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2575 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2576 = sext i32 %2575 to i64
  %2577 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2576
  store ptr %2574, ptr %2577, align 8, !tbaa !8
  br label %2704

2578:                                             ; preds = %2448
  %2579 = getelementptr inbounds i8, ptr %2450, i64 42
  %2580 = load i16, ptr %2579, align 2
  %2581 = and i16 %2580, 1
  %2582 = icmp eq i16 %2581, 0
  br i1 %2582, label %2732, label %2583

2583:                                             ; preds = %2578
  %2584 = getelementptr inbounds %struct.LIST, ptr %2450, i64 0, i32 1
  %2585 = load ptr, ptr %2584, align 8, !tbaa !5
  %2586 = icmp eq ptr %2585, %2450
  br i1 %2586, label %2587, label %2717

2587:                                             ; preds = %2583
  store ptr %2450, ptr @xx_hold, align 8, !tbaa !8
  %2588 = getelementptr inbounds [2 x %struct.LIST], ptr %2450, i64 0, i64 1, i32 1
  %2589 = load ptr, ptr %2588, align 8, !tbaa !5
  %2590 = icmp eq ptr %2589, %2450
  br i1 %2590, label %2685, label %2595

2591:                                             ; preds = %2617
  %2592 = getelementptr inbounds %struct.LIST, ptr %2636, i64 0, i32 1
  %2593 = load ptr, ptr %2592, align 8, !tbaa !5
  %2594 = icmp eq ptr %2593, %2636
  br i1 %2594, label %2685, label %2640

2595:                                             ; preds = %2587, %2617
  %2596 = phi ptr [ %2638, %2617 ], [ %2589, %2587 ]
  store ptr %2596, ptr @xx_link, align 8, !tbaa !8
  %2597 = getelementptr inbounds [2 x %struct.LIST], ptr %2596, i64 0, i64 1, i32 1
  %2598 = load ptr, ptr %2597, align 8, !tbaa !5
  %2599 = icmp eq ptr %2598, %2596
  br i1 %2599, label %2605, label %2600

2600:                                             ; preds = %2595
  store ptr %2598, ptr @zz_res, align 8, !tbaa !8
  %2601 = getelementptr inbounds [2 x %struct.LIST], ptr %2596, i64 0, i64 1
  %2602 = load ptr, ptr %2601, align 8, !tbaa !5
  %2603 = getelementptr inbounds [2 x %struct.LIST], ptr %2598, i64 0, i64 1
  store ptr %2602, ptr %2603, align 8, !tbaa !5
  %2604 = getelementptr inbounds [2 x %struct.LIST], ptr %2602, i64 0, i64 1, i32 1
  store ptr %2598, ptr %2604, align 8, !tbaa !5
  store ptr %2596, ptr %2597, align 8, !tbaa !5
  store ptr %2596, ptr %2601, align 8, !tbaa !5
  br label %2605

2605:                                             ; preds = %2595, %2600
  store ptr %2596, ptr @zz_hold, align 8, !tbaa !8
  %2606 = getelementptr inbounds %struct.LIST, ptr %2596, i64 0, i32 1
  %2607 = load ptr, ptr %2606, align 8, !tbaa !5
  %2608 = icmp eq ptr %2607, %2596
  br i1 %2608, label %2617, label %2609

2609:                                             ; preds = %2605
  store ptr %2607, ptr @zz_res, align 8, !tbaa !8
  %2610 = load ptr, ptr %2596, align 8, !tbaa !5
  store ptr %2610, ptr %2607, align 8, !tbaa !5
  %2611 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2612 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2613 = load ptr, ptr %2612, align 8, !tbaa !5
  %2614 = getelementptr inbounds %struct.LIST, ptr %2613, i64 0, i32 1
  store ptr %2611, ptr %2614, align 8, !tbaa !5
  %2615 = getelementptr inbounds %struct.LIST, ptr %2612, i64 0, i32 1
  store ptr %2612, ptr %2615, align 8, !tbaa !5
  store ptr %2612, ptr %2612, align 8, !tbaa !5
  %2616 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2617

2617:                                             ; preds = %2605, %2609
  %2618 = phi ptr [ %2596, %2605 ], [ %2616, %2609 ]
  store ptr %2618, ptr @zz_hold, align 8, !tbaa !8
  %2619 = getelementptr inbounds %struct.word_type, ptr %2618, i64 0, i32 1
  %2620 = load i8, ptr %2619, align 8, !tbaa !5
  %2621 = add i8 %2620, -11
  %2622 = icmp ult i8 %2621, 2
  %2623 = getelementptr inbounds %struct.word_type, ptr %2618, i64 0, i32 1, i32 0, i32 1
  %2624 = zext i8 %2620 to i64
  %2625 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2624
  %2626 = select i1 %2622, ptr %2623, ptr %2625
  %2627 = load i8, ptr %2626, align 1, !tbaa !5
  %2628 = zext i8 %2627 to i32
  store i32 %2628, ptr @zz_size, align 4, !tbaa !10
  %2629 = zext i8 %2627 to i64
  %2630 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2629
  %2631 = load ptr, ptr %2630, align 8, !tbaa !8
  store ptr %2631, ptr %2618, align 8, !tbaa !5
  %2632 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2633 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2634 = sext i32 %2633 to i64
  %2635 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2634
  store ptr %2632, ptr %2635, align 8, !tbaa !8
  %2636 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2637 = getelementptr inbounds [2 x %struct.LIST], ptr %2636, i64 0, i64 1, i32 1
  %2638 = load ptr, ptr %2637, align 8, !tbaa !5
  %2639 = icmp eq ptr %2638, %2636
  br i1 %2639, label %2591, label %2595

2640:                                             ; preds = %2591, %2662
  %2641 = phi ptr [ %2683, %2662 ], [ %2593, %2591 ]
  store ptr %2641, ptr @xx_link, align 8, !tbaa !8
  %2642 = getelementptr inbounds [2 x %struct.LIST], ptr %2641, i64 0, i64 1, i32 1
  %2643 = load ptr, ptr %2642, align 8, !tbaa !5
  %2644 = icmp eq ptr %2643, %2641
  br i1 %2644, label %2650, label %2645

2645:                                             ; preds = %2640
  store ptr %2643, ptr @zz_res, align 8, !tbaa !8
  %2646 = getelementptr inbounds [2 x %struct.LIST], ptr %2641, i64 0, i64 1
  %2647 = load ptr, ptr %2646, align 8, !tbaa !5
  %2648 = getelementptr inbounds [2 x %struct.LIST], ptr %2643, i64 0, i64 1
  store ptr %2647, ptr %2648, align 8, !tbaa !5
  %2649 = getelementptr inbounds [2 x %struct.LIST], ptr %2647, i64 0, i64 1, i32 1
  store ptr %2643, ptr %2649, align 8, !tbaa !5
  store ptr %2641, ptr %2642, align 8, !tbaa !5
  store ptr %2641, ptr %2646, align 8, !tbaa !5
  br label %2650

2650:                                             ; preds = %2640, %2645
  store ptr %2641, ptr @zz_hold, align 8, !tbaa !8
  %2651 = getelementptr inbounds %struct.LIST, ptr %2641, i64 0, i32 1
  %2652 = load ptr, ptr %2651, align 8, !tbaa !5
  %2653 = icmp eq ptr %2652, %2641
  br i1 %2653, label %2662, label %2654

2654:                                             ; preds = %2650
  store ptr %2652, ptr @zz_res, align 8, !tbaa !8
  %2655 = load ptr, ptr %2641, align 8, !tbaa !5
  store ptr %2655, ptr %2652, align 8, !tbaa !5
  %2656 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %2657 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2658 = load ptr, ptr %2657, align 8, !tbaa !5
  %2659 = getelementptr inbounds %struct.LIST, ptr %2658, i64 0, i32 1
  store ptr %2656, ptr %2659, align 8, !tbaa !5
  %2660 = getelementptr inbounds %struct.LIST, ptr %2657, i64 0, i32 1
  store ptr %2657, ptr %2660, align 8, !tbaa !5
  store ptr %2657, ptr %2657, align 8, !tbaa !5
  %2661 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %2662

2662:                                             ; preds = %2650, %2654
  %2663 = phi ptr [ %2641, %2650 ], [ %2661, %2654 ]
  store ptr %2663, ptr @zz_hold, align 8, !tbaa !8
  %2664 = getelementptr inbounds %struct.word_type, ptr %2663, i64 0, i32 1
  %2665 = load i8, ptr %2664, align 8, !tbaa !5
  %2666 = add i8 %2665, -11
  %2667 = icmp ult i8 %2666, 2
  %2668 = getelementptr inbounds %struct.word_type, ptr %2663, i64 0, i32 1, i32 0, i32 1
  %2669 = zext i8 %2665 to i64
  %2670 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2669
  %2671 = select i1 %2667, ptr %2668, ptr %2670
  %2672 = load i8, ptr %2671, align 1, !tbaa !5
  %2673 = zext i8 %2672 to i32
  store i32 %2673, ptr @zz_size, align 4, !tbaa !10
  %2674 = zext i8 %2672 to i64
  %2675 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2674
  %2676 = load ptr, ptr %2675, align 8, !tbaa !8
  store ptr %2676, ptr %2663, align 8, !tbaa !5
  %2677 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2678 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2679 = sext i32 %2678 to i64
  %2680 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2679
  store ptr %2677, ptr %2680, align 8, !tbaa !8
  %2681 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %2682 = getelementptr inbounds %struct.LIST, ptr %2681, i64 0, i32 1
  %2683 = load ptr, ptr %2682, align 8, !tbaa !5
  %2684 = icmp eq ptr %2683, %2681
  br i1 %2684, label %2685, label %2640

2685:                                             ; preds = %2662, %2587, %2591
  %2686 = phi ptr [ %2593, %2591 ], [ %2450, %2587 ], [ %2681, %2662 ]
  store ptr %2686, ptr @zz_hold, align 8, !tbaa !8
  %2687 = getelementptr inbounds %struct.word_type, ptr %2686, i64 0, i32 1
  %2688 = load i8, ptr %2687, align 8, !tbaa !5
  %2689 = add i8 %2688, -11
  %2690 = icmp ult i8 %2689, 2
  %2691 = getelementptr inbounds %struct.word_type, ptr %2686, i64 0, i32 1, i32 0, i32 1
  %2692 = zext i8 %2688 to i64
  %2693 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %2692
  %2694 = select i1 %2690, ptr %2691, ptr %2693
  %2695 = load i8, ptr %2694, align 1, !tbaa !5
  %2696 = zext i8 %2695 to i32
  store i32 %2696, ptr @zz_size, align 4, !tbaa !10
  %2697 = zext i8 %2695 to i64
  %2698 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2697
  %2699 = load ptr, ptr %2698, align 8, !tbaa !8
  store ptr %2699, ptr %2686, align 8, !tbaa !5
  %2700 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %2701 = load i32, ptr @zz_size, align 4, !tbaa !10
  %2702 = sext i32 %2701 to i64
  %2703 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %2702
  store ptr %2700, ptr %2703, align 8, !tbaa !8
  br label %2704

2704:                                             ; preds = %2685, %2731, %218, %222, %135, %1433, %2152, %2559, %2438, %1049
  %2705 = phi i32 [ %1453, %2152 ], [ %1453, %2438 ], [ %1453, %2559 ], [ %289, %1049 ], [ %289, %1433 ], [ %49, %135 ], [ %49, %222 ], [ %49, %218 ], [ %1453, %2731 ], [ %1453, %2685 ]
  %2706 = phi i32 [ %1454, %2152 ], [ %1454, %2438 ], [ %1454, %2559 ], [ %288, %1049 ], [ %288, %1433 ], [ %50, %135 ], [ %50, %222 ], [ %50, %218 ], [ %1454, %2731 ], [ %1454, %2685 ]
  %2707 = phi i32 [ %1455, %2152 ], [ %1455, %2438 ], [ %1455, %2559 ], [ %1019, %1049 ], [ %1334, %1433 ], [ %51, %135 ], [ %219, %222 ], [ %219, %218 ], [ %1455, %2731 ], [ %1455, %2685 ]
  %2708 = phi i32 [ %1456, %2152 ], [ %1456, %2438 ], [ %1456, %2559 ], [ %286, %1049 ], [ %286, %1433 ], [ %52, %135 ], [ %52, %222 ], [ %52, %218 ], [ %1456, %2731 ], [ %1456, %2685 ]
  %2709 = phi i32 [ %1457, %2152 ], [ %1457, %2438 ], [ %1457, %2559 ], [ %284, %1049 ], [ %284, %1433 ], [ %53, %135 ], [ %53, %222 ], [ %53, %218 ], [ %1457, %2731 ], [ %1457, %2685 ]
  %2710 = phi i32 [ %1459, %2152 ], [ %1459, %2438 ], [ %1459, %2559 ], [ %1005, %1049 ], [ %1164, %1433 ], [ %54, %135 ], [ %54, %222 ], [ %54, %218 ], [ %1459, %2731 ], [ %1459, %2685 ]
  %2711 = phi i32 [ %1460, %2152 ], [ %1460, %2438 ], [ %1460, %2559 ], [ %1006, %1049 ], [ %1165, %1433 ], [ %55, %135 ], [ %55, %222 ], [ %55, %218 ], [ %1460, %2731 ], [ %1460, %2685 ]
  %2712 = phi i32 [ %1461, %2152 ], [ %1461, %2438 ], [ %1461, %2559 ], [ %1007, %1049 ], [ %1166, %1433 ], [ %56, %135 ], [ %56, %222 ], [ %56, %218 ], [ %1461, %2731 ], [ %1461, %2685 ]
  %2713 = phi i32 [ %1462, %2152 ], [ %1462, %2438 ], [ %1462, %2559 ], [ %1008, %1049 ], [ %1167, %1433 ], [ %57, %135 ], [ %57, %222 ], [ %57, %218 ], [ %1462, %2731 ], [ %1462, %2685 ]
  %2714 = phi i32 [ %1463, %2152 ], [ %1463, %2438 ], [ %1463, %2559 ], [ %1009, %1049 ], [ %1168, %1433 ], [ %58, %135 ], [ %58, %222 ], [ %58, %218 ], [ %1463, %2731 ], [ %1463, %2685 ]
  %2715 = phi i32 [ %1464, %2152 ], [ %1464, %2438 ], [ %1464, %2559 ], [ %1010, %1049 ], [ %277, %1433 ], [ %59, %135 ], [ %59, %222 ], [ %59, %218 ], [ %1464, %2731 ], [ %1464, %2685 ]
  %2716 = phi ptr [ %1465, %2152 ], [ %1465, %2438 ], [ %1465, %2559 ], [ %1011, %1049 ], [ %1169, %1433 ], [ %60, %135 ], [ %60, %222 ], [ %60, %218 ], [ %1465, %2731 ], [ %1465, %2685 ]
  br label %48

2717:                                             ; preds = %2583, %2717
  %2718 = phi ptr [ %2720, %2717 ], [ %2585, %2583 ]
  %2719 = getelementptr inbounds [2 x %struct.LIST], ptr %2718, i64 0, i64 1
  %2720 = load ptr, ptr %2719, align 8, !tbaa !5
  %2721 = getelementptr inbounds %struct.word_type, ptr %2720, i64 0, i32 1
  %2722 = load i8, ptr %2721, align 8, !tbaa !5
  %2723 = icmp eq i8 %2722, 0
  br i1 %2723, label %2717, label %2724

2724:                                             ; preds = %2717
  %2725 = getelementptr inbounds %struct.head_type, ptr %2720, i64 0, i32 8
  %2726 = load ptr, ptr %2725, align 8, !tbaa !5
  %2727 = icmp eq ptr %2726, null
  br i1 %2727, label %2731, label %2728

2728:                                             ; preds = %2724
  %2729 = getelementptr inbounds %struct.closure_type, ptr %2450, i64 0, i32 5
  %2730 = load ptr, ptr %2729, align 8, !tbaa !5
  call void @GazumpOptimize(ptr noundef nonnull %2720, ptr noundef %2730) #6
  br label %2731

2731:                                             ; preds = %2728, %2724
  call void @DetachGalley(ptr noundef nonnull %2720) #6
  br label %2704

2732:                                             ; preds = %2454, %2578, %2451
  %2733 = phi ptr [ %2450, %2451 ], [ %2455, %2454 ], [ %2450, %2578 ]
  %2734 = phi i16 [ %2453, %2451 ], [ %2457, %2454 ], [ %2580, %2578 ]
  %2735 = getelementptr inbounds i8, ptr %2733, i64 42
  %2736 = or i16 %2734, 32
  store i16 %2736, ptr %2735, align 2
  %2737 = icmp eq i32 %1455, 0
  br i1 %2737, label %2748, label %2738

2738:                                             ; preds = %2732
  %2739 = getelementptr inbounds [2 x %struct.LIST], ptr %1466, i64 0, i64 1, i32 1
  %2740 = load ptr, ptr %2739, align 8, !tbaa !5
  br label %2741

2741:                                             ; preds = %2741, %2738
  %2742 = phi ptr [ %2740, %2738 ], [ %2743, %2741 ]
  %2743 = load ptr, ptr %2742, align 8, !tbaa !5
  %2744 = getelementptr inbounds %struct.word_type, ptr %2743, i64 0, i32 1
  %2745 = load i8, ptr %2744, align 8, !tbaa !5
  %2746 = icmp eq i8 %2745, 0
  br i1 %2746, label %2741, label %2747

2747:                                             ; preds = %2741
  call void @FlushGalley(ptr noundef nonnull %2743)
  br label %2748

2748:                                             ; preds = %75, %2747, %2732, %244, %233, %179, %180, %126, %129, %108, %111, %90, %93, %1162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @AttachGalley(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ParentFlush(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %7, %5 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.word_type, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %8, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %132, label %16

16:                                               ; preds = %14
  store ptr %1, ptr @xx_hold, align 8, !tbaa !8
  %17 = icmp eq ptr %7, %1
  br i1 %17, label %18, label %23

18:                                               ; preds = %45, %16
  %19 = phi ptr [ %1, %16 ], [ %64, %45 ]
  %20 = getelementptr inbounds %struct.LIST, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, %19
  br i1 %22, label %113, label %68

23:                                               ; preds = %16, %45
  %24 = phi ptr [ %66, %45 ], [ %7, %16 ]
  store ptr %24, ptr @xx_link, align 8, !tbaa !8
  %25 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, %24
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  store ptr %26, ptr @zz_res, align 8, !tbaa !8
  %29 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %26, i64 0, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1, i32 1
  store ptr %26, ptr %32, align 8, !tbaa !5
  store ptr %24, ptr %25, align 8, !tbaa !5
  store ptr %24, ptr %29, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %23, %28
  store ptr %24, ptr @zz_hold, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.LIST, ptr %24, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, %24
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  store ptr %35, ptr @zz_res, align 8, !tbaa !8
  %38 = load ptr, ptr %24, align 8, !tbaa !5
  store ptr %38, ptr %35, align 8, !tbaa !5
  %39 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %40 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  store ptr %39, ptr %42, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.LIST, ptr %40, i64 0, i32 1
  store ptr %40, ptr %43, align 8, !tbaa !5
  store ptr %40, ptr %40, align 8, !tbaa !5
  %44 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %45

45:                                               ; preds = %33, %37
  %46 = phi ptr [ %24, %33 ], [ %44, %37 ]
  store ptr %46, ptr @zz_hold, align 8, !tbaa !8
  %47 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  %48 = load i8, ptr %47, align 8, !tbaa !5
  %49 = add i8 %48, -11
  %50 = icmp ult i8 %49, 2
  %51 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1, i32 0, i32 1
  %52 = zext i8 %48 to i64
  %53 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %52
  %54 = select i1 %50, ptr %51, ptr %53
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  store i32 %56, ptr @zz_size, align 4, !tbaa !10
  %57 = zext i8 %55 to i64
  %58 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !8
  store ptr %59, ptr %46, align 8, !tbaa !5
  %60 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %61 = load i32, ptr @zz_size, align 4, !tbaa !10
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %62
  store ptr %60, ptr %63, align 8, !tbaa !8
  %64 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %65 = getelementptr inbounds [2 x %struct.LIST], ptr %64, i64 0, i64 1, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, %64
  br i1 %67, label %18, label %23

68:                                               ; preds = %18, %90
  %69 = phi ptr [ %111, %90 ], [ %21, %18 ]
  store ptr %69, ptr @xx_link, align 8, !tbaa !8
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  store ptr %71, ptr @zz_res, align 8, !tbaa !8
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %71, ptr %77, align 8, !tbaa !5
  store ptr %69, ptr %70, align 8, !tbaa !5
  store ptr %69, ptr %74, align 8, !tbaa !5
  br label %78

78:                                               ; preds = %68, %73
  store ptr %69, ptr @zz_hold, align 8, !tbaa !8
  %79 = getelementptr inbounds %struct.LIST, ptr %69, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, %69
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  store ptr %80, ptr @zz_res, align 8, !tbaa !8
  %83 = load ptr, ptr %69, align 8, !tbaa !5
  store ptr %83, ptr %80, align 8, !tbaa !5
  %84 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %85 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.LIST, ptr %86, i64 0, i32 1
  store ptr %84, ptr %87, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.LIST, ptr %85, i64 0, i32 1
  store ptr %85, ptr %88, align 8, !tbaa !5
  store ptr %85, ptr %85, align 8, !tbaa !5
  %89 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %90

90:                                               ; preds = %78, %82
  %91 = phi ptr [ %69, %78 ], [ %89, %82 ]
  store ptr %91, ptr @zz_hold, align 8, !tbaa !8
  %92 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1
  %93 = load i8, ptr %92, align 8, !tbaa !5
  %94 = add i8 %93, -11
  %95 = icmp ult i8 %94, 2
  %96 = getelementptr inbounds %struct.word_type, ptr %91, i64 0, i32 1, i32 0, i32 1
  %97 = zext i8 %93 to i64
  %98 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %97
  %99 = select i1 %95, ptr %96, ptr %98
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  store i32 %101, ptr @zz_size, align 4, !tbaa !10
  %102 = zext i8 %100 to i64
  %103 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !8
  store ptr %104, ptr %91, align 8, !tbaa !5
  %105 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %106 = load i32, ptr @zz_size, align 4, !tbaa !10
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %107
  store ptr %105, ptr %108, align 8, !tbaa !8
  %109 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %110 = getelementptr inbounds %struct.LIST, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = icmp eq ptr %111, %109
  br i1 %112, label %113, label %68

113:                                              ; preds = %90, %18
  %114 = phi ptr [ %19, %18 ], [ %109, %90 ]
  store ptr %114, ptr @zz_hold, align 8, !tbaa !8
  %115 = getelementptr inbounds %struct.word_type, ptr %114, i64 0, i32 1
  %116 = load i8, ptr %115, align 8, !tbaa !5
  %117 = add i8 %116, -11
  %118 = icmp ult i8 %117, 2
  %119 = getelementptr inbounds %struct.word_type, ptr %114, i64 0, i32 1, i32 0, i32 1
  %120 = zext i8 %116 to i64
  %121 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %120
  %122 = select i1 %118, ptr %119, ptr %121
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = zext i8 %123 to i32
  store i32 %124, ptr @zz_size, align 4, !tbaa !10
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !8
  store ptr %127, ptr %114, align 8, !tbaa !5
  %128 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %129 = load i32, ptr @zz_size, align 4, !tbaa !10
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %130
  store ptr %128, ptr %131, align 8, !tbaa !8
  br label %132

132:                                              ; preds = %113, %14
  tail call void @FlushGalley(ptr noundef %10)
  br label %253

133:                                              ; preds = %3
  %134 = icmp eq i32 %2, 0
  br i1 %134, label %253, label %135

135:                                              ; preds = %133
  store ptr %1, ptr @xx_hold, align 8, !tbaa !8
  %136 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = icmp eq ptr %137, %1
  br i1 %138, label %139, label %144

139:                                              ; preds = %166, %135
  %140 = phi ptr [ %1, %135 ], [ %185, %166 ]
  %141 = getelementptr inbounds %struct.LIST, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = icmp eq ptr %142, %140
  br i1 %143, label %234, label %189

144:                                              ; preds = %135, %166
  %145 = phi ptr [ %187, %166 ], [ %137, %135 ]
  store ptr %145, ptr @xx_link, align 8, !tbaa !8
  %146 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = icmp eq ptr %147, %145
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  store ptr %147, ptr @zz_res, align 8, !tbaa !8
  %150 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds [2 x %struct.LIST], ptr %147, i64 0, i64 1
  store ptr %151, ptr %152, align 8, !tbaa !5
  %153 = getelementptr inbounds [2 x %struct.LIST], ptr %151, i64 0, i64 1, i32 1
  store ptr %147, ptr %153, align 8, !tbaa !5
  store ptr %145, ptr %146, align 8, !tbaa !5
  store ptr %145, ptr %150, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %144, %149
  store ptr %145, ptr @zz_hold, align 8, !tbaa !8
  %155 = getelementptr inbounds %struct.LIST, ptr %145, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  %157 = icmp eq ptr %156, %145
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  store ptr %156, ptr @zz_res, align 8, !tbaa !8
  %159 = load ptr, ptr %145, align 8, !tbaa !5
  store ptr %159, ptr %156, align 8, !tbaa !5
  %160 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %161 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.LIST, ptr %162, i64 0, i32 1
  store ptr %160, ptr %163, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.LIST, ptr %161, i64 0, i32 1
  store ptr %161, ptr %164, align 8, !tbaa !5
  store ptr %161, ptr %161, align 8, !tbaa !5
  %165 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %166

166:                                              ; preds = %154, %158
  %167 = phi ptr [ %145, %154 ], [ %165, %158 ]
  store ptr %167, ptr @zz_hold, align 8, !tbaa !8
  %168 = getelementptr inbounds %struct.word_type, ptr %167, i64 0, i32 1
  %169 = load i8, ptr %168, align 8, !tbaa !5
  %170 = add i8 %169, -11
  %171 = icmp ult i8 %170, 2
  %172 = getelementptr inbounds %struct.word_type, ptr %167, i64 0, i32 1, i32 0, i32 1
  %173 = zext i8 %169 to i64
  %174 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %173
  %175 = select i1 %171, ptr %172, ptr %174
  %176 = load i8, ptr %175, align 1, !tbaa !5
  %177 = zext i8 %176 to i32
  store i32 %177, ptr @zz_size, align 4, !tbaa !10
  %178 = zext i8 %176 to i64
  %179 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !8
  store ptr %180, ptr %167, align 8, !tbaa !5
  %181 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %182 = load i32, ptr @zz_size, align 4, !tbaa !10
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %183
  store ptr %181, ptr %184, align 8, !tbaa !8
  %185 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = icmp eq ptr %187, %185
  br i1 %188, label %139, label %144

189:                                              ; preds = %139, %211
  %190 = phi ptr [ %232, %211 ], [ %142, %139 ]
  store ptr %190, ptr @xx_link, align 8, !tbaa !8
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = icmp eq ptr %192, %190
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  store ptr %192, ptr @zz_res, align 8, !tbaa !8
  %195 = getelementptr inbounds [2 x %struct.LIST], ptr %190, i64 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = getelementptr inbounds [2 x %struct.LIST], ptr %192, i64 0, i64 1
  store ptr %196, ptr %197, align 8, !tbaa !5
  %198 = getelementptr inbounds [2 x %struct.LIST], ptr %196, i64 0, i64 1, i32 1
  store ptr %192, ptr %198, align 8, !tbaa !5
  store ptr %190, ptr %191, align 8, !tbaa !5
  store ptr %190, ptr %195, align 8, !tbaa !5
  br label %199

199:                                              ; preds = %189, %194
  store ptr %190, ptr @zz_hold, align 8, !tbaa !8
  %200 = getelementptr inbounds %struct.LIST, ptr %190, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = icmp eq ptr %201, %190
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  store ptr %201, ptr @zz_res, align 8, !tbaa !8
  %204 = load ptr, ptr %190, align 8, !tbaa !5
  store ptr %204, ptr %201, align 8, !tbaa !5
  %205 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %206 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.LIST, ptr %207, i64 0, i32 1
  store ptr %205, ptr %208, align 8, !tbaa !5
  %209 = getelementptr inbounds %struct.LIST, ptr %206, i64 0, i32 1
  store ptr %206, ptr %209, align 8, !tbaa !5
  store ptr %206, ptr %206, align 8, !tbaa !5
  %210 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %211

211:                                              ; preds = %199, %203
  %212 = phi ptr [ %190, %199 ], [ %210, %203 ]
  store ptr %212, ptr @zz_hold, align 8, !tbaa !8
  %213 = getelementptr inbounds %struct.word_type, ptr %212, i64 0, i32 1
  %214 = load i8, ptr %213, align 8, !tbaa !5
  %215 = add i8 %214, -11
  %216 = icmp ult i8 %215, 2
  %217 = getelementptr inbounds %struct.word_type, ptr %212, i64 0, i32 1, i32 0, i32 1
  %218 = zext i8 %214 to i64
  %219 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %218
  %220 = select i1 %216, ptr %217, ptr %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  store i32 %222, ptr @zz_size, align 4, !tbaa !10
  %223 = zext i8 %221 to i64
  %224 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !8
  store ptr %225, ptr %212, align 8, !tbaa !5
  %226 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %227 = load i32, ptr @zz_size, align 4, !tbaa !10
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %228
  store ptr %226, ptr %229, align 8, !tbaa !8
  %230 = load ptr, ptr @xx_hold, align 8, !tbaa !8
  %231 = getelementptr inbounds %struct.LIST, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  %233 = icmp eq ptr %232, %230
  br i1 %233, label %234, label %189

234:                                              ; preds = %211, %139
  %235 = phi ptr [ %140, %139 ], [ %230, %211 ]
  store ptr %235, ptr @zz_hold, align 8, !tbaa !8
  %236 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 1
  %237 = load i8, ptr %236, align 8, !tbaa !5
  %238 = add i8 %237, -11
  %239 = icmp ult i8 %238, 2
  %240 = getelementptr inbounds %struct.word_type, ptr %235, i64 0, i32 1, i32 0, i32 1
  %241 = zext i8 %237 to i64
  %242 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %241
  %243 = select i1 %239, ptr %240, ptr %242
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i32
  store i32 %245, ptr @zz_size, align 4, !tbaa !10
  %246 = zext i8 %244 to i64
  %247 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !8
  store ptr %248, ptr %235, align 8, !tbaa !5
  %249 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %250 = load i32, ptr @zz_size, align 4, !tbaa !10
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %251
  store ptr %249, ptr %252, align 8, !tbaa !8
  br label %253

253:                                              ; preds = %133, %234, %132
  ret void
}

declare void @FlushInners(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeGalley(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DetachGalley(ptr noundef) local_unnamed_addr #2

declare void @KillGalley(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare i32 @CheckComponentOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VerticalHyphenate(ptr noundef) local_unnamed_addr #2

declare void @SetNeighbours(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ActualGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Promote(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @HandleHeader(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SwitchScope(ptr noundef) local_unnamed_addr #2

declare ptr @ReadFromFile(i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @UnSwitchScope(ptr noundef) local_unnamed_addr #2

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

declare void @SetTarget(ptr noundef) local_unnamed_addr #2

declare ptr @BuildEnclose(ptr noundef) local_unnamed_addr #2

declare i32 @DbRetrieveNext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ConvertGalleyList(ptr noundef) local_unnamed_addr #2

declare ptr @FirstExternTarget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GallTargEval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DbRetrieve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NextExternTarget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GazumpOptimize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!14 = !{!13, !11, i64 4}
!15 = !{!13, !11, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
