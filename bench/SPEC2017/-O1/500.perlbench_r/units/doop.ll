; ModuleID = 'doop.c'
source_filename = "doop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%struct.pvop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu, %union.anon.4, i64, ptr, i8, i8 }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%union.anon.4 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }

@PL_op = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal number of bits in vec\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Bit vector size > 32 non-portable\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Negative offset to vec in lvalue context\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"panic: do_vop called for op %u (%s)\00", align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"panic: do_trans_count line %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"panic: do_trans_complex_utf8 line %d\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"panic: do_trans_complex line %d\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"panic: do_trans_simple_utf8 line %d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"panic: do_trans_simple line %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_do_trans(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !63
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 3
  %19 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !67
  %21 = and i32 %20, 134283264
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %17, 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false, !prof !69
  br i1 %25, label %26, label %27, !prof !69

26:                                               ; preds = %1
  tail call void @Perl_croak_no_modify() #6
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, ptr %19, align 4, !tbaa !67
  %29 = and i32 %28, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %35, !prof !70

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !72
  store i64 %34, ptr %13, align 8, !tbaa !74
  br label %37

35:                                               ; preds = %27
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 34) #6
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i64, ptr %13, align 8, !tbaa !74
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %1083, label %40, !prof !69

40:                                               ; preds = %37
  br i1 %24, label %41, label %61, !prof !75

41:                                               ; preds = %40
  %42 = load i32, ptr %19, align 4, !tbaa !67
  %43 = and i32 %42, 427902976
  %44 = icmp eq i32 %43, 16384
  br i1 %44, label %54, label %45, !prof !76

45:                                               ; preds = %41
  %46 = and i32 %42, 430018304
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %52, !prof !77

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !72
  store i64 %51, ptr %13, align 8, !tbaa !74
  br label %54

52:                                               ; preds = %45
  %53 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 0) #6
  br label %54

54:                                               ; preds = %41, %48, %52
  %55 = load i32, ptr %19, align 4, !tbaa !67
  %56 = and i32 %55, 2147418367
  %57 = or disjoint i32 %56, 17408
  store i32 %57, ptr %19, align 4, !tbaa !67
  %58 = and i32 %17, 168
  %59 = icmp eq i32 %58, 0
  %60 = icmp eq i32 %18, 0
  br i1 %59, label %782, label %220, !prof !78

61:                                               ; preds = %40
  %62 = icmp eq i32 %18, 0
  br i1 %62, label %149, label %63, !prof !79

63:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %65 = getelementptr inbounds %struct.svop, ptr %64, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  %67 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !82
  %69 = call ptr @Perl_hv_common(ptr noundef %68, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = load ptr, ptr %69, align 8, !tbaa !59
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !67
  %75 = and i32 %74, -2145386240
  %76 = icmp eq i32 %75, -2147483392
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load ptr, ptr %72, align 8, !tbaa !71
  %79 = getelementptr inbounds %struct.xpvuv, ptr %78, i64 0, i32 4
  %80 = load i64, ptr %79, align 8, !tbaa !82
  br label %83

81:                                               ; preds = %71
  %82 = call i64 @Perl_sv_2uv_flags(ptr noundef %72, i32 noundef 2) #6
  br label %83

83:                                               ; preds = %81, %77, %63
  %84 = phi i64 [ %80, %77 ], [ %82, %81 ], [ 2147483647, %63 ]
  %85 = add i64 %84, 1
  %86 = load i32, ptr %19, align 4, !tbaa !67
  %87 = and i32 %86, 2098176
  %88 = icmp eq i32 %87, 1024
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load ptr, ptr %0, align 8, !tbaa !71
  %91 = getelementptr inbounds %struct.xpv, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !72
  store i64 %92, ptr %12, align 8, !tbaa !74
  %93 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !82
  br label %97

95:                                               ; preds = %83
  %96 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 32) #6
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %94, %89 ], [ %96, %95 ]
  %99 = load i32, ptr %19, align 4, !tbaa !67
  %100 = and i32 %99, 536870912
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load i64, ptr %12, align 8, !tbaa !74
  %104 = getelementptr inbounds i8, ptr %98, i64 %103
  %105 = icmp sgt i64 %103, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102, %115
  %107 = phi ptr [ %117, %115 ], [ %98, %102 ]
  %108 = phi ptr [ %116, %115 ], [ null, %102 ]
  %109 = phi ptr [ %110, %115 ], [ %98, %102 ]
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = load i8, ptr %109, align 1, !tbaa !82
  %112 = icmp sgt i8 %111, -1
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = call ptr @Perl_bytes_to_utf8(ptr noundef %107, ptr noundef nonnull %12) #6
  br label %115

115:                                              ; preds = %113, %106
  %116 = phi ptr [ %114, %113 ], [ %108, %106 ]
  %117 = phi ptr [ %114, %113 ], [ %107, %106 ]
  %118 = icmp ult ptr %110, %104
  %119 = select i1 %112, i1 %118, i1 false
  br i1 %119, label %106, label %120

120:                                              ; preds = %115
  %121 = icmp sgt i8 %111, -1
  br label %122

122:                                              ; preds = %102, %120, %97
  %123 = phi i1 [ true, %97 ], [ true, %102 ], [ %121, %120 ]
  %124 = phi ptr [ null, %97 ], [ null, %102 ], [ %116, %120 ]
  %125 = phi ptr [ %98, %97 ], [ %98, %102 ], [ %117, %120 ]
  %126 = load i64, ptr %12, align 8, !tbaa !74
  %127 = getelementptr inbounds i8, ptr %125, i64 %126
  %128 = icmp sgt i64 %126, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122, %129
  %130 = phi ptr [ %143, %129 ], [ %125, %122 ]
  %131 = phi i32 [ %137, %129 ], [ 0, %122 ]
  %132 = call i64 @Perl_swash_fetch(ptr noundef %66, ptr noundef %130, i1 noundef zeroext true) #6
  %133 = icmp ult i64 %132, %84
  %134 = icmp eq i64 %132, %85
  %135 = or i1 %133, %134
  %136 = zext i1 %135 to i32
  %137 = add nuw nsw i32 %131, %136
  %138 = load i8, ptr %130, align 1, !tbaa !82
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !82
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds i8, ptr %130, i64 %142
  %144 = icmp ult ptr %143, %127
  br i1 %144, label %129, label %145, !llvm.loop !83

145:                                              ; preds = %129, %122
  %146 = phi i32 [ 0, %122 ], [ %137, %129 ]
  br i1 %123, label %148, label %147

147:                                              ; preds = %145
  call void @Perl_safesysfree(ptr noundef %124) #6
  br label %148

148:                                              ; preds = %145, %147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  br label %1083

149:                                              ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %150 = load i32, ptr %19, align 4, !tbaa !67
  %151 = and i32 %150, 2098176
  %152 = icmp eq i32 %151, 1024
  br i1 %152, label %153, label %159, !prof !79

153:                                              ; preds = %149
  %154 = load ptr, ptr %0, align 8, !tbaa !71
  %155 = getelementptr inbounds %struct.xpv, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !72
  store i64 %156, ptr %10, align 8, !tbaa !74
  %157 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !82
  br label %161

159:                                              ; preds = %149
  %160 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 32) #6
  br label %161

161:                                              ; preds = %159, %153
  %162 = phi ptr [ %158, %153 ], [ %160, %159 ]
  %163 = load i64, ptr %10, align 8, !tbaa !74
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  %165 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %166 = getelementptr inbounds %struct.pvop, ptr %165, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !86
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %170, !prof !88

169:                                              ; preds = %161
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i32 noundef 110) #6
  br label %170

170:                                              ; preds = %169, %161
  %171 = load i32, ptr %19, align 4, !tbaa !67
  %172 = and i32 %171, 536870912
  %173 = icmp eq i32 %172, 0
  %174 = icmp sgt i64 %163, 0
  br i1 %173, label %175, label %188, !prof !79

175:                                              ; preds = %170
  br i1 %174, label %176, label %218, !prof !89

176:                                              ; preds = %175, %176
  %177 = phi ptr [ %179, %176 ], [ %162, %175 ]
  %178 = phi i32 [ %186, %176 ], [ 0, %175 ]
  %179 = getelementptr inbounds i8, ptr %177, i64 1
  %180 = load i8, ptr %177, align 1, !tbaa !82
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %167, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !90
  %184 = icmp sgt i16 %183, -1
  %185 = zext i1 %184 to i32
  %186 = add nuw nsw i32 %178, %185
  %187 = icmp ult ptr %179, %164
  br i1 %187, label %176, label %218, !prof !92, !llvm.loop !93

188:                                              ; preds = %170
  br i1 %174, label %189, label %218

189:                                              ; preds = %188
  %190 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %191 = getelementptr inbounds %struct.op, ptr %190, i64 0, i32 6
  %192 = load i8, ptr %191, align 1, !tbaa !63
  %193 = ptrtoint ptr %164 to i64
  %194 = lshr i8 %192, 5
  %195 = and i8 %194, 1
  %196 = zext nneg i8 %195 to i32
  br label %197

197:                                              ; preds = %189, %212
  %198 = phi ptr [ %162, %189 ], [ %216, %212 ]
  %199 = phi i32 [ 0, %189 ], [ %214, %212 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %200 = ptrtoint ptr %198 to i64
  %201 = sub i64 %193, %200
  %202 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %198, i64 noundef %201, ptr noundef nonnull %11, i32 noundef %204) #6
  %206 = icmp ult i64 %205, 256
  br i1 %206, label %207, label %212

207:                                              ; preds = %197
  %208 = getelementptr inbounds i16, ptr %167, i64 %205
  %209 = load i16, ptr %208, align 2, !tbaa !90
  %210 = icmp sgt i16 %209, -1
  %211 = zext i1 %210 to i32
  br label %212

212:                                              ; preds = %197, %207
  %213 = phi i32 [ %211, %207 ], [ %196, %197 ]
  %214 = add i32 %213, %199
  %215 = load i64, ptr %11, align 8, !tbaa !74
  %216 = getelementptr inbounds i8, ptr %198, i64 %215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  %217 = icmp ult ptr %216, %164
  br i1 %217, label %197, label %218, !llvm.loop !94

218:                                              ; preds = %212, %176, %188, %175
  %219 = phi i32 [ 0, %175 ], [ 0, %188 ], [ %186, %176 ], [ %214, %212 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %1083

220:                                              ; preds = %54
  br i1 %60, label %515, label %221

221:                                              ; preds = %220
  %222 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %223 = getelementptr inbounds %struct.op, ptr %222, i64 0, i32 6
  %224 = load i8, ptr %223, align 1, !tbaa !63
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 8
  %227 = and i32 %225, 128
  %228 = and i32 %225, 64
  %229 = getelementptr inbounds %struct.svop, ptr %222, i64 0, i32 7
  %230 = load ptr, ptr %229, align 8, !tbaa !80
  %231 = getelementptr inbounds %struct.sv, ptr %230, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !82
  %233 = call ptr @Perl_hv_common(ptr noundef %232, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %234 = icmp eq ptr %233, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %221
  %236 = load ptr, ptr %233, align 8, !tbaa !59
  %237 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !67
  %239 = and i32 %238, -2145386240
  %240 = icmp eq i32 %239, -2147483392
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load ptr, ptr %236, align 8, !tbaa !71
  %243 = getelementptr inbounds %struct.xpvuv, ptr %242, i64 0, i32 4
  %244 = load i64, ptr %243, align 8, !tbaa !82
  br label %247

245:                                              ; preds = %235
  %246 = call i64 @Perl_sv_2uv_flags(ptr noundef %236, i32 noundef 2) #6
  br label %247

247:                                              ; preds = %245, %241, %221
  %248 = phi i64 [ %244, %241 ], [ %246, %245 ], [ 2147483647, %221 ]
  %249 = add i64 %248, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %250 = load i32, ptr %19, align 4, !tbaa !67
  %251 = and i32 %250, 2098176
  %252 = icmp eq i32 %251, 1024
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load ptr, ptr %0, align 8, !tbaa !71
  %255 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !72
  store i64 %256, ptr %8, align 8, !tbaa !74
  %257 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !82
  br label %261

259:                                              ; preds = %247
  %260 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #6
  br label %261

261:                                              ; preds = %259, %253
  %262 = phi ptr [ %258, %253 ], [ %260, %259 ]
  %263 = load i32, ptr %19, align 4, !tbaa !67
  %264 = and i32 %263, 536870912
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %284

266:                                              ; preds = %261
  %267 = load i64, ptr %8, align 8, !tbaa !74
  %268 = getelementptr inbounds i8, ptr %262, i64 %267
  %269 = icmp sgt i64 %267, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %266, %278
  %271 = phi ptr [ %279, %278 ], [ %262, %266 ]
  %272 = phi ptr [ %273, %278 ], [ %262, %266 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 1
  %274 = load i8, ptr %272, align 1, !tbaa !82
  %275 = icmp sgt i8 %274, -1
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = call ptr @Perl_bytes_to_utf8(ptr noundef %271, ptr noundef nonnull %8) #6
  br label %278

278:                                              ; preds = %276, %270
  %279 = phi ptr [ %277, %276 ], [ %271, %270 ]
  %280 = icmp ult ptr %273, %268
  %281 = select i1 %275, i1 %280, i1 false
  br i1 %281, label %270, label %282

282:                                              ; preds = %278
  %283 = icmp slt i8 %274, 0
  br label %284

284:                                              ; preds = %282, %266, %261
  %285 = phi ptr [ %262, %261 ], [ %262, %266 ], [ %279, %282 ]
  %286 = phi i1 [ false, %261 ], [ false, %266 ], [ %283, %282 ]
  %287 = load i64, ptr %8, align 8, !tbaa !74
  %288 = getelementptr inbounds i8, ptr %285, i64 %287
  %289 = call ptr @Perl_hv_common(ptr noundef %232, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %290 = icmp eq ptr %289, null
  br i1 %290, label %303, label %291

291:                                              ; preds = %284
  %292 = load ptr, ptr %289, align 8, !tbaa !59
  %293 = getelementptr inbounds %struct.sv, ptr %292, i64 0, i32 2
  %294 = load i32, ptr %293, align 4, !tbaa !67
  %295 = and i32 %294, -2145386240
  %296 = icmp eq i32 %295, -2147483392
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = load ptr, ptr %292, align 8, !tbaa !71
  %299 = getelementptr inbounds %struct.xpvuv, ptr %298, i64 0, i32 4
  %300 = load i64, ptr %299, align 8, !tbaa !82
  br label %303

301:                                              ; preds = %291
  %302 = call i64 @Perl_sv_2uv_flags(ptr noundef %292, i32 noundef 2) #6
  br label %303

303:                                              ; preds = %301, %297, %284
  %304 = phi i64 [ 0, %284 ], [ %300, %297 ], [ %302, %301 ]
  %305 = icmp ne i32 %228, 0
  %306 = load i64, ptr %8, align 8, !tbaa !74
  br i1 %305, label %307, label %314

307:                                              ; preds = %303
  %308 = mul i64 %306, 3
  %309 = add i64 %308, 13
  %310 = call ptr @Perl_safesysmalloc(i64 noundef %309) #6
  %311 = load i64, ptr %8, align 8, !tbaa !74
  %312 = mul i64 %311, 3
  %313 = getelementptr inbounds i8, ptr %310, i64 %312
  br label %316

314:                                              ; preds = %303
  %315 = getelementptr inbounds i8, ptr %285, i64 %306
  br label %316

316:                                              ; preds = %314, %307
  %317 = phi ptr [ %313, %307 ], [ %315, %314 ]
  %318 = phi ptr [ %310, %307 ], [ %285, %314 ]
  %319 = icmp eq i32 %226, 0
  %320 = icmp sgt i64 %287, 0
  br i1 %319, label %325, label %321

321:                                              ; preds = %316
  br i1 %320, label %322, label %490

322:                                              ; preds = %321
  %323 = icmp ne i32 %227, 0
  %324 = ptrtoint ptr %288 to i64
  br label %328

325:                                              ; preds = %316
  br i1 %320, label %326, label %490

326:                                              ; preds = %325
  %327 = icmp ne i32 %227, 0
  br label %426

328:                                              ; preds = %322, %420
  %329 = phi ptr [ %318, %322 ], [ %424, %420 ]
  %330 = phi i32 [ 0, %322 ], [ %423, %420 ]
  %331 = phi ptr [ %318, %322 ], [ %354, %420 ]
  %332 = phi ptr [ %317, %322 ], [ %353, %420 ]
  %333 = phi i64 [ 4277009102, %322 ], [ %422, %420 ]
  %334 = phi ptr [ %285, %322 ], [ %421, %420 ]
  %335 = call i64 @Perl_swash_fetch(ptr noundef %230, ptr noundef %334, i1 noundef zeroext true) #6
  %336 = icmp ugt ptr %329, %332
  br i1 %336, label %337, label %352

337:                                              ; preds = %328
  %338 = ptrtoint ptr %329 to i64
  %339 = ptrtoint ptr %331 to i64
  %340 = sub i64 %338, %339
  %341 = ptrtoint ptr %332 to i64
  %342 = sub i64 %341, %339
  %343 = load i64, ptr %8, align 8, !tbaa !74
  %344 = add i64 %343, %342
  br i1 %305, label %346, label %345

345:                                              ; preds = %337
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 520) #6
  br label %346

346:                                              ; preds = %345, %337
  %347 = add i64 %344, 26
  %348 = call ptr @Perl_safesysrealloc(ptr noundef %331, i64 noundef %347) #6
  %349 = getelementptr inbounds i8, ptr %348, i64 %340
  %350 = getelementptr i8, ptr %348, i64 %344
  %351 = getelementptr i8, ptr %350, i64 13
  br label %352

352:                                              ; preds = %346, %328
  %353 = phi ptr [ %351, %346 ], [ %332, %328 ]
  %354 = phi ptr [ %348, %346 ], [ %331, %328 ]
  %355 = phi ptr [ %349, %346 ], [ %329, %328 ]
  %356 = icmp ult i64 %335, %248
  br i1 %356, label %357, label %368

357:                                              ; preds = %352
  %358 = add nsw i32 %330, 1
  %359 = load i8, ptr %334, align 1, !tbaa !82
  %360 = zext i8 %359 to i64
  %361 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !82
  %363 = zext i8 %362 to i64
  %364 = getelementptr inbounds i8, ptr %334, i64 %363
  %365 = icmp eq i64 %335, %333
  br i1 %365, label %420, label %366, !llvm.loop !95

366:                                              ; preds = %357
  %367 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %355, i64 noundef %335, i64 noundef 0) #6
  br label %420, !llvm.loop !95

368:                                              ; preds = %352
  %369 = icmp eq i64 %335, %248
  br i1 %369, label %370, label %378

370:                                              ; preds = %368
  %371 = load i8, ptr %334, align 1, !tbaa !82
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !82
  %375 = zext i8 %374 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %355, ptr nonnull align 1 %334, i64 %375, i1 false)
  %376 = getelementptr inbounds i8, ptr %355, i64 %375
  %377 = getelementptr inbounds i8, ptr %334, i64 %375
  br label %420

378:                                              ; preds = %368
  %379 = icmp ne i64 %335, %249
  %380 = select i1 %379, i1 true, i1 %323
  %381 = add nsw i32 %330, 1
  br i1 %380, label %413, label %382

382:                                              ; preds = %378
  br i1 %290, label %392, label %383

383:                                              ; preds = %382
  %384 = load i8, ptr %334, align 1, !tbaa !82
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !82
  %388 = zext i8 %387 to i64
  %389 = icmp eq i64 %333, %304
  br i1 %389, label %408, label %390

390:                                              ; preds = %383
  %391 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %355, i64 noundef %304, i64 noundef 0) #6
  br label %408

392:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %393 = ptrtoint ptr %334 to i64
  %394 = sub i64 %324, %393
  %395 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i32
  %398 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %334, i64 noundef %394, ptr noundef nonnull %9, i32 noundef %397) #6
  %399 = icmp eq i64 %398, %333
  br i1 %399, label %404, label %400

400:                                              ; preds = %392
  %401 = load i64, ptr %9, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %355, ptr align 1 %334, i64 %401, i1 false)
  %402 = load i64, ptr %9, align 8, !tbaa !74
  %403 = getelementptr inbounds i8, ptr %355, i64 %402
  br label %404

404:                                              ; preds = %400, %392
  %405 = phi i64 [ %398, %400 ], [ %333, %392 ]
  %406 = phi ptr [ %403, %400 ], [ %355, %392 ]
  %407 = load i64, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %408

408:                                              ; preds = %404, %390, %383
  %409 = phi i64 [ %388, %390 ], [ %388, %383 ], [ %407, %404 ]
  %410 = phi i64 [ %304, %390 ], [ %333, %383 ], [ %405, %404 ]
  %411 = phi ptr [ %391, %390 ], [ %355, %383 ], [ %406, %404 ]
  %412 = getelementptr inbounds i8, ptr %334, i64 %409
  br label %420, !llvm.loop !95

413:                                              ; preds = %378
  %414 = load i8, ptr %334, align 1, !tbaa !82
  %415 = zext i8 %414 to i64
  %416 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %415
  %417 = load i8, ptr %416, align 1, !tbaa !82
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds i8, ptr %334, i64 %418
  br label %420

420:                                              ; preds = %413, %408, %370, %366, %357
  %421 = phi ptr [ %377, %370 ], [ %419, %413 ], [ %412, %408 ], [ %364, %366 ], [ %364, %357 ]
  %422 = phi i64 [ 4277009102, %370 ], [ %333, %413 ], [ %410, %408 ], [ %335, %366 ], [ %333, %357 ]
  %423 = phi i32 [ %330, %370 ], [ %381, %413 ], [ %381, %408 ], [ %358, %366 ], [ %358, %357 ]
  %424 = phi ptr [ %376, %370 ], [ %355, %413 ], [ %411, %408 ], [ %367, %366 ], [ %355, %357 ]
  %425 = icmp ult ptr %421, %288
  br i1 %425, label %328, label %490

426:                                              ; preds = %326, %485
  %427 = phi ptr [ %318, %326 ], [ %488, %485 ]
  %428 = phi i32 [ 0, %326 ], [ %487, %485 ]
  %429 = phi ptr [ %318, %326 ], [ %451, %485 ]
  %430 = phi ptr [ %317, %326 ], [ %450, %485 ]
  %431 = phi ptr [ %285, %326 ], [ %486, %485 ]
  %432 = call i64 @Perl_swash_fetch(ptr noundef %230, ptr noundef %431, i1 noundef zeroext true) #6
  %433 = icmp ugt ptr %427, %430
  br i1 %433, label %434, label %449

434:                                              ; preds = %426
  %435 = ptrtoint ptr %427 to i64
  %436 = ptrtoint ptr %429 to i64
  %437 = sub i64 %435, %436
  %438 = ptrtoint ptr %430 to i64
  %439 = sub i64 %438, %436
  %440 = load i64, ptr %8, align 8, !tbaa !74
  %441 = add i64 %440, %439
  br i1 %305, label %443, label %442

442:                                              ; preds = %434
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 574) #6
  br label %443

443:                                              ; preds = %442, %434
  %444 = add i64 %441, 26
  %445 = call ptr @Perl_safesysrealloc(ptr noundef %429, i64 noundef %444) #6
  %446 = getelementptr inbounds i8, ptr %445, i64 %437
  %447 = getelementptr i8, ptr %445, i64 %441
  %448 = getelementptr i8, ptr %447, i64 13
  br label %449

449:                                              ; preds = %443, %426
  %450 = phi ptr [ %448, %443 ], [ %430, %426 ]
  %451 = phi ptr [ %445, %443 ], [ %429, %426 ]
  %452 = phi ptr [ %446, %443 ], [ %427, %426 ]
  %453 = icmp ult i64 %432, %248
  br i1 %453, label %454, label %463

454:                                              ; preds = %449
  %455 = add nsw i32 %428, 1
  %456 = load i8, ptr %431, align 1, !tbaa !82
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !82
  %460 = zext i8 %459 to i64
  %461 = getelementptr inbounds i8, ptr %431, i64 %460
  %462 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %452, i64 noundef %432, i64 noundef 0) #6
  br label %485, !llvm.loop !96

463:                                              ; preds = %449
  %464 = icmp eq i64 %432, %248
  br i1 %464, label %465, label %473

465:                                              ; preds = %463
  %466 = load i8, ptr %431, align 1, !tbaa !82
  %467 = zext i8 %466 to i64
  %468 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !82
  %470 = zext i8 %469 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %452, ptr nonnull align 1 %431, i64 %470, i1 false)
  %471 = getelementptr inbounds i8, ptr %452, i64 %470
  %472 = getelementptr inbounds i8, ptr %431, i64 %470
  br label %485

473:                                              ; preds = %463
  %474 = icmp ne i64 %432, %249
  %475 = select i1 %474, i1 true, i1 %327
  %476 = add nsw i32 %428, 1
  %477 = load i8, ptr %431, align 1, !tbaa !82
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !82
  %481 = zext i8 %480 to i64
  %482 = getelementptr inbounds i8, ptr %431, i64 %481
  br i1 %475, label %485, label %483

483:                                              ; preds = %473
  %484 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %452, i64 noundef %304, i64 noundef 0) #6
  br label %485, !llvm.loop !96

485:                                              ; preds = %473, %483, %465, %454
  %486 = phi ptr [ %461, %454 ], [ %472, %465 ], [ %482, %483 ], [ %482, %473 ]
  %487 = phi i32 [ %455, %454 ], [ %428, %465 ], [ %476, %483 ], [ %476, %473 ]
  %488 = phi ptr [ %462, %454 ], [ %471, %465 ], [ %484, %483 ], [ %452, %473 ]
  %489 = icmp ult ptr %486, %288
  br i1 %489, label %426, label %490

490:                                              ; preds = %420, %485, %321, %325
  %491 = phi ptr [ %318, %325 ], [ %318, %321 ], [ %451, %485 ], [ %354, %420 ]
  %492 = phi i32 [ 0, %325 ], [ 0, %321 ], [ %487, %485 ], [ %423, %420 ]
  %493 = phi ptr [ %318, %325 ], [ %318, %321 ], [ %488, %485 ], [ %424, %420 ]
  %494 = or i1 %305, %286
  br i1 %494, label %495, label %501

495:                                              ; preds = %490
  %496 = ptrtoint ptr %493 to i64
  %497 = ptrtoint ptr %491 to i64
  %498 = sub i64 %496, %497
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %491, i64 noundef %498) #6
  call void @Perl_safesysfree(ptr noundef %491) #6
  %499 = and i1 %305, %286
  br i1 %499, label %500, label %507

500:                                              ; preds = %495
  call void @Perl_safesysfree(ptr noundef %285) #6
  br label %507

501:                                              ; preds = %490
  store i8 0, ptr %493, align 1, !tbaa !82
  %502 = ptrtoint ptr %493 to i64
  %503 = ptrtoint ptr %491 to i64
  %504 = sub i64 %502, %503
  %505 = load ptr, ptr %0, align 8, !tbaa !71
  %506 = getelementptr inbounds %struct.xpv, ptr %505, i64 0, i32 2
  store i64 %504, ptr %506, align 8, !tbaa !72
  br label %507

507:                                              ; preds = %501, %500, %495
  %508 = load i32, ptr %19, align 4, !tbaa !67
  %509 = or i32 %508, 536870912
  store i32 %509, ptr %19, align 4, !tbaa !67
  %510 = and i32 %508, 4194304
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %514, label %512

512:                                              ; preds = %507
  %513 = call i32 @Perl_mg_set(ptr noundef %0) #6
  br label %514

514:                                              ; preds = %507, %512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  br label %1083

515:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %516 = and i32 %57, 2098176
  %517 = icmp eq i32 %516, 1024
  br i1 %517, label %518, label %524

518:                                              ; preds = %515
  %519 = load ptr, ptr %0, align 8, !tbaa !71
  %520 = getelementptr inbounds %struct.xpv, ptr %519, i64 0, i32 2
  %521 = load i64, ptr %520, align 8, !tbaa !72
  store i64 %521, ptr %5, align 8, !tbaa !74
  %522 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !82
  br label %526

524:                                              ; preds = %515
  %525 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #6
  br label %526

526:                                              ; preds = %524, %518
  %527 = phi ptr [ %523, %518 ], [ %525, %524 ]
  %528 = load i64, ptr %5, align 8, !tbaa !74
  %529 = getelementptr inbounds i8, ptr %527, i64 %528
  %530 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %531 = getelementptr inbounds %struct.pvop, ptr %530, i64 0, i32 7
  %532 = load ptr, ptr %531, align 8, !tbaa !86
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %535

534:                                              ; preds = %526
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 147) #6
  br label %535

535:                                              ; preds = %534, %526
  %536 = load i32, ptr %19, align 4, !tbaa !67
  %537 = and i32 %536, 536870912
  %538 = icmp eq i32 %537, 0
  %539 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %540 = getelementptr inbounds %struct.op, ptr %539, i64 0, i32 6
  %541 = load i8, ptr %540, align 1, !tbaa !63
  br i1 %538, label %542, label %610

542:                                              ; preds = %535
  %543 = and i8 %541, 8
  %544 = icmp eq i8 %543, 0
  %545 = icmp sgt i64 %528, 0
  br i1 %544, label %547, label %546

546:                                              ; preds = %542
  br i1 %545, label %548, label %602

547:                                              ; preds = %542
  br i1 %545, label %579, label %602

548:                                              ; preds = %546, %573
  %549 = phi ptr [ %577, %573 ], [ %527, %546 ]
  %550 = phi i32 [ %576, %573 ], [ 0, %546 ]
  %551 = phi ptr [ %575, %573 ], [ %527, %546 ]
  %552 = phi ptr [ %574, %573 ], [ %529, %546 ]
  %553 = load i8, ptr %549, align 1, !tbaa !82
  %554 = zext i8 %553 to i64
  %555 = getelementptr inbounds i16, ptr %532, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !90
  %557 = icmp sgt i16 %556, -1
  br i1 %557, label %558, label %568

558:                                              ; preds = %548
  %559 = trunc i16 %556 to i8
  store i8 %559, ptr %551, align 1, !tbaa !82
  %560 = add nsw i32 %550, 1
  %561 = getelementptr inbounds i8, ptr %551, i64 -1
  %562 = icmp eq ptr %552, %561
  br i1 %562, label %563, label %566

563:                                              ; preds = %558
  %564 = load i8, ptr %552, align 1, !tbaa !82
  %565 = icmp eq i8 %564, %559
  br i1 %565, label %573, label %566

566:                                              ; preds = %563, %558
  %567 = getelementptr inbounds i8, ptr %551, i64 1
  br label %573

568:                                              ; preds = %548
  switch i16 %556, label %573 [
    i16 -1, label %569
    i16 -2, label %571
  ]

569:                                              ; preds = %568
  %570 = getelementptr inbounds i8, ptr %551, i64 1
  store i8 %553, ptr %551, align 1, !tbaa !82
  br label %573

571:                                              ; preds = %568
  %572 = add nsw i32 %550, 1
  br label %573

573:                                              ; preds = %571, %569, %568, %566, %563
  %574 = phi ptr [ %551, %566 ], [ %552, %563 ], [ %552, %569 ], [ %552, %571 ], [ %552, %568 ]
  %575 = phi ptr [ %567, %566 ], [ %551, %563 ], [ %570, %569 ], [ %551, %571 ], [ %551, %568 ]
  %576 = phi i32 [ %560, %566 ], [ %560, %563 ], [ %550, %569 ], [ %572, %571 ], [ %550, %568 ]
  %577 = getelementptr inbounds i8, ptr %549, i64 1
  %578 = icmp ult ptr %577, %529
  br i1 %578, label %548, label %602, !llvm.loop !97

579:                                              ; preds = %547, %597
  %580 = phi ptr [ %600, %597 ], [ %527, %547 ]
  %581 = phi i32 [ %599, %597 ], [ 0, %547 ]
  %582 = phi ptr [ %598, %597 ], [ %527, %547 ]
  %583 = load i8, ptr %580, align 1, !tbaa !82
  %584 = zext i8 %583 to i64
  %585 = getelementptr inbounds i16, ptr %532, i64 %584
  %586 = load i16, ptr %585, align 2, !tbaa !90
  %587 = icmp sgt i16 %586, -1
  br i1 %587, label %588, label %592

588:                                              ; preds = %579
  %589 = add nsw i32 %581, 1
  %590 = trunc i16 %586 to i8
  %591 = getelementptr inbounds i8, ptr %582, i64 1
  store i8 %590, ptr %582, align 1, !tbaa !82
  br label %597

592:                                              ; preds = %579
  switch i16 %586, label %597 [
    i16 -1, label %593
    i16 -2, label %595
  ]

593:                                              ; preds = %592
  %594 = getelementptr inbounds i8, ptr %582, i64 1
  store i8 %583, ptr %582, align 1, !tbaa !82
  br label %597

595:                                              ; preds = %592
  %596 = add nsw i32 %581, 1
  br label %597

597:                                              ; preds = %595, %593, %592, %588
  %598 = phi ptr [ %591, %588 ], [ %594, %593 ], [ %582, %595 ], [ %582, %592 ]
  %599 = phi i32 [ %589, %588 ], [ %581, %593 ], [ %596, %595 ], [ %581, %592 ]
  %600 = getelementptr inbounds i8, ptr %580, i64 1
  %601 = icmp ult ptr %600, %529
  br i1 %601, label %579, label %602, !llvm.loop !98

602:                                              ; preds = %573, %597, %546, %547
  %603 = phi ptr [ %527, %547 ], [ %527, %546 ], [ %598, %597 ], [ %575, %573 ]
  %604 = phi i32 [ 0, %547 ], [ 0, %546 ], [ %599, %597 ], [ %576, %573 ]
  store i8 0, ptr %603, align 1, !tbaa !82
  %605 = ptrtoint ptr %603 to i64
  %606 = ptrtoint ptr %527 to i64
  %607 = sub i64 %605, %606
  %608 = load ptr, ptr %0, align 8, !tbaa !71
  %609 = getelementptr inbounds %struct.xpv, ptr %608, i64 0, i32 2
  store i64 %607, ptr %609, align 8, !tbaa !72
  br label %774

610:                                              ; preds = %535
  %611 = zext i8 %541 to i32
  %612 = and i32 %611, 32
  %613 = and i32 %611, 64
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %620, label %615

615:                                              ; preds = %610
  %616 = load i64, ptr %5, align 8, !tbaa !74
  %617 = shl i64 %616, 1
  %618 = or disjoint i64 %617, 1
  %619 = call ptr @Perl_safesysmalloc(i64 noundef %618) #6
  br label %620

620:                                              ; preds = %615, %610
  %621 = phi ptr [ %619, %615 ], [ %527, %610 ]
  %622 = icmp eq i32 %612, 0
  %623 = icmp slt i8 %541, 0
  %624 = or i1 %623, %622
  br i1 %624, label %629, label %625

625:                                              ; preds = %620
  %626 = getelementptr inbounds i16, ptr %532, i64 256
  %627 = load i16, ptr %626, align 2, !tbaa !90
  %628 = sext i16 %627 to i64
  br label %629

629:                                              ; preds = %625, %620
  %630 = phi i64 [ 0, %620 ], [ %628, %625 ]
  %631 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %632 = getelementptr inbounds %struct.op, ptr %631, i64 0, i32 6
  %633 = load i8, ptr %632, align 1, !tbaa !63
  %634 = and i8 %633, 8
  %635 = icmp eq i8 %634, 0
  %636 = getelementptr i16, ptr %532, i64 1
  %637 = icmp sgt i64 %528, 0
  br i1 %635, label %644, label %638

638:                                              ; preds = %629
  br i1 %637, label %639, label %758

639:                                              ; preds = %638
  %640 = ptrtoint ptr %529 to i64
  %641 = icmp eq i64 %630, 0
  %642 = getelementptr i16, ptr %532, i64 %630
  %643 = getelementptr i16, ptr %642, i64 256
  br label %649

644:                                              ; preds = %629
  br i1 %637, label %645, label %758

645:                                              ; preds = %644
  %646 = ptrtoint ptr %529 to i64
  %647 = getelementptr i16, ptr %532, i64 %630
  %648 = getelementptr i16, ptr %647, i64 256
  br label %707

649:                                              ; preds = %639, %700
  %650 = phi ptr [ %527, %639 ], [ %705, %700 ]
  %651 = phi i32 [ 0, %639 ], [ %703, %700 ]
  %652 = phi i64 [ 4277009102, %639 ], [ %702, %700 ]
  %653 = phi ptr [ %621, %639 ], [ %701, %700 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %654 = ptrtoint ptr %650 to i64
  %655 = sub i64 %640, %654
  %656 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6
  %657 = xor i1 %656, true
  %658 = zext i1 %657 to i32
  %659 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %650, i64 noundef %655, ptr noundef nonnull %6, i32 noundef %658) #6
  %660 = icmp ugt i64 %659, 255
  br i1 %660, label %661, label %683

661:                                              ; preds = %649
  br i1 %622, label %662, label %666

662:                                              ; preds = %661
  %663 = load i64, ptr %6, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %653, ptr align 1 %650, i64 %663, i1 false)
  %664 = load i64, ptr %6, align 8, !tbaa !74
  %665 = getelementptr inbounds i8, ptr %653, i64 %664
  br label %700

666:                                              ; preds = %661
  %667 = add nsw i32 %651, 1
  br i1 %623, label %700, label %668

668:                                              ; preds = %666
  br i1 %641, label %676, label %669

669:                                              ; preds = %668
  %670 = add i64 %659, -256
  %671 = icmp ult i64 %670, %630
  %672 = getelementptr i16, ptr %636, i64 %659
  %673 = select i1 %671, ptr %672, ptr %643
  %674 = load i16, ptr %673, align 2, !tbaa !90
  %675 = sext i16 %674 to i64
  br label %676

676:                                              ; preds = %669, %668
  %677 = phi i64 [ %659, %668 ], [ %675, %669 ]
  %678 = shl i64 %677, 32
  %679 = ashr exact i64 %678, 32
  %680 = icmp eq i64 %679, %652
  br i1 %680, label %700, label %681, !llvm.loop !99

681:                                              ; preds = %676
  %682 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %653, i64 noundef %679, i64 noundef 0) #6
  br label %700, !llvm.loop !99

683:                                              ; preds = %649
  %684 = getelementptr inbounds i16, ptr %532, i64 %659
  %685 = load i16, ptr %684, align 2, !tbaa !90
  %686 = icmp sgt i16 %685, -1
  br i1 %686, label %687, label %693

687:                                              ; preds = %683
  %688 = add nsw i32 %651, 1
  %689 = zext nneg i16 %685 to i64
  %690 = icmp eq i64 %652, %689
  br i1 %690, label %700, label %691, !llvm.loop !99

691:                                              ; preds = %687
  %692 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %653, i64 noundef %689, i64 noundef 0) #6
  br label %700, !llvm.loop !99

693:                                              ; preds = %683
  switch i16 %685, label %700 [
    i16 -1, label %694
    i16 -2, label %698
  ]

694:                                              ; preds = %693
  %695 = load i64, ptr %6, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %653, ptr align 1 %650, i64 %695, i1 false)
  %696 = load i64, ptr %6, align 8, !tbaa !74
  %697 = getelementptr inbounds i8, ptr %653, i64 %696
  br label %700

698:                                              ; preds = %693
  %699 = add nsw i32 %651, 1
  br label %700

700:                                              ; preds = %662, %666, %693, %694, %698, %687, %691, %676, %681
  %701 = phi ptr [ %682, %681 ], [ %653, %676 ], [ %692, %691 ], [ %653, %687 ], [ %653, %666 ], [ %665, %662 ], [ %697, %694 ], [ %653, %698 ], [ %653, %693 ]
  %702 = phi i64 [ %679, %681 ], [ %652, %676 ], [ %689, %691 ], [ %652, %687 ], [ 4277009102, %698 ], [ 4277009102, %694 ], [ 4277009102, %693 ], [ 4277009102, %666 ], [ 4277009102, %662 ]
  %703 = phi i32 [ %667, %681 ], [ %667, %676 ], [ %688, %691 ], [ %688, %687 ], [ %667, %666 ], [ %651, %662 ], [ %651, %694 ], [ %699, %698 ], [ %651, %693 ]
  %704 = load i64, ptr %6, align 8, !tbaa !74
  %705 = getelementptr inbounds i8, ptr %650, i64 %704
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %706 = icmp ult ptr %705, %529
  br i1 %706, label %649, label %758

707:                                              ; preds = %645, %752
  %708 = phi ptr [ %527, %645 ], [ %756, %752 ]
  %709 = phi i32 [ 0, %645 ], [ %754, %752 ]
  %710 = phi ptr [ %621, %645 ], [ %753, %752 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %711 = ptrtoint ptr %708 to i64
  %712 = sub i64 %646, %711
  %713 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6
  %714 = xor i1 %713, true
  %715 = zext i1 %714 to i32
  %716 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %708, i64 noundef %712, ptr noundef nonnull %7, i32 noundef %715) #6
  %717 = icmp ugt i64 %716, 255
  br i1 %717, label %718, label %737

718:                                              ; preds = %707
  br i1 %622, label %719, label %723

719:                                              ; preds = %718
  %720 = load i64, ptr %7, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %710, ptr align 1 %708, i64 %720, i1 false)
  %721 = load i64, ptr %7, align 8, !tbaa !74
  %722 = getelementptr inbounds i8, ptr %710, i64 %721
  br label %752

723:                                              ; preds = %718
  %724 = add nsw i32 %709, 1
  br i1 %623, label %752, label %725

725:                                              ; preds = %723
  %726 = add i64 %716, -256
  %727 = icmp ult i64 %726, %630
  br i1 %727, label %728, label %733

728:                                              ; preds = %725
  %729 = getelementptr i16, ptr %636, i64 %716
  %730 = load i16, ptr %729, align 2, !tbaa !90
  %731 = sext i16 %730 to i64
  %732 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %710, i64 noundef %731, i64 noundef 0) #6
  br label %752

733:                                              ; preds = %725
  %734 = load i16, ptr %648, align 2, !tbaa !90
  %735 = sext i16 %734 to i64
  %736 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %710, i64 noundef %735, i64 noundef 0) #6
  br label %752

737:                                              ; preds = %707
  %738 = getelementptr inbounds i16, ptr %532, i64 %716
  %739 = load i16, ptr %738, align 2, !tbaa !90
  %740 = icmp sgt i16 %739, -1
  br i1 %740, label %741, label %745

741:                                              ; preds = %737
  %742 = zext nneg i16 %739 to i64
  %743 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %710, i64 noundef %742, i64 noundef 0) #6
  %744 = add nsw i32 %709, 1
  br label %752

745:                                              ; preds = %737
  switch i16 %739, label %752 [
    i16 -1, label %746
    i16 -2, label %750
  ]

746:                                              ; preds = %745
  %747 = load i64, ptr %7, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %710, ptr align 1 %708, i64 %747, i1 false)
  %748 = load i64, ptr %7, align 8, !tbaa !74
  %749 = getelementptr inbounds i8, ptr %710, i64 %748
  br label %752

750:                                              ; preds = %745
  %751 = add nsw i32 %709, 1
  br label %752

752:                                              ; preds = %750, %746, %745, %741, %733, %728, %723, %719
  %753 = phi ptr [ %710, %723 ], [ %732, %728 ], [ %736, %733 ], [ %722, %719 ], [ %743, %741 ], [ %749, %746 ], [ %710, %750 ], [ %710, %745 ]
  %754 = phi i32 [ %724, %723 ], [ %724, %728 ], [ %724, %733 ], [ %709, %719 ], [ %744, %741 ], [ %709, %746 ], [ %751, %750 ], [ %709, %745 ]
  %755 = load i64, ptr %7, align 8, !tbaa !74
  %756 = getelementptr inbounds i8, ptr %708, i64 %755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %757 = icmp ult ptr %756, %529
  br i1 %757, label %707, label %758, !llvm.loop !100

758:                                              ; preds = %700, %752, %638, %644
  %759 = phi ptr [ %621, %644 ], [ %621, %638 ], [ %753, %752 ], [ %701, %700 ]
  %760 = phi i32 [ 0, %644 ], [ 0, %638 ], [ %754, %752 ], [ %703, %700 ]
  br i1 %614, label %765, label %761

761:                                              ; preds = %758
  %762 = ptrtoint ptr %759 to i64
  %763 = ptrtoint ptr %621 to i64
  %764 = sub i64 %762, %763
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %621, i64 noundef %764) #6
  call void @Perl_safesysfree(ptr noundef %621) #6
  br label %771

765:                                              ; preds = %758
  store i8 0, ptr %759, align 1, !tbaa !82
  %766 = ptrtoint ptr %759 to i64
  %767 = ptrtoint ptr %621 to i64
  %768 = sub i64 %766, %767
  %769 = load ptr, ptr %0, align 8, !tbaa !71
  %770 = getelementptr inbounds %struct.xpv, ptr %769, i64 0, i32 2
  store i64 %768, ptr %770, align 8, !tbaa !72
  br label %771

771:                                              ; preds = %765, %761
  %772 = load i32, ptr %19, align 4, !tbaa !67
  %773 = or i32 %772, 536870912
  store i32 %773, ptr %19, align 4, !tbaa !67
  br label %774

774:                                              ; preds = %771, %602
  %775 = phi i32 [ %760, %771 ], [ %604, %602 ]
  %776 = load i32, ptr %19, align 4, !tbaa !67
  %777 = and i32 %776, 4194304
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %781, label %779

779:                                              ; preds = %774
  %780 = call i32 @Perl_mg_set(ptr noundef %0) #6
  br label %781

781:                                              ; preds = %774, %779
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %1083

782:                                              ; preds = %54
  br i1 %60, label %968, label %783, !prof !78

783:                                              ; preds = %782
  %784 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %785 = getelementptr inbounds %struct.op, ptr %784, i64 0, i32 6
  %786 = load i8, ptr %785, align 1, !tbaa !63
  %787 = and i8 %786, 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %788 = getelementptr inbounds %struct.svop, ptr %784, i64 0, i32 7
  %789 = load ptr, ptr %788, align 8, !tbaa !80
  %790 = getelementptr inbounds %struct.sv, ptr %789, i64 0, i32 3
  %791 = load ptr, ptr %790, align 8, !tbaa !82
  %792 = call ptr @Perl_hv_common(ptr noundef %791, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %793 = icmp eq ptr %792, null
  br i1 %793, label %806, label %794

794:                                              ; preds = %783
  %795 = load ptr, ptr %792, align 8, !tbaa !59
  %796 = getelementptr inbounds %struct.sv, ptr %795, i64 0, i32 2
  %797 = load i32, ptr %796, align 4, !tbaa !67
  %798 = and i32 %797, -2145386240
  %799 = icmp eq i32 %798, -2147483392
  br i1 %799, label %800, label %804

800:                                              ; preds = %794
  %801 = load ptr, ptr %795, align 8, !tbaa !71
  %802 = getelementptr inbounds %struct.xpvuv, ptr %801, i64 0, i32 4
  %803 = load i64, ptr %802, align 8, !tbaa !82
  br label %806

804:                                              ; preds = %794
  %805 = call i64 @Perl_sv_2uv_flags(ptr noundef %795, i32 noundef 2) #6
  br label %806

806:                                              ; preds = %804, %800, %783
  %807 = phi i64 [ %803, %800 ], [ %805, %804 ], [ 2147483647, %783 ]
  %808 = add i64 %807, 1
  %809 = load i32, ptr %19, align 4, !tbaa !67
  %810 = and i32 %809, 2098176
  %811 = icmp eq i32 %810, 1024
  br i1 %811, label %812, label %818

812:                                              ; preds = %806
  %813 = load ptr, ptr %0, align 8, !tbaa !71
  %814 = getelementptr inbounds %struct.xpv, ptr %813, i64 0, i32 2
  %815 = load i64, ptr %814, align 8, !tbaa !72
  store i64 %815, ptr %4, align 8, !tbaa !74
  %816 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %817 = load ptr, ptr %816, align 8, !tbaa !82
  br label %820

818:                                              ; preds = %806
  %819 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #6
  br label %820

820:                                              ; preds = %818, %812
  %821 = phi ptr [ %817, %812 ], [ %819, %818 ]
  %822 = load i32, ptr %19, align 4, !tbaa !67
  %823 = and i32 %822, 536870912
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %825, label %843

825:                                              ; preds = %820
  %826 = load i64, ptr %4, align 8, !tbaa !74
  %827 = getelementptr inbounds i8, ptr %821, i64 %826
  %828 = icmp sgt i64 %826, 0
  br i1 %828, label %829, label %843

829:                                              ; preds = %825, %837
  %830 = phi ptr [ %838, %837 ], [ %821, %825 ]
  %831 = phi ptr [ %832, %837 ], [ %821, %825 ]
  %832 = getelementptr inbounds i8, ptr %831, i64 1
  %833 = load i8, ptr %831, align 1, !tbaa !82
  %834 = icmp sgt i8 %833, -1
  br i1 %834, label %837, label %835

835:                                              ; preds = %829
  %836 = call ptr @Perl_bytes_to_utf8(ptr noundef %830, ptr noundef nonnull %4) #6
  br label %837

837:                                              ; preds = %835, %829
  %838 = phi ptr [ %836, %835 ], [ %830, %829 ]
  %839 = icmp ult ptr %832, %827
  %840 = select i1 %834, i1 %839, i1 false
  br i1 %840, label %829, label %841

841:                                              ; preds = %837
  %842 = icmp slt i8 %833, 0
  br label %843

843:                                              ; preds = %825, %841, %820
  %844 = phi i1 [ false, %820 ], [ false, %825 ], [ %842, %841 ]
  %845 = phi ptr [ %821, %820 ], [ %821, %825 ], [ %838, %841 ]
  %846 = load i64, ptr %4, align 8, !tbaa !74
  %847 = getelementptr inbounds i8, ptr %845, i64 %846
  %848 = call ptr @Perl_hv_common(ptr noundef %791, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %849 = icmp eq ptr %848, null
  br i1 %849, label %862, label %850

850:                                              ; preds = %843
  %851 = load ptr, ptr %848, align 8, !tbaa !59
  %852 = getelementptr inbounds %struct.sv, ptr %851, i64 0, i32 2
  %853 = load i32, ptr %852, align 4, !tbaa !67
  %854 = and i32 %853, -2145386240
  %855 = icmp eq i32 %854, -2147483392
  br i1 %855, label %856, label %860

856:                                              ; preds = %850
  %857 = load ptr, ptr %851, align 8, !tbaa !71
  %858 = getelementptr inbounds %struct.xpvuv, ptr %857, i64 0, i32 4
  %859 = load i64, ptr %858, align 8, !tbaa !82
  br label %862

860:                                              ; preds = %850
  %861 = call i64 @Perl_sv_2uv_flags(ptr noundef %851, i32 noundef 2) #6
  br label %862

862:                                              ; preds = %860, %856, %843
  %863 = phi i64 [ 0, %843 ], [ %859, %856 ], [ %861, %860 ]
  %864 = icmp ne i8 %787, 0
  %865 = load i64, ptr %4, align 8, !tbaa !74
  br i1 %864, label %866, label %873

866:                                              ; preds = %862
  %867 = mul i64 %865, 3
  %868 = add i64 %867, 13
  %869 = call ptr @Perl_safesysmalloc(i64 noundef %868) #6
  %870 = load i64, ptr %4, align 8, !tbaa !74
  %871 = mul i64 %870, 3
  %872 = getelementptr inbounds i8, ptr %869, i64 %871
  br label %875

873:                                              ; preds = %862
  %874 = getelementptr inbounds i8, ptr %845, i64 %865
  br label %875

875:                                              ; preds = %873, %866
  %876 = phi ptr [ %872, %866 ], [ %874, %873 ]
  %877 = phi ptr [ %869, %866 ], [ %845, %873 ]
  %878 = icmp sgt i64 %846, 0
  br i1 %878, label %879, label %942

879:                                              ; preds = %875, %937
  %880 = phi ptr [ %920, %937 ], [ %845, %875 ]
  %881 = phi ptr [ %940, %937 ], [ %877, %875 ]
  %882 = phi ptr [ %939, %937 ], [ %877, %875 ]
  %883 = phi ptr [ %938, %937 ], [ %876, %875 ]
  %884 = phi i32 [ %918, %937 ], [ 0, %875 ]
  %885 = call i64 @Perl_swash_fetch(ptr noundef %789, ptr noundef %880, i1 noundef zeroext true) #6
  %886 = icmp ult i64 %885, %807
  br i1 %886, label %887, label %896

887:                                              ; preds = %879
  %888 = load i8, ptr %880, align 1, !tbaa !82
  %889 = zext i8 %888 to i64
  %890 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %889
  %891 = load i8, ptr %890, align 1, !tbaa !82
  %892 = zext i8 %891 to i64
  %893 = getelementptr inbounds i8, ptr %880, i64 %892
  %894 = add nsw i32 %884, 1
  %895 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %881, i64 noundef %885, i64 noundef 0) #6
  br label %917

896:                                              ; preds = %879
  %897 = icmp eq i64 %885, %807
  br i1 %897, label %898, label %906

898:                                              ; preds = %896
  %899 = load i8, ptr %880, align 1, !tbaa !82
  %900 = zext i8 %899 to i64
  %901 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %900
  %902 = load i8, ptr %901, align 1, !tbaa !82
  %903 = zext i8 %902 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %881, ptr nonnull align 1 %880, i64 %903, i1 false)
  %904 = getelementptr inbounds i8, ptr %881, i64 %903
  %905 = getelementptr inbounds i8, ptr %880, i64 %903
  br label %917

906:                                              ; preds = %896
  %907 = icmp eq i64 %885, %808
  %908 = load i8, ptr %880, align 1, !tbaa !82
  %909 = zext i8 %908 to i64
  %910 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !82
  %912 = zext i8 %911 to i64
  %913 = getelementptr inbounds i8, ptr %880, i64 %912
  br i1 %907, label %914, label %917

914:                                              ; preds = %906
  %915 = add nsw i32 %884, 1
  %916 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %881, i64 noundef %863, i64 noundef 0) #6
  br label %917

917:                                              ; preds = %906, %914, %898, %887
  %918 = phi i32 [ %894, %887 ], [ %884, %898 ], [ %915, %914 ], [ %884, %906 ]
  %919 = phi ptr [ %895, %887 ], [ %904, %898 ], [ %916, %914 ], [ %881, %906 ]
  %920 = phi ptr [ %893, %887 ], [ %905, %898 ], [ %913, %914 ], [ %913, %906 ]
  %921 = icmp ugt ptr %919, %883
  br i1 %921, label %922, label %937

922:                                              ; preds = %917
  %923 = ptrtoint ptr %919 to i64
  %924 = ptrtoint ptr %882 to i64
  %925 = sub i64 %923, %924
  %926 = ptrtoint ptr %883 to i64
  %927 = sub i64 %926, %924
  %928 = load i64, ptr %4, align 8, !tbaa !74
  %929 = add i64 %928, %927
  br i1 %864, label %931, label %930

930:                                              ; preds = %922
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i32 noundef 380) #6
  br label %931

931:                                              ; preds = %930, %922
  %932 = add i64 %929, 26
  %933 = call ptr @Perl_safesysrealloc(ptr noundef %882, i64 noundef %932) #6
  %934 = getelementptr inbounds i8, ptr %933, i64 %925
  %935 = getelementptr i8, ptr %933, i64 %929
  %936 = getelementptr i8, ptr %935, i64 13
  br label %937

937:                                              ; preds = %931, %917
  %938 = phi ptr [ %936, %931 ], [ %883, %917 ]
  %939 = phi ptr [ %933, %931 ], [ %882, %917 ]
  %940 = phi ptr [ %934, %931 ], [ %919, %917 ]
  %941 = icmp ult ptr %920, %847
  br i1 %941, label %879, label %942, !llvm.loop !101

942:                                              ; preds = %937, %875
  %943 = phi i32 [ 0, %875 ], [ %918, %937 ]
  %944 = phi ptr [ %877, %875 ], [ %939, %937 ]
  %945 = phi ptr [ %877, %875 ], [ %940, %937 ]
  %946 = or i1 %864, %844
  br i1 %946, label %947, label %953

947:                                              ; preds = %942
  %948 = ptrtoint ptr %945 to i64
  %949 = ptrtoint ptr %944 to i64
  %950 = sub i64 %948, %949
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %944, i64 noundef %950) #6
  call void @Perl_safesysfree(ptr noundef %944) #6
  %951 = and i1 %864, %844
  br i1 %951, label %952, label %959

952:                                              ; preds = %947
  call void @Perl_safesysfree(ptr noundef %845) #6
  br label %959

953:                                              ; preds = %942
  store i8 0, ptr %945, align 1, !tbaa !82
  %954 = ptrtoint ptr %945 to i64
  %955 = ptrtoint ptr %944 to i64
  %956 = sub i64 %954, %955
  %957 = load ptr, ptr %0, align 8, !tbaa !71
  %958 = getelementptr inbounds %struct.xpv, ptr %957, i64 0, i32 2
  store i64 %956, ptr %958, align 8, !tbaa !72
  br label %959

959:                                              ; preds = %953, %952, %947
  %960 = load i32, ptr %19, align 4, !tbaa !67
  %961 = and i32 %960, 4194304
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %965, label %963

963:                                              ; preds = %959
  %964 = call i32 @Perl_mg_set(ptr noundef %0) #6
  br label %965

965:                                              ; preds = %959, %963
  %966 = load i32, ptr %19, align 4, !tbaa !67
  %967 = or i32 %966, 536870912
  store i32 %967, ptr %19, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %1083

968:                                              ; preds = %782
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %969 = and i32 %57, 2098176
  %970 = icmp eq i32 %969, 1024
  br i1 %970, label %971, label %977, !prof !78

971:                                              ; preds = %968
  %972 = load ptr, ptr %0, align 8, !tbaa !71
  %973 = getelementptr inbounds %struct.xpv, ptr %972, i64 0, i32 2
  %974 = load i64, ptr %973, align 8, !tbaa !72
  store i64 %974, ptr %2, align 8, !tbaa !74
  %975 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %976 = load ptr, ptr %975, align 8, !tbaa !82
  br label %979

977:                                              ; preds = %968
  %978 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #6
  br label %979

979:                                              ; preds = %977, %971
  %980 = phi ptr [ %976, %971 ], [ %978, %977 ]
  %981 = load i64, ptr %2, align 8, !tbaa !74
  %982 = getelementptr inbounds i8, ptr %980, i64 %981
  %983 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %984 = getelementptr inbounds %struct.pvop, ptr %983, i64 0, i32 7
  %985 = load ptr, ptr %984, align 8, !tbaa !86
  %986 = icmp eq ptr %985, null
  br i1 %986, label %987, label %988, !prof !102

987:                                              ; preds = %979
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i32 noundef 42) #6
  br label %988

988:                                              ; preds = %987, %979
  %989 = load i32, ptr %19, align 4, !tbaa !67
  %990 = and i32 %989, 536870912
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %1014, !prof !78

992:                                              ; preds = %988
  %993 = icmp sgt i64 %981, 0
  br i1 %993, label %994, label %1009, !prof !103

994:                                              ; preds = %992, %1005
  %995 = phi i32 [ %1006, %1005 ], [ 0, %992 ]
  %996 = phi ptr [ %1007, %1005 ], [ %980, %992 ]
  %997 = load i8, ptr %996, align 1, !tbaa !82
  %998 = zext i8 %997 to i64
  %999 = getelementptr inbounds i16, ptr %985, i64 %998
  %1000 = load i16, ptr %999, align 2, !tbaa !90
  %1001 = icmp sgt i16 %1000, -1
  br i1 %1001, label %1002, label %1005, !prof !104

1002:                                             ; preds = %994
  %1003 = add nsw i32 %995, 1
  %1004 = trunc i16 %1000 to i8
  store i8 %1004, ptr %996, align 1, !tbaa !82
  br label %1005

1005:                                             ; preds = %1002, %994
  %1006 = phi i32 [ %1003, %1002 ], [ %995, %994 ]
  %1007 = getelementptr inbounds i8, ptr %996, i64 1
  %1008 = icmp ult ptr %1007, %982
  br i1 %1008, label %994, label %1009, !prof !105, !llvm.loop !106

1009:                                             ; preds = %1005, %992
  %1010 = phi i32 [ 0, %992 ], [ %1006, %1005 ]
  %1011 = load i32, ptr %19, align 4, !tbaa !67
  %1012 = and i32 %1011, 4194304
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1081, label %1078, !prof !78

1014:                                             ; preds = %988
  %1015 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %1016 = getelementptr inbounds %struct.op, ptr %1015, i64 0, i32 6
  %1017 = load i8, ptr %1016, align 1, !tbaa !63
  %1018 = and i8 %1017, 64
  %1019 = icmp eq i8 %1018, 0
  br i1 %1019, label %1025, label %1020

1020:                                             ; preds = %1014
  %1021 = load i64, ptr %2, align 8, !tbaa !74
  %1022 = shl i64 %1021, 1
  %1023 = or disjoint i64 %1022, 1
  %1024 = call ptr @Perl_safesysmalloc(i64 noundef %1023) #6
  br label %1025

1025:                                             ; preds = %1020, %1014
  %1026 = phi ptr [ %1024, %1020 ], [ %980, %1014 ]
  %1027 = icmp sgt i64 %981, 0
  br i1 %1027, label %1028, label %1060

1028:                                             ; preds = %1025
  %1029 = ptrtoint ptr %982 to i64
  br label %1030

1030:                                             ; preds = %1028, %1054
  %1031 = phi i32 [ 0, %1028 ], [ %1057, %1054 ]
  %1032 = phi ptr [ %980, %1028 ], [ %1058, %1054 ]
  %1033 = phi ptr [ %1026, %1028 ], [ %1055, %1054 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %1034 = ptrtoint ptr %1032 to i64
  %1035 = sub i64 %1029, %1034
  %1036 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6
  %1037 = xor i1 %1036, true
  %1038 = zext i1 %1037 to i32
  %1039 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1032, i64 noundef %1035, ptr noundef nonnull %3, i32 noundef %1038) #6
  %1040 = icmp ult i64 %1039, 256
  br i1 %1040, label %1041, label %1050

1041:                                             ; preds = %1030
  %1042 = getelementptr inbounds i16, ptr %985, i64 %1039
  %1043 = load i16, ptr %1042, align 2, !tbaa !90
  %1044 = icmp sgt i16 %1043, -1
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1041
  %1046 = zext nneg i16 %1043 to i64
  %1047 = add nsw i32 %1031, 1
  %1048 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1033, i64 noundef %1046, i64 noundef 0) #6
  %1049 = load i64, ptr %3, align 8, !tbaa !74
  br label %1054

1050:                                             ; preds = %1041, %1030
  %1051 = load i64, ptr %3, align 8, !tbaa !74
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %1033, ptr align 1 %1032, i64 %1051, i1 false)
  %1052 = load i64, ptr %3, align 8, !tbaa !74
  %1053 = getelementptr inbounds i8, ptr %1033, i64 %1052
  br label %1054

1054:                                             ; preds = %1050, %1045
  %1055 = phi ptr [ %1048, %1045 ], [ %1053, %1050 ]
  %1056 = phi i64 [ %1049, %1045 ], [ %1052, %1050 ]
  %1057 = phi i32 [ %1047, %1045 ], [ %1031, %1050 ]
  %1058 = getelementptr inbounds i8, ptr %1032, i64 %1056
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %1059 = icmp ult ptr %1058, %982
  br i1 %1059, label %1030, label %1060, !llvm.loop !107

1060:                                             ; preds = %1054, %1025
  %1061 = phi ptr [ %1026, %1025 ], [ %1055, %1054 ]
  %1062 = phi i32 [ 0, %1025 ], [ %1057, %1054 ]
  br i1 %1019, label %1067, label %1063

1063:                                             ; preds = %1060
  %1064 = ptrtoint ptr %1061 to i64
  %1065 = ptrtoint ptr %1026 to i64
  %1066 = sub i64 %1064, %1065
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %1026, i64 noundef %1066) #6
  call void @Perl_safesysfree(ptr noundef %1026) #6
  br label %1073

1067:                                             ; preds = %1060
  store i8 0, ptr %1061, align 1, !tbaa !82
  %1068 = ptrtoint ptr %1061 to i64
  %1069 = ptrtoint ptr %1026 to i64
  %1070 = sub i64 %1068, %1069
  %1071 = load ptr, ptr %0, align 8, !tbaa !71
  %1072 = getelementptr inbounds %struct.xpv, ptr %1071, i64 0, i32 2
  store i64 %1070, ptr %1072, align 8, !tbaa !72
  br label %1073

1073:                                             ; preds = %1067, %1063
  %1074 = load i32, ptr %19, align 4, !tbaa !67
  %1075 = or i32 %1074, 536870912
  store i32 %1075, ptr %19, align 4, !tbaa !67
  %1076 = and i32 %1074, 4194304
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1081, label %1078

1078:                                             ; preds = %1073, %1009
  %1079 = phi i32 [ %1010, %1009 ], [ %1062, %1073 ]
  %1080 = call i32 @Perl_mg_set(ptr noundef %0) #6
  br label %1081

1081:                                             ; preds = %1078, %1009, %1073
  %1082 = phi i32 [ %1010, %1009 ], [ %1062, %1073 ], [ %1079, %1078 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  br label %1083

1083:                                             ; preds = %965, %1081, %514, %781, %148, %218, %37
  %1084 = phi i32 [ 0, %37 ], [ %146, %148 ], [ %219, %218 ], [ %492, %514 ], [ %775, %781 ], [ %943, %965 ], [ %1082, %1081 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  ret i32 %1084
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_join(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !108 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %2 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  br i1 %17, label %18, label %24, !prof !109

18:                                               ; preds = %4
  %19 = load ptr, ptr %1, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !72
  store i64 %21, ptr %5, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  br label %26

24:                                               ; preds = %4
  %25 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 34) #6
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = getelementptr inbounds ptr, ptr %2, i64 1
  %29 = icmp sgt i32 %13, 0
  br i1 %29, label %30, label %35, !prof !110

30:                                               ; preds = %26
  %31 = load i64, ptr %5, align 8, !tbaa !74
  %32 = add nuw nsw i64 %12, 4294967295
  %33 = and i64 %32, 4294967295
  %34 = mul i64 %31, %33
  br label %35

35:                                               ; preds = %26, %30
  %36 = phi i64 [ %34, %30 ], [ 0, %26 ]
  %37 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = and i32 %38, 255
  %40 = icmp ugt i32 %39, 2
  br i1 %40, label %42, label %41, !prof !111

41:                                               ; preds = %35
  call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 3) #6
  br label %42

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %0, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !82
  %46 = shl i64 %11, 29
  %47 = ashr i64 %46, 32
  %48 = add i64 %36, %47
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %120, !prof !112

50:                                               ; preds = %42
  %51 = icmp sgt i32 %13, 0
  br i1 %51, label %52, label %106, !prof !113

52:                                               ; preds = %50, %102
  %53 = phi i32 [ %56, %102 ], [ %13, %50 ]
  %54 = phi ptr [ %104, %102 ], [ %28, %50 ]
  %55 = phi i64 [ %103, %102 ], [ %36, %50 ]
  %56 = add nsw i32 %53, -1
  %57 = load ptr, ptr %54, align 8, !tbaa !59
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59, !prof !114

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !67
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %102, !prof !115

64:                                               ; preds = %59
  %65 = and i32 %61, 2048
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67, !prof !116

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !67
  %72 = and i32 %71, 1048576
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %69, align 8, !tbaa !71
  %76 = load ptr, ptr %75, align 8, !tbaa !117
  %77 = getelementptr inbounds %struct.hv, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !119
  %79 = and i32 %78, 268435456
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %74, %67, %64
  %82 = and i32 %61, 65280
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %61, 255
  %85 = icmp eq i32 %84, 8
  %86 = or i1 %83, %85
  %87 = and i32 %61, 16777471
  %88 = icmp eq i32 %87, 16777226
  %89 = or i1 %88, %86
  br i1 %89, label %90, label %102, !prof !116

90:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %91 = and i32 %61, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !121

93:                                               ; preds = %90
  %94 = load ptr, ptr %57, align 8, !tbaa !71
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !72
  store i64 %96, ptr %6, align 8, !tbaa !74
  br label %99

97:                                               ; preds = %90
  %98 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %57, ptr noundef nonnull %6, i32 noundef 34) #6
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i64, ptr %6, align 8, !tbaa !74
  %101 = add i64 %100, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %102

102:                                              ; preds = %74, %81, %99, %59, %52
  %103 = phi i64 [ %55, %59 ], [ %101, %99 ], [ %55, %52 ], [ %55, %81 ], [ %55, %74 ]
  %104 = getelementptr inbounds ptr, ptr %54, i64 1
  %105 = icmp sgt i32 %53, 1
  br i1 %105, label %52, label %106, !prof !122, !llvm.loop !123

106:                                              ; preds = %102, %50
  %107 = phi i64 [ %36, %50 ], [ %103, %102 ]
  %108 = load i32, ptr %37, align 4, !tbaa !67
  %109 = and i32 %108, 268435456
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117, !prof !124

111:                                              ; preds = %106
  %112 = load ptr, ptr %0, align 8, !tbaa !71
  %113 = getelementptr inbounds %struct.xpv, ptr %112, i64 0, i32 3
  %114 = load i64, ptr %113, align 8, !tbaa !82
  %115 = add i64 %107, 1
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %120, !prof !124

117:                                              ; preds = %111, %106
  %118 = add i64 %107, 1
  %119 = call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %118) #6
  br label %120

120:                                              ; preds = %117, %111, %42
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 0) #6
  %121 = load i32, ptr %37, align 4, !tbaa !67
  %122 = and i32 %121, -536870913
  store i32 %122, ptr %37, align 4, !tbaa !67
  %123 = load i8, ptr @PL_tainting, align 1, !tbaa !125, !range !127, !noundef !128
  %124 = icmp eq i8 %123, 0
  %125 = and i32 %121, 14680064
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %124, i1 true, i1 %126, !prof !109
  br i1 %127, label %129, label %128, !prof !109

128:                                              ; preds = %120
  call void @Perl_sv_untaint(ptr noundef nonnull %0) #6
  br label %129

129:                                              ; preds = %128, %120
  %130 = add nsw i32 %13, -1
  br i1 %29, label %131, label %137, !prof !110

131:                                              ; preds = %129
  %132 = load ptr, ptr %28, align 8, !tbaa !59
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134, !prof !129

134:                                              ; preds = %131
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %0, ptr noundef nonnull %132, i32 noundef 2) #6
  br label %135

135:                                              ; preds = %134, %131
  %136 = getelementptr inbounds ptr, ptr %2, i64 2
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi ptr [ %136, %135 ], [ %28, %129 ]
  %139 = load i64, ptr %5, align 8, !tbaa !74
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143, !prof !130

141:                                              ; preds = %137
  %142 = icmp sgt i32 %13, 1
  br i1 %142, label %194, label %230, !prof !131

143:                                              ; preds = %137
  %144 = load i32, ptr %14, align 4, !tbaa !67
  %145 = and i32 %144, 536870912
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147, !prof !132

147:                                              ; preds = %143
  %148 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %149 = getelementptr inbounds %struct.cop, ptr %148, i64 0, i32 10
  %150 = load i32, ptr %149, align 8, !tbaa !133
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 32768, i32 16384
  br label %154

154:                                              ; preds = %147, %143
  %155 = phi i32 [ 16384, %143 ], [ %153, %147 ]
  %156 = icmp sgt i32 %13, 1
  br i1 %156, label %157, label %230, !prof !135

157:                                              ; preds = %154, %188
  %158 = phi ptr [ %192, %188 ], [ %138, %154 ]
  %159 = phi i32 [ %191, %188 ], [ %130, %154 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %160 = load i64, ptr %5, align 8, !tbaa !74
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %27, i64 noundef %160, i32 noundef %155) #6
  %161 = load ptr, ptr %158, align 8, !tbaa !59
  %162 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !67
  %164 = and i32 %163, 2098176
  %165 = icmp eq i32 %164, 1024
  br i1 %165, label %166, label %172, !prof !136

166:                                              ; preds = %157
  %167 = load ptr, ptr %161, align 8, !tbaa !71
  %168 = getelementptr inbounds %struct.xpv, ptr %167, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !72
  store i64 %169, ptr %7, align 8, !tbaa !74
  %170 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !82
  br label %174

172:                                              ; preds = %157
  %173 = call ptr @Perl_sv_2pv_flags(ptr noundef %161, ptr noundef nonnull %7, i32 noundef 34) #6
  br label %174

174:                                              ; preds = %172, %166
  %175 = phi ptr [ %171, %166 ], [ %173, %172 ]
  %176 = load i64, ptr %7, align 8, !tbaa !74
  %177 = load ptr, ptr %158, align 8, !tbaa !59
  %178 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !67
  %180 = and i32 %179, 536870912
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %188, label %182, !prof !136

182:                                              ; preds = %174
  %183 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %184 = getelementptr inbounds %struct.cop, ptr %183, i64 0, i32 10
  %185 = load i32, ptr %184, align 8, !tbaa !133
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br label %188

188:                                              ; preds = %182, %174
  %189 = phi i1 [ false, %174 ], [ %187, %182 ]
  %190 = select i1 %189, i32 32768, i32 16384, !prof !137
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %175, i64 noundef %176, i32 noundef %190) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %191 = add nsw i32 %159, -1
  %192 = getelementptr inbounds ptr, ptr %158, i64 1
  %193 = icmp sgt i32 %159, 1
  br i1 %193, label %157, label %230, !prof !137, !llvm.loop !138

194:                                              ; preds = %141, %224
  %195 = phi ptr [ %228, %224 ], [ %138, %141 ]
  %196 = phi i32 [ %227, %224 ], [ %130, %141 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %197 = load ptr, ptr %195, align 8, !tbaa !59
  %198 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !67
  %200 = and i32 %199, 2098176
  %201 = icmp eq i32 %200, 1024
  br i1 %201, label %202, label %208, !prof !139

202:                                              ; preds = %194
  %203 = load ptr, ptr %197, align 8, !tbaa !71
  %204 = getelementptr inbounds %struct.xpv, ptr %203, i64 0, i32 2
  %205 = load i64, ptr %204, align 8, !tbaa !72
  store i64 %205, ptr %8, align 8, !tbaa !74
  %206 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !82
  br label %210

208:                                              ; preds = %194
  %209 = call ptr @Perl_sv_2pv_flags(ptr noundef %197, ptr noundef nonnull %8, i32 noundef 34) #6
  br label %210

210:                                              ; preds = %208, %202
  %211 = phi ptr [ %207, %202 ], [ %209, %208 ]
  %212 = load i64, ptr %8, align 8, !tbaa !74
  %213 = load ptr, ptr %195, align 8, !tbaa !59
  %214 = getelementptr inbounds %struct.sv, ptr %213, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !67
  %216 = and i32 %215, 536870912
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218, !prof !140

218:                                              ; preds = %210
  %219 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %220 = getelementptr inbounds %struct.cop, ptr %219, i64 0, i32 10
  %221 = load i32, ptr %220, align 8, !tbaa !133
  %222 = and i32 %221, 8
  %223 = icmp eq i32 %222, 0
  br label %224

224:                                              ; preds = %218, %210
  %225 = phi i1 [ false, %210 ], [ %223, %218 ]
  %226 = select i1 %225, i32 32768, i32 16384, !prof !141
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %211, i64 noundef %212, i32 noundef %226) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %227 = add nsw i32 %196, -1
  %228 = getelementptr inbounds ptr, ptr %195, i64 1
  %229 = icmp sgt i32 %196, 1
  br i1 %229, label %194, label %230, !prof !142, !llvm.loop !143

230:                                              ; preds = %188, %224, %154, %141
  %231 = load i32, ptr %37, align 4, !tbaa !67
  %232 = and i32 %231, 4194304
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234, !prof !109

234:                                              ; preds = %230
  %235 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %236

236:                                              ; preds = %230, %234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_sprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !144 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = load ptr, ptr %2, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17, !prof !145

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !72
  store i64 %14, ptr %4, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  br label %19

17:                                               ; preds = %3
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 34) #6
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !tbaa !125
  %21 = load ptr, ptr %2, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = and i32 %23, 14680064
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26, !prof !145

26:                                               ; preds = %19
  %27 = call zeroext i1 @Perl_sv_tainted(ptr noundef %21) #6
  %28 = load i8, ptr @PL_tainting, align 1, !range !127
  %29 = icmp ne i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 511
  %38 = icmp ult i16 %37, 396
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = icmp eq i16 %37, 237
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = zext nneg i16 %37 to i64
  %43 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %31, %34, %41, %39
  %46 = phi ptr [ %44, %41 ], [ @.str.1, %39 ], [ @.str.2, %34 ], [ @.str.2, %31 ]
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %46) #6
  br label %47

47:                                               ; preds = %45, %26, %19
  %48 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !67
  %50 = and i32 %49, -536870913
  store i32 %50, ptr %48, align 4, !tbaa !67
  %51 = load ptr, ptr %2, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !67
  %54 = and i32 %53, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56, !prof !145

56:                                               ; preds = %47
  %57 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.cop, ptr %57, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !133
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = or i32 %49, 536870912
  store i32 %63, ptr %48, align 4, !tbaa !67
  br label %64

64:                                               ; preds = %62, %56, %47
  %65 = load i64, ptr %4, align 8, !tbaa !74
  %66 = getelementptr inbounds ptr, ptr %2, i64 1
  %67 = add nsw i32 %1, -1
  call void @Perl_sv_vsetpvfn(ptr noundef %0, ptr noundef %20, i64 noundef %65, ptr noundef null, ptr noundef nonnull %66, i32 noundef %67, ptr noundef nonnull %5) #6
  %68 = load i32, ptr %48, align 4, !tbaa !67
  %69 = and i32 %68, 4194304
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !145

71:                                               ; preds = %64
  %72 = call i32 @Perl_mg_set(ptr noundef %0) #6
  br label %73

73:                                               ; preds = %64, %71
  %74 = load i8, ptr %5, align 1, !tbaa !125, !range !127, !noundef !128
  %75 = icmp eq i8 %74, 0
  %76 = load i8, ptr @PL_tainting, align 1, !range !127
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %75, i1 true, i1 %77, !prof !145
  br i1 %78, label %80, label %79, !prof !145

79:                                               ; preds = %73
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #6
  br label %80

80:                                               ; preds = %79, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret void
}

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_vsetpvfn(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_do_vecget(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !146 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !147
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18, !prof !148

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !63
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15, !prof !149

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_is_lvalue_sub() #6
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %10, %15, %3
  %19 = phi i1 [ true, %3 ], [ false, %10 ], [ %17, %15 ]
  %20 = select i1 %19, i32 2048, i32 0, !prof !150
  %21 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %31, !prof !151

25:                                               ; preds = %18
  %26 = load ptr, ptr %0, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !72
  store i64 %28, ptr %4, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  br label %34

31:                                               ; preds = %18
  %32 = or disjoint i32 %20, 2
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %32) #6
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %30, %25 ], [ %33, %31 ]
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str, ptr %35, !prof !152
  %38 = icmp slt i64 %1, 0
  br i1 %38, label %355, label %39, !prof !152

39:                                               ; preds = %34
  %40 = icmp slt i32 %2, 1
  br i1 %40, label %45, label %41, !prof !152

41:                                               ; preds = %39
  %42 = add nuw i32 %2, 2147483647
  %43 = and i32 %42, %2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !151

45:                                               ; preds = %41, %39
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #6
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr %21, align 4, !tbaa !67
  %48 = and i32 %47, 536870912
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50, !prof !151

50:                                               ; preds = %46
  %51 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %0, i1 noundef zeroext true) #6
  %52 = load i32, ptr %21, align 4, !tbaa !67
  %53 = and i32 %52, 2098176
  %54 = icmp eq i32 %53, 1024
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load ptr, ptr %0, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.xpv, ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !72
  store i64 %58, ptr %4, align 8, !tbaa !74
  %59 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !82
  br label %63

61:                                               ; preds = %50
  %62 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %20) #6
  br label %63

63:                                               ; preds = %55, %61, %46
  %64 = phi ptr [ %37, %46 ], [ %60, %55 ], [ %62, %61 ]
  %65 = icmp slt i32 %2, 8
  br i1 %65, label %66, label %74, !prof !151

66:                                               ; preds = %63
  %67 = and i64 %1, 7
  %68 = sext i32 %2 to i64
  %69 = mul nsw i64 %67, %68
  %70 = srem i64 %69, 8
  %71 = sdiv i32 8, %2
  %72 = sext i32 %71 to i64
  %73 = sdiv i64 %1, %72
  br label %80

74:                                               ; preds = %63
  %75 = icmp eq i32 %2, 8
  br i1 %75, label %80, label %76

76:                                               ; preds = %74
  %77 = lshr i32 %2, 3
  %78 = zext nneg i32 %77 to i64
  %79 = mul nsw i64 %78, %1
  br label %80

80:                                               ; preds = %74, %76, %66
  %81 = phi i64 [ %73, %66 ], [ %79, %76 ], [ %1, %74 ]
  %82 = phi i64 [ %70, %66 ], [ 0, %76 ], [ 0, %74 ]
  %83 = sext i32 %2 to i64
  %84 = add nsw i64 %83, 7
  %85 = add nsw i64 %84, %82
  %86 = lshr i64 %85, 3
  %87 = add i64 %86, %81
  %88 = load i64, ptr %4, align 8, !tbaa !74
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %259, !prof !153

90:                                               ; preds = %80
  %91 = icmp slt i32 %2, 9
  br i1 %91, label %355, label %92, !prof !154

92:                                               ; preds = %90
  switch i32 %2, label %355 [
    i32 16, label %93
    i32 32, label %100
    i32 64, label %128
  ]

93:                                               ; preds = %92
  %94 = icmp ult i64 %81, %88
  br i1 %94, label %95, label %355

95:                                               ; preds = %93
  %96 = getelementptr inbounds i8, ptr %64, i64 %81
  %97 = load i8, ptr %96, align 1, !tbaa !82
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  br label %355

100:                                              ; preds = %92
  %101 = icmp ult i64 %81, %88
  br i1 %101, label %102, label %355

102:                                              ; preds = %100
  %103 = add i64 %81, 1
  %104 = icmp ult i64 %103, %88
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, ptr %64, i64 %81
  %107 = load i8, ptr %106, align 1, !tbaa !82
  %108 = zext i8 %107 to i64
  %109 = shl nuw nsw i64 %108, 24
  br label %355

110:                                              ; preds = %102
  %111 = add i64 %81, 2
  %112 = icmp ult i64 %111, %88
  %113 = getelementptr inbounds i8, ptr %64, i64 %81
  %114 = load i8, ptr %113, align 1, !tbaa !82
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 24
  %117 = getelementptr inbounds i8, ptr %64, i64 %103
  %118 = load i8, ptr %117, align 1, !tbaa !82
  %119 = zext i8 %118 to i64
  %120 = shl nuw nsw i64 %119, 16
  %121 = or disjoint i64 %120, %116
  br i1 %112, label %122, label %355

122:                                              ; preds = %110
  %123 = getelementptr inbounds i8, ptr %64, i64 %111
  %124 = load i8, ptr %123, align 1, !tbaa !82
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = or disjoint i64 %121, %126
  br label %355

128:                                              ; preds = %92
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6
  %129 = load i64, ptr %4, align 8, !tbaa !74
  %130 = icmp ult i64 %81, %129
  br i1 %130, label %131, label %355

131:                                              ; preds = %128
  %132 = add i64 %81, 1
  %133 = icmp ult i64 %132, %129
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds i8, ptr %64, i64 %81
  %136 = load i8, ptr %135, align 1, !tbaa !82
  %137 = zext i8 %136 to i64
  %138 = shl nuw i64 %137, 56
  br label %355

139:                                              ; preds = %131
  %140 = add i64 %81, 2
  %141 = icmp ult i64 %140, %129
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, ptr %64, i64 %81
  %144 = load i8, ptr %143, align 1, !tbaa !82
  %145 = zext i8 %144 to i64
  %146 = shl nuw i64 %145, 56
  %147 = getelementptr inbounds i8, ptr %64, i64 %132
  %148 = load i8, ptr %147, align 1, !tbaa !82
  %149 = zext i8 %148 to i64
  %150 = shl nuw nsw i64 %149, 48
  %151 = or disjoint i64 %150, %146
  br label %355

152:                                              ; preds = %139
  %153 = add i64 %81, 3
  %154 = icmp ult i64 %153, %129
  br i1 %154, label %170, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, ptr %64, i64 %81
  %157 = load i8, ptr %156, align 1, !tbaa !82
  %158 = zext i8 %157 to i64
  %159 = shl nuw i64 %158, 56
  %160 = getelementptr inbounds i8, ptr %64, i64 %132
  %161 = load i8, ptr %160, align 1, !tbaa !82
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 48
  %164 = or disjoint i64 %163, %159
  %165 = getelementptr inbounds i8, ptr %64, i64 %140
  %166 = load i8, ptr %165, align 1, !tbaa !82
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 40
  %169 = or disjoint i64 %164, %168
  br label %355

170:                                              ; preds = %152
  %171 = add i64 %81, 4
  %172 = icmp ult i64 %171, %129
  br i1 %172, label %193, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %64, i64 %81
  %175 = load i8, ptr %174, align 1, !tbaa !82
  %176 = zext i8 %175 to i64
  %177 = shl nuw i64 %176, 56
  %178 = getelementptr inbounds i8, ptr %64, i64 %132
  %179 = load i8, ptr %178, align 1, !tbaa !82
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 48
  %182 = or disjoint i64 %181, %177
  %183 = getelementptr inbounds i8, ptr %64, i64 %140
  %184 = load i8, ptr %183, align 1, !tbaa !82
  %185 = zext i8 %184 to i64
  %186 = shl nuw nsw i64 %185, 40
  %187 = or disjoint i64 %182, %186
  %188 = getelementptr inbounds i8, ptr %64, i64 %153
  %189 = load i8, ptr %188, align 1, !tbaa !82
  %190 = zext i8 %189 to i64
  %191 = shl nuw nsw i64 %190, 32
  %192 = or disjoint i64 %187, %191
  br label %355

193:                                              ; preds = %170
  %194 = add i64 %81, 5
  %195 = icmp ult i64 %194, %129
  br i1 %195, label %221, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, ptr %64, i64 %81
  %198 = load i8, ptr %197, align 1, !tbaa !82
  %199 = zext i8 %198 to i64
  %200 = shl nuw i64 %199, 56
  %201 = getelementptr inbounds i8, ptr %64, i64 %132
  %202 = load i8, ptr %201, align 1, !tbaa !82
  %203 = zext i8 %202 to i64
  %204 = shl nuw nsw i64 %203, 48
  %205 = or disjoint i64 %204, %200
  %206 = getelementptr inbounds i8, ptr %64, i64 %140
  %207 = load i8, ptr %206, align 1, !tbaa !82
  %208 = zext i8 %207 to i64
  %209 = shl nuw nsw i64 %208, 40
  %210 = or disjoint i64 %205, %209
  %211 = getelementptr inbounds i8, ptr %64, i64 %153
  %212 = load i8, ptr %211, align 1, !tbaa !82
  %213 = zext i8 %212 to i64
  %214 = shl nuw nsw i64 %213, 32
  %215 = or disjoint i64 %210, %214
  %216 = getelementptr inbounds i8, ptr %64, i64 %171
  %217 = load i8, ptr %216, align 1, !tbaa !82
  %218 = zext i8 %217 to i64
  %219 = shl nuw nsw i64 %218, 24
  %220 = or disjoint i64 %215, %219
  br label %355

221:                                              ; preds = %193
  %222 = add i64 %81, 6
  %223 = icmp ult i64 %222, %129
  %224 = getelementptr inbounds i8, ptr %64, i64 %81
  %225 = load i8, ptr %224, align 1, !tbaa !82
  %226 = zext i8 %225 to i64
  %227 = shl nuw i64 %226, 56
  %228 = getelementptr inbounds i8, ptr %64, i64 %132
  %229 = load i8, ptr %228, align 1, !tbaa !82
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, 48
  %232 = or disjoint i64 %231, %227
  %233 = getelementptr inbounds i8, ptr %64, i64 %140
  %234 = load i8, ptr %233, align 1, !tbaa !82
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, 40
  %237 = or disjoint i64 %232, %236
  %238 = getelementptr inbounds i8, ptr %64, i64 %153
  %239 = load i8, ptr %238, align 1, !tbaa !82
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 32
  %242 = or disjoint i64 %237, %241
  %243 = getelementptr inbounds i8, ptr %64, i64 %171
  %244 = load i8, ptr %243, align 1, !tbaa !82
  %245 = zext i8 %244 to i64
  %246 = shl nuw nsw i64 %245, 24
  %247 = or disjoint i64 %242, %246
  %248 = getelementptr inbounds i8, ptr %64, i64 %194
  %249 = load i8, ptr %248, align 1, !tbaa !82
  %250 = zext i8 %249 to i64
  %251 = shl nuw nsw i64 %250, 16
  %252 = or disjoint i64 %247, %251
  br i1 %223, label %253, label %355

253:                                              ; preds = %221
  %254 = getelementptr inbounds i8, ptr %64, i64 %222
  %255 = load i8, ptr %254, align 1, !tbaa !82
  %256 = zext i8 %255 to i64
  %257 = shl nuw nsw i64 %256, 8
  %258 = or disjoint i64 %252, %257
  br label %355

259:                                              ; preds = %80
  br i1 %65, label %260, label %270, !prof !155

260:                                              ; preds = %259
  %261 = getelementptr inbounds i8, ptr %64, i64 %81
  %262 = load i8, ptr %261, align 1, !tbaa !82
  %263 = zext i8 %262 to i32
  %264 = trunc i64 %82 to i32
  %265 = lshr i32 %263, %264
  %266 = shl nsw i32 -1, %2
  %267 = xor i32 %266, -1
  %268 = and i32 %265, %267
  %269 = zext nneg i32 %268 to i64
  br label %355

270:                                              ; preds = %259
  %271 = add nsw i32 %2, -8
  %272 = call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 29)
  switch i32 %272, label %355 [
    i32 0, label %273
    i32 1, label %277
    i32 3, label %287
    i32 7, label %309
  ]

273:                                              ; preds = %270
  %274 = getelementptr inbounds i8, ptr %64, i64 %81
  %275 = load i8, ptr %274, align 1, !tbaa !82
  %276 = zext i8 %275 to i64
  br label %355

277:                                              ; preds = %270
  %278 = getelementptr inbounds i8, ptr %64, i64 %81
  %279 = load i8, ptr %278, align 1, !tbaa !82
  %280 = zext i8 %279 to i64
  %281 = shl nuw nsw i64 %280, 8
  %282 = add i64 %81, 1
  %283 = getelementptr inbounds i8, ptr %64, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !82
  %285 = zext i8 %284 to i64
  %286 = or disjoint i64 %281, %285
  br label %355

287:                                              ; preds = %270
  %288 = getelementptr inbounds i8, ptr %64, i64 %81
  %289 = load i8, ptr %288, align 1, !tbaa !82
  %290 = zext i8 %289 to i64
  %291 = shl nuw nsw i64 %290, 24
  %292 = add i64 %81, 1
  %293 = getelementptr inbounds i8, ptr %64, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !82
  %295 = zext i8 %294 to i64
  %296 = shl nuw nsw i64 %295, 16
  %297 = or disjoint i64 %296, %291
  %298 = add i64 %81, 2
  %299 = getelementptr inbounds i8, ptr %64, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !82
  %301 = zext i8 %300 to i64
  %302 = shl nuw nsw i64 %301, 8
  %303 = or disjoint i64 %297, %302
  %304 = add i64 %81, 3
  %305 = getelementptr inbounds i8, ptr %64, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !82
  %307 = zext i8 %306 to i64
  %308 = or disjoint i64 %303, %307
  br label %355

309:                                              ; preds = %270
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6
  %310 = getelementptr inbounds i8, ptr %64, i64 %81
  %311 = load i8, ptr %310, align 1, !tbaa !82
  %312 = zext i8 %311 to i64
  %313 = shl nuw i64 %312, 56
  %314 = add i64 %81, 1
  %315 = getelementptr inbounds i8, ptr %64, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !82
  %317 = zext i8 %316 to i64
  %318 = shl nuw nsw i64 %317, 48
  %319 = or disjoint i64 %318, %313
  %320 = add i64 %81, 2
  %321 = getelementptr inbounds i8, ptr %64, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !82
  %323 = zext i8 %322 to i64
  %324 = shl nuw nsw i64 %323, 40
  %325 = or disjoint i64 %319, %324
  %326 = add i64 %81, 3
  %327 = getelementptr inbounds i8, ptr %64, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !82
  %329 = zext i8 %328 to i64
  %330 = shl nuw nsw i64 %329, 32
  %331 = or disjoint i64 %325, %330
  %332 = add i64 %81, 4
  %333 = getelementptr inbounds i8, ptr %64, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !82
  %335 = zext i8 %334 to i64
  %336 = shl nuw nsw i64 %335, 24
  %337 = or disjoint i64 %331, %336
  %338 = add i64 %81, 5
  %339 = getelementptr inbounds i8, ptr %64, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !82
  %341 = zext i8 %340 to i64
  %342 = shl nuw nsw i64 %341, 16
  %343 = or disjoint i64 %337, %342
  %344 = add i64 %81, 6
  %345 = getelementptr inbounds i8, ptr %64, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !82
  %347 = zext i8 %346 to i64
  %348 = shl nuw nsw i64 %347, 8
  %349 = or disjoint i64 %343, %348
  %350 = add i64 %81, 7
  %351 = getelementptr inbounds i8, ptr %64, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !82
  %353 = zext i8 %352 to i64
  %354 = add nuw i64 %349, %353
  br label %355

355:                                              ; preds = %221, %110, %95, %134, %155, %196, %253, %173, %142, %122, %105, %273, %287, %309, %277, %260, %90, %93, %100, %92, %128, %270, %34
  %356 = phi i64 [ 0, %34 ], [ %99, %95 ], [ %109, %105 ], [ %127, %122 ], [ %138, %134 ], [ %151, %142 ], [ %169, %155 ], [ %192, %173 ], [ %220, %196 ], [ %258, %253 ], [ %269, %260 ], [ %276, %273 ], [ %286, %277 ], [ %308, %287 ], [ %354, %309 ], [ 0, %90 ], [ 0, %93 ], [ 0, %100 ], [ 0, %92 ], [ 0, %128 ], [ 0, %270 ], [ %121, %110 ], [ %252, %221 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i64 %356
}

declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_vecset(ptr noundef %0) local_unnamed_addr #0 !prof !156 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %193, label %7, !prof !159

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !67
  %10 = and i32 %9, 430018304
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18, !prof !160

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !72
  store i64 %15, ptr %2, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  br label %20

18:                                               ; preds = %7
  %19 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 2050) #6
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load i32, ptr %8, align 4, !tbaa !67
  %23 = and i32 %22, 536870912
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !161

25:                                               ; preds = %20
  %26 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %5, i1 noundef zeroext true) #6
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, ptr %8, align 4, !tbaa !67
  %29 = and i32 %28, 1610547455
  %30 = or disjoint i32 %29, 17408
  store i32 %30, ptr %8, align 4, !tbaa !67
  %31 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !67
  %33 = and i32 %32, -2145386240
  %34 = icmp eq i32 %33, -2147483392
  br i1 %34, label %35, label %39, !prof !159

35:                                               ; preds = %27
  %36 = load ptr, ptr %0, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.xpvuv, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !82
  br label %41

39:                                               ; preds = %27
  %40 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #6
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i64 [ %38, %35 ], [ %40, %39 ]
  %43 = load ptr, ptr %0, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.xpvlv, ptr %43, i64 0, i32 6
  %45 = load i64, ptr %44, align 8, !tbaa !82
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48, !prof !159

47:                                               ; preds = %41
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #6
  br label %48

48:                                               ; preds = %47, %41
  %49 = load ptr, ptr %0, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.xpvlv, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !162
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %58, label %54, !prof !159

54:                                               ; preds = %48
  %55 = add nuw i32 %52, 2147483647
  %56 = and i32 %55, %52
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !161

58:                                               ; preds = %54, %48
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #6
  br label %59

59:                                               ; preds = %58, %54
  %60 = icmp slt i32 %52, 8
  br i1 %60, label %61, label %70, !prof !161

61:                                               ; preds = %59
  %62 = srem i64 %45, 8
  %63 = shl i64 %51, 32
  %64 = ashr exact i64 %63, 32
  %65 = mul nsw i64 %64, %62
  %66 = srem i64 %65, 8
  %67 = sdiv i32 8, %52
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %45, %68
  br label %76

70:                                               ; preds = %59
  %71 = icmp eq i32 %52, 8
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = lshr i64 %51, 3
  %74 = and i64 %73, 536870911
  %75 = mul nsw i64 %74, %45
  br label %76

76:                                               ; preds = %70, %72, %61
  %77 = phi i64 [ %66, %61 ], [ 0, %72 ], [ 0, %70 ]
  %78 = phi i64 [ %69, %61 ], [ %75, %72 ], [ %45, %70 ]
  %79 = shl i64 %51, 32
  %80 = ashr exact i64 %79, 32
  %81 = add nsw i64 %80, 7
  %82 = add nsw i64 %81, %77
  %83 = sdiv i64 %82, 8
  %84 = add nsw i64 %83, %78
  %85 = load i64, ptr %2, align 8, !tbaa !74
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %111, !prof !163

87:                                               ; preds = %76
  %88 = load i32, ptr %8, align 4, !tbaa !67
  %89 = and i32 %88, 268435456
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97, !prof !154

91:                                               ; preds = %87
  %92 = load ptr, ptr %5, align 8, !tbaa !71
  %93 = getelementptr inbounds %struct.xpv, ptr %92, i64 0, i32 3
  %94 = load i64, ptr %93, align 8, !tbaa !82
  %95 = add i64 %84, 1
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %100, !prof !164

97:                                               ; preds = %91, %87
  %98 = add i64 %84, 1
  %99 = call ptr @Perl_sv_grow(ptr noundef nonnull %5, i64 noundef %98) #6
  br label %103

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !82
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi ptr [ %99, %97 ], [ %102, %100 ]
  %105 = load i64, ptr %2, align 8, !tbaa !74
  %106 = getelementptr inbounds i8, ptr %104, i64 %105
  %107 = add i64 %84, 1
  %108 = sub i64 %107, %105
  call void @llvm.memset.p0.i64(ptr align 1 %106, i8 0, i64 %108, i1 false), !prof !165
  %109 = load ptr, ptr %5, align 8, !tbaa !71
  %110 = getelementptr inbounds %struct.xpv, ptr %109, i64 0, i32 2
  store i64 %84, ptr %110, align 8, !tbaa !72
  br label %111

111:                                              ; preds = %103, %76
  %112 = phi ptr [ %104, %103 ], [ %21, %76 ]
  br i1 %60, label %113, label %128, !prof !161

113:                                              ; preds = %111
  %114 = shl nsw i32 -1, %52
  %115 = xor i32 %114, -1
  %116 = zext nneg i32 %115 to i64
  %117 = and i64 %42, %116
  %118 = trunc i64 %77 to i32
  %119 = shl i32 %115, %118
  %120 = getelementptr inbounds i8, ptr %112, i64 %78
  %121 = load i8, ptr %120, align 1, !tbaa !82
  %122 = trunc i32 %119 to i8
  %123 = xor i8 %122, -1
  %124 = and i8 %121, %123
  %125 = shl nuw nsw i64 %117, %77
  %126 = trunc i64 %125 to i8
  %127 = or i8 %124, %126
  store i8 %127, ptr %120, align 1, !tbaa !82
  br label %187

128:                                              ; preds = %111
  %129 = add nsw i32 %52, -8
  %130 = call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 29)
  switch i32 %130, label %187 [
    i32 0, label %131
    i32 1, label %134
    i32 3, label %141
    i32 7, label %156
  ]

131:                                              ; preds = %128
  %132 = trunc i64 %42 to i8
  %133 = getelementptr inbounds i8, ptr %112, i64 %78
  store i8 %132, ptr %133, align 1, !tbaa !82
  br label %187

134:                                              ; preds = %128
  %135 = lshr i64 %42, 8
  %136 = trunc i64 %135 to i8
  %137 = getelementptr inbounds i8, ptr %112, i64 %78
  store i8 %136, ptr %137, align 1, !tbaa !82
  %138 = trunc i64 %42 to i8
  %139 = add nsw i64 %78, 1
  %140 = getelementptr inbounds i8, ptr %112, i64 %139
  store i8 %138, ptr %140, align 1, !tbaa !82
  br label %187

141:                                              ; preds = %128
  %142 = lshr i64 %42, 24
  %143 = trunc i64 %142 to i8
  %144 = getelementptr inbounds i8, ptr %112, i64 %78
  store i8 %143, ptr %144, align 1, !tbaa !82
  %145 = lshr i64 %42, 16
  %146 = trunc i64 %145 to i8
  %147 = add nsw i64 %78, 1
  %148 = getelementptr inbounds i8, ptr %112, i64 %147
  store i8 %146, ptr %148, align 1, !tbaa !82
  %149 = lshr i64 %42, 8
  %150 = trunc i64 %149 to i8
  %151 = add nsw i64 %78, 2
  %152 = getelementptr inbounds i8, ptr %112, i64 %151
  store i8 %150, ptr %152, align 1, !tbaa !82
  %153 = trunc i64 %42 to i8
  %154 = add nsw i64 %78, 3
  %155 = getelementptr inbounds i8, ptr %112, i64 %154
  store i8 %153, ptr %155, align 1, !tbaa !82
  br label %187

156:                                              ; preds = %128
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6
  %157 = lshr i64 %42, 56
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds i8, ptr %112, i64 %78
  store i8 %158, ptr %159, align 1, !tbaa !82
  %160 = lshr i64 %42, 48
  %161 = trunc i64 %160 to i8
  %162 = add nsw i64 %78, 1
  %163 = getelementptr inbounds i8, ptr %112, i64 %162
  store i8 %161, ptr %163, align 1, !tbaa !82
  %164 = lshr i64 %42, 40
  %165 = trunc i64 %164 to i8
  %166 = add nsw i64 %78, 2
  %167 = getelementptr inbounds i8, ptr %112, i64 %166
  store i8 %165, ptr %167, align 1, !tbaa !82
  %168 = lshr i64 %42, 32
  %169 = trunc i64 %168 to i8
  %170 = add nsw i64 %78, 3
  %171 = getelementptr inbounds i8, ptr %112, i64 %170
  store i8 %169, ptr %171, align 1, !tbaa !82
  %172 = lshr i64 %42, 24
  %173 = trunc i64 %172 to i8
  %174 = add nsw i64 %78, 4
  %175 = getelementptr inbounds i8, ptr %112, i64 %174
  store i8 %173, ptr %175, align 1, !tbaa !82
  %176 = lshr i64 %42, 16
  %177 = trunc i64 %176 to i8
  %178 = add nsw i64 %78, 5
  %179 = getelementptr inbounds i8, ptr %112, i64 %178
  store i8 %177, ptr %179, align 1, !tbaa !82
  %180 = lshr i64 %42, 8
  %181 = trunc i64 %180 to i8
  %182 = add nsw i64 %78, 6
  %183 = getelementptr inbounds i8, ptr %112, i64 %182
  store i8 %181, ptr %183, align 1, !tbaa !82
  %184 = trunc i64 %42 to i8
  %185 = add nsw i64 %78, 7
  %186 = getelementptr inbounds i8, ptr %112, i64 %185
  store i8 %184, ptr %186, align 1, !tbaa !82
  br label %187

187:                                              ; preds = %128, %113, %134, %156, %141, %131
  %188 = load i32, ptr %8, align 4, !tbaa !67
  %189 = and i32 %188, 4194304
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191, !prof !161

191:                                              ; preds = %187
  %192 = call i32 @Perl_mg_set(ptr noundef nonnull %5) #6
  br label %193

193:                                              ; preds = %191, %187, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_vop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !166 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %9, label %22, !prof !167

9:                                                ; preds = %4
  %10 = icmp eq i32 %0, 92
  br i1 %10, label %23, label %11, !prof !168

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !67
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 8
  %18 = or i1 %15, %17
  %19 = and i32 %13, 16777471
  %20 = icmp eq i32 %19, 16777226
  %21 = or i1 %20, %18
  br i1 %21, label %23, label %22, !prof !169

22:                                               ; preds = %11, %4
  tail call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull @.str, i64 noundef 0) #6
  br label %23

23:                                               ; preds = %22, %11, %9
  %24 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !67
  br i1 %8, label %26, label %37, !prof !167

26:                                               ; preds = %23
  %27 = and i32 %25, 430018304
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35, !prof !168

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !72
  store i64 %32, ptr %5, align 8, !tbaa !74
  %33 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  br label %56

35:                                               ; preds = %26
  %36 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 0) #6
  br label %56

37:                                               ; preds = %23
  %38 = and i32 %25, 2098176
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %46, !prof !170

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !72
  store i64 %43, ptr %5, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !82
  br label %48

46:                                               ; preds = %37
  %47 = call ptr @Perl_sv_2pv_flags(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 32) #6
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %45, %40 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !67
  %52 = and i32 %51, 430018304
  %53 = icmp eq i32 %52, 1024
  br i1 %53, label %56, label %54, !prof !170

54:                                               ; preds = %48
  %55 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %1, ptr noundef null, i32 noundef 0) #6
  br label %56

56:                                               ; preds = %48, %29, %35, %54
  %57 = phi ptr [ %49, %54 ], [ %34, %29 ], [ %36, %35 ], [ %49, %48 ]
  %58 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !67
  %60 = and i32 %59, 2098176
  %61 = icmp eq i32 %60, 1024
  br i1 %61, label %62, label %68, !prof !171

62:                                               ; preds = %56
  %63 = load ptr, ptr %3, align 8, !tbaa !71
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !72
  store i64 %65, ptr %6, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !82
  br label %70

68:                                               ; preds = %56
  %69 = call ptr @Perl_sv_2pv_flags(ptr noundef %3, ptr noundef nonnull %6, i32 noundef 32) #6
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi ptr [ %67, %62 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !67
  %74 = and i32 %73, 536870912
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !171

76:                                               ; preds = %70
  %77 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %78 = getelementptr inbounds %struct.cop, ptr %77, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !133
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ false, %70 ], [ %81, %76 ]
  %84 = load i32, ptr %58, align 4, !tbaa !67
  %85 = and i32 %84, 536870912
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87, !prof !171

87:                                               ; preds = %82
  %88 = load ptr, ptr @PL_curcop, align 8, !tbaa !59
  %89 = getelementptr inbounds %struct.cop, ptr %88, i64 0, i32 10
  %90 = load i32, ptr %89, align 8, !tbaa !133
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i1 [ false, %82 ], [ %92, %87 ]
  %95 = xor i1 %83, true
  %96 = select i1 %95, i1 true, i1 %94, !prof !171
  br i1 %96, label %113, label %97, !prof !171

97:                                               ; preds = %93
  %98 = load i64, ptr %6, align 8, !tbaa !74
  %99 = call ptr @Perl_newSVpvn_flags(ptr noundef %71, i64 noundef %98, i32 noundef 524288) #6
  %100 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %99, i32 noundef 2, i64 noundef 0) #6
  %101 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !67
  %103 = and i32 %102, 2098176
  %104 = icmp eq i32 %103, 1024
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load ptr, ptr %99, align 8, !tbaa !71
  %107 = getelementptr inbounds %struct.xpv, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !72
  store i64 %108, ptr %6, align 8, !tbaa !74
  %109 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !82
  br label %131

111:                                              ; preds = %97
  %112 = call ptr @Perl_sv_2pv_flags(ptr noundef %99, ptr noundef nonnull %6, i32 noundef 32) #6
  br label %131

113:                                              ; preds = %93
  br i1 %83, label %131, label %114, !prof !172

114:                                              ; preds = %113
  br i1 %94, label %115, label %131, !prof !172

115:                                              ; preds = %114
  %116 = load i64, ptr %5, align 8, !tbaa !74
  %117 = call ptr @Perl_newSVpvn_flags(ptr noundef %57, i64 noundef %116, i32 noundef 524288) #6
  %118 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %117, i32 noundef 2, i64 noundef 0) #6
  %119 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !67
  %121 = and i32 %120, 2098176
  %122 = icmp eq i32 %121, 1024
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load ptr, ptr %117, align 8, !tbaa !71
  %125 = getelementptr inbounds %struct.xpv, ptr %124, i64 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !72
  store i64 %126, ptr %5, align 8, !tbaa !74
  %127 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !82
  br label %131

129:                                              ; preds = %115
  %130 = call ptr @Perl_sv_2pv_flags(ptr noundef %117, ptr noundef nonnull %5, i32 noundef 32) #6
  br label %131

131:                                              ; preds = %123, %129, %105, %111, %113, %114
  %132 = phi ptr [ %57, %113 ], [ %57, %114 ], [ %57, %111 ], [ %57, %105 ], [ %128, %123 ], [ %130, %129 ]
  %133 = phi ptr [ %71, %113 ], [ %71, %114 ], [ %112, %111 ], [ %110, %105 ], [ %71, %123 ], [ %71, %129 ]
  %134 = phi i1 [ %83, %113 ], [ %83, %114 ], [ %83, %111 ], [ %83, %105 ], [ true, %123 ], [ true, %129 ]
  %135 = phi i1 [ %94, %113 ], [ %94, %114 ], [ true, %111 ], [ true, %105 ], [ %94, %123 ], [ %94, %129 ]
  %136 = phi ptr [ %3, %113 ], [ %3, %114 ], [ %99, %111 ], [ %99, %105 ], [ %3, %123 ], [ %3, %129 ]
  %137 = phi ptr [ %2, %113 ], [ %2, %114 ], [ %2, %111 ], [ %2, %105 ], [ %117, %123 ], [ %117, %129 ]
  %138 = load i64, ptr %5, align 8
  %139 = load i64, ptr %6, align 8
  %140 = call i64 @llvm.umin.i64(i64 %138, i64 %139)
  %141 = load ptr, ptr %1, align 8, !tbaa !71
  %142 = getelementptr inbounds %struct.xpv, ptr %141, i64 0, i32 2
  store i64 %140, ptr %142, align 8, !tbaa !72
  %143 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !67
  %145 = and i32 %144, 1610547455
  %146 = or disjoint i32 %145, 17408
  store i32 %146, ptr %143, align 4, !tbaa !67
  %147 = select i1 %134, i1 true, i1 %135, !prof !172
  br i1 %147, label %148, label %158, !prof !172

148:                                              ; preds = %131
  %149 = icmp eq ptr %137, %1
  %150 = icmp eq ptr %136, %1
  %151 = or i1 %150, %149
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = icmp eq i32 %0, 92
  %154 = add i64 %139, %138
  %155 = select i1 %153, i64 %140, i64 %154
  %156 = add i64 %155, 1
  %157 = call ptr @Perl_safesyscalloc(i64 noundef %156, i64 noundef 1) #6
  br label %207

158:                                              ; preds = %131, %148
  %159 = and i32 %146, 429982720
  %160 = icmp eq i32 %159, 1024
  br i1 %160, label %161, label %164, !prof !171

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !82
  br label %166

164:                                              ; preds = %158
  %165 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #6
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi ptr [ %163, %161 ], [ %165, %164 ]
  %168 = load ptr, ptr %1, align 8, !tbaa !71
  %169 = getelementptr inbounds %struct.xpv, ptr %168, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !82
  %171 = add i64 %140, 1
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %181, !prof !173

173:                                              ; preds = %166
  %174 = call ptr @Perl_sv_grow(ptr noundef nonnull %1, i64 noundef %171) #6
  %175 = load ptr, ptr %1, align 8, !tbaa !71
  %176 = getelementptr inbounds %struct.xpv, ptr %175, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !72
  %178 = getelementptr inbounds i8, ptr %174, i64 %177
  %179 = add i64 %140, 1
  %180 = sub i64 %179, %177
  call void @llvm.memset.p0.i64(ptr align 1 %178, i8 0, i64 %180, i1 false), !prof !174
  br label %181

181:                                              ; preds = %173, %166
  %182 = phi ptr [ %174, %173 ], [ %167, %166 ]
  %183 = icmp ne i32 %0, 92
  %184 = and i1 %183, %147
  br i1 %184, label %185, label %207, !prof !172

185:                                              ; preds = %181
  %186 = load i32, ptr %143, align 4, !tbaa !67
  %187 = and i32 %186, 268435456
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load ptr, ptr %1, align 8, !tbaa !71
  %191 = getelementptr inbounds %struct.xpv, ptr %190, i64 0, i32 3
  %192 = load i64, ptr %191, align 8, !tbaa !82
  %193 = load i64, ptr %5, align 8, !tbaa !74
  %194 = load i64, ptr %6, align 8, !tbaa !74
  %195 = add i64 %193, 1
  %196 = add i64 %195, %194
  %197 = icmp ult i64 %192, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %189, %185
  %199 = load i64, ptr %5, align 8, !tbaa !74
  %200 = load i64, ptr %6, align 8, !tbaa !74
  %201 = add i64 %199, 1
  %202 = add i64 %201, %200
  %203 = call ptr @Perl_sv_grow(ptr noundef nonnull %1, i64 noundef %202) #6
  br label %207

204:                                              ; preds = %189
  %205 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !82
  br label %207

207:                                              ; preds = %198, %204, %181, %152
  %208 = phi ptr [ %157, %152 ], [ %182, %181 ], [ %203, %198 ], [ %206, %204 ]
  %209 = phi i64 [ %155, %152 ], [ 0, %181 ], [ 0, %198 ], [ 0, %204 ]
  br i1 %147, label %210, label %341, !prof !172

210:                                              ; preds = %207
  %211 = load i64, ptr %5, align 8, !tbaa !74
  %212 = load i64, ptr %6, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  switch i32 %0, label %329 [
    i32 92, label %221
    i32 93, label %217
    i32 94, label %213
  ]

213:                                              ; preds = %210
  %214 = icmp ne i64 %211, 0
  %215 = icmp ne i64 %212, 0
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %275, label %294

217:                                              ; preds = %210
  %218 = icmp ne i64 %211, 0
  %219 = icmp ne i64 %212, 0
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %256, label %294

221:                                              ; preds = %210
  %222 = icmp ne i64 %211, 0
  %223 = icmp ne i64 %212, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %244

225:                                              ; preds = %221, %225
  %226 = phi i64 [ %238, %225 ], [ %212, %221 ]
  %227 = phi i64 [ %234, %225 ], [ %211, %221 ]
  %228 = phi ptr [ %237, %225 ], [ %133, %221 ]
  %229 = phi ptr [ %233, %225 ], [ %132, %221 ]
  %230 = phi ptr [ %240, %225 ], [ %208, %221 ]
  %231 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %229, i64 noundef %227, ptr noundef nonnull %7, i32 noundef 1) #6
  %232 = load i64, ptr %7, align 8, !tbaa !74
  %233 = getelementptr inbounds i8, ptr %229, i64 %232
  %234 = sub i64 %227, %232
  %235 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %228, i64 noundef %226, ptr noundef nonnull %7, i32 noundef 1) #6
  %236 = load i64, ptr %7, align 8, !tbaa !74
  %237 = getelementptr inbounds i8, ptr %228, i64 %236
  %238 = sub i64 %226, %236
  %239 = and i64 %235, %231
  %240 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %230, i64 noundef %239, i64 noundef 0) #6
  %241 = icmp ne i64 %234, 0
  %242 = icmp ne i64 %238, 0
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %225, label %244, !llvm.loop !175

244:                                              ; preds = %225, %221
  %245 = phi ptr [ %208, %221 ], [ %240, %225 ]
  %246 = icmp eq ptr %137, %1
  %247 = icmp eq ptr %136, %1
  %248 = or i1 %247, %246
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %1, ptr noundef %208, i64 noundef %209, i32 noundef 0) #6
  br label %250

250:                                              ; preds = %244, %249
  %251 = ptrtoint ptr %245 to i64
  %252 = ptrtoint ptr %208 to i64
  %253 = sub i64 %251, %252
  %254 = load ptr, ptr %1, align 8, !tbaa !71
  %255 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  store i64 %253, ptr %255, align 8, !tbaa !72
  br label %338

256:                                              ; preds = %217, %256
  %257 = phi i64 [ %269, %256 ], [ %212, %217 ]
  %258 = phi i64 [ %265, %256 ], [ %211, %217 ]
  %259 = phi ptr [ %268, %256 ], [ %133, %217 ]
  %260 = phi ptr [ %264, %256 ], [ %132, %217 ]
  %261 = phi ptr [ %271, %256 ], [ %208, %217 ]
  %262 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %260, i64 noundef %258, ptr noundef nonnull %7, i32 noundef 1) #6
  %263 = load i64, ptr %7, align 8, !tbaa !74
  %264 = getelementptr inbounds i8, ptr %260, i64 %263
  %265 = sub i64 %258, %263
  %266 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %259, i64 noundef %257, ptr noundef nonnull %7, i32 noundef 1) #6
  %267 = load i64, ptr %7, align 8, !tbaa !74
  %268 = getelementptr inbounds i8, ptr %259, i64 %267
  %269 = sub i64 %257, %267
  %270 = xor i64 %266, %262
  %271 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %261, i64 noundef %270, i64 noundef 0) #6
  %272 = icmp ne i64 %265, 0
  %273 = icmp ne i64 %269, 0
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %256, label %294, !llvm.loop !176

275:                                              ; preds = %213, %275
  %276 = phi i64 [ %288, %275 ], [ %212, %213 ]
  %277 = phi i64 [ %284, %275 ], [ %211, %213 ]
  %278 = phi ptr [ %287, %275 ], [ %133, %213 ]
  %279 = phi ptr [ %283, %275 ], [ %132, %213 ]
  %280 = phi ptr [ %290, %275 ], [ %208, %213 ]
  %281 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %279, i64 noundef %277, ptr noundef nonnull %7, i32 noundef 1) #6
  %282 = load i64, ptr %7, align 8, !tbaa !74
  %283 = getelementptr inbounds i8, ptr %279, i64 %282
  %284 = sub i64 %277, %282
  %285 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %278, i64 noundef %276, ptr noundef nonnull %7, i32 noundef 1) #6
  %286 = load i64, ptr %7, align 8, !tbaa !74
  %287 = getelementptr inbounds i8, ptr %278, i64 %286
  %288 = sub i64 %276, %286
  %289 = or i64 %285, %281
  %290 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %280, i64 noundef %289, i64 noundef 0) #6
  %291 = icmp ne i64 %284, 0
  %292 = icmp ne i64 %288, 0
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %275, label %294, !llvm.loop !177

294:                                              ; preds = %275, %256, %213, %217
  %295 = phi ptr [ %208, %217 ], [ %208, %213 ], [ %271, %256 ], [ %290, %275 ]
  %296 = phi ptr [ %132, %217 ], [ %132, %213 ], [ %264, %256 ], [ %283, %275 ]
  %297 = phi ptr [ %133, %217 ], [ %133, %213 ], [ %268, %256 ], [ %287, %275 ]
  %298 = phi i64 [ %211, %217 ], [ %211, %213 ], [ %265, %256 ], [ %284, %275 ]
  %299 = phi i64 [ %212, %217 ], [ %212, %213 ], [ %269, %256 ], [ %288, %275 ]
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = icmp eq i64 %298, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %301, %294
  %304 = phi i64 [ %299, %294 ], [ %298, %301 ]
  %305 = phi ptr [ %297, %294 ], [ %296, %301 ]
  %306 = trunc i64 %304 to i32
  %307 = call ptr @Perl_savepvn(ptr noundef %305, i32 noundef %306) #6
  br label %308

308:                                              ; preds = %303, %301
  %309 = phi ptr [ null, %301 ], [ %307, %303 ]
  %310 = icmp eq ptr %137, %1
  %311 = icmp eq ptr %136, %1
  %312 = or i1 %311, %310
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %1, ptr noundef %208, i64 noundef %209, i32 noundef 0) #6
  br label %314

314:                                              ; preds = %308, %313
  %315 = ptrtoint ptr %295 to i64
  %316 = ptrtoint ptr %208 to i64
  %317 = sub i64 %315, %316
  %318 = load ptr, ptr %1, align 8, !tbaa !71
  %319 = getelementptr inbounds %struct.xpv, ptr %318, i64 0, i32 2
  store i64 %317, ptr %319, align 8, !tbaa !72
  br i1 %300, label %321, label %320

320:                                              ; preds = %314
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %309, i64 noundef %299, i32 noundef 0) #6
  br label %328

321:                                              ; preds = %314
  %322 = icmp eq i64 %298, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %321
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %309, i64 noundef %298, i32 noundef 0) #6
  br label %328

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !82
  %327 = getelementptr inbounds i8, ptr %326, i64 %317
  store i8 0, ptr %327, align 1, !tbaa !82
  br label %328

328:                                              ; preds = %323, %324, %320
  call void @Perl_safesysfree(ptr noundef %309) #6
  br label %338

329:                                              ; preds = %210
  %330 = icmp eq ptr %137, %1
  %331 = icmp eq ptr %136, %1
  %332 = or i1 %331, %330
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  call void @Perl_safesysfree(ptr noundef %208) #6
  br label %334

334:                                              ; preds = %329, %333
  %335 = sext i32 %0 to i64
  %336 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !59
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i32 noundef %0, ptr noundef %337) #6
  br label %338

338:                                              ; preds = %334, %328, %250
  %339 = load i32, ptr %143, align 4, !tbaa !67
  %340 = or i32 %339, 536870912
  store i32 %340, ptr %143, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %528

341:                                              ; preds = %207
  %342 = icmp ugt i64 %140, 31
  %343 = ptrtoint ptr %208 to i64
  %344 = and i64 %343, 7
  %345 = icmp eq i64 %344, 0
  %346 = select i1 %342, i1 %345, i1 false, !prof !172
  %347 = ptrtoint ptr %132 to i64
  %348 = and i64 %347, 7
  %349 = icmp eq i64 %348, 0
  %350 = select i1 %346, i1 %349, i1 false, !prof !172
  %351 = ptrtoint ptr %133 to i64
  %352 = and i64 %351, 7
  %353 = icmp eq i64 %352, 0
  %354 = select i1 %350, i1 %353, i1 false, !prof !172
  br i1 %354, label %355, label %457, !prof !172

355:                                              ; preds = %341
  %356 = and i64 %140, 31
  %357 = lshr i64 %140, 5
  switch i32 %0, label %457 [
    i32 92, label %362
    i32 93, label %360
    i32 94, label %358
  ]

358:                                              ; preds = %355
  %359 = icmp ult i64 %140, 32
  br i1 %359, label %457, label %426

360:                                              ; preds = %355
  %361 = icmp ult i64 %140, 32
  br i1 %361, label %457, label %395

362:                                              ; preds = %355
  %363 = icmp ult i64 %140, 32
  br i1 %363, label %457, label %364

364:                                              ; preds = %362, %364
  %365 = phi ptr [ %393, %364 ], [ %208, %362 ]
  %366 = phi ptr [ %388, %364 ], [ %132, %362 ]
  %367 = phi i64 [ %369, %364 ], [ %357, %362 ]
  %368 = phi ptr [ %390, %364 ], [ %133, %362 ]
  %369 = add nsw i64 %367, -1
  %370 = getelementptr inbounds i64, ptr %366, i64 1
  %371 = load i64, ptr %366, align 8, !tbaa !74
  %372 = getelementptr inbounds i64, ptr %368, i64 1
  %373 = load i64, ptr %368, align 8, !tbaa !74
  %374 = and i64 %373, %371
  %375 = getelementptr inbounds i64, ptr %365, i64 1
  store i64 %374, ptr %365, align 8, !tbaa !74
  %376 = getelementptr inbounds i64, ptr %366, i64 2
  %377 = load i64, ptr %370, align 8, !tbaa !74
  %378 = getelementptr inbounds i64, ptr %368, i64 2
  %379 = load i64, ptr %372, align 8, !tbaa !74
  %380 = and i64 %379, %377
  %381 = getelementptr inbounds i64, ptr %365, i64 2
  store i64 %380, ptr %375, align 8, !tbaa !74
  %382 = getelementptr inbounds i64, ptr %366, i64 3
  %383 = load i64, ptr %376, align 8, !tbaa !74
  %384 = getelementptr inbounds i64, ptr %368, i64 3
  %385 = load i64, ptr %378, align 8, !tbaa !74
  %386 = and i64 %385, %383
  %387 = getelementptr inbounds i64, ptr %365, i64 3
  store i64 %386, ptr %381, align 8, !tbaa !74
  %388 = getelementptr inbounds i64, ptr %366, i64 4
  %389 = load i64, ptr %382, align 8, !tbaa !74
  %390 = getelementptr inbounds i64, ptr %368, i64 4
  %391 = load i64, ptr %384, align 8, !tbaa !74
  %392 = and i64 %391, %389
  %393 = getelementptr inbounds i64, ptr %365, i64 4
  store i64 %392, ptr %387, align 8, !tbaa !74
  %394 = icmp eq i64 %369, 0
  br i1 %394, label %457, label %364, !llvm.loop !178

395:                                              ; preds = %360, %395
  %396 = phi ptr [ %424, %395 ], [ %208, %360 ]
  %397 = phi ptr [ %419, %395 ], [ %132, %360 ]
  %398 = phi i64 [ %400, %395 ], [ %357, %360 ]
  %399 = phi ptr [ %421, %395 ], [ %133, %360 ]
  %400 = add nsw i64 %398, -1
  %401 = getelementptr inbounds i64, ptr %397, i64 1
  %402 = load i64, ptr %397, align 8, !tbaa !74
  %403 = getelementptr inbounds i64, ptr %399, i64 1
  %404 = load i64, ptr %399, align 8, !tbaa !74
  %405 = xor i64 %404, %402
  %406 = getelementptr inbounds i64, ptr %396, i64 1
  store i64 %405, ptr %396, align 8, !tbaa !74
  %407 = getelementptr inbounds i64, ptr %397, i64 2
  %408 = load i64, ptr %401, align 8, !tbaa !74
  %409 = getelementptr inbounds i64, ptr %399, i64 2
  %410 = load i64, ptr %403, align 8, !tbaa !74
  %411 = xor i64 %410, %408
  %412 = getelementptr inbounds i64, ptr %396, i64 2
  store i64 %411, ptr %406, align 8, !tbaa !74
  %413 = getelementptr inbounds i64, ptr %397, i64 3
  %414 = load i64, ptr %407, align 8, !tbaa !74
  %415 = getelementptr inbounds i64, ptr %399, i64 3
  %416 = load i64, ptr %409, align 8, !tbaa !74
  %417 = xor i64 %416, %414
  %418 = getelementptr inbounds i64, ptr %396, i64 3
  store i64 %417, ptr %412, align 8, !tbaa !74
  %419 = getelementptr inbounds i64, ptr %397, i64 4
  %420 = load i64, ptr %413, align 8, !tbaa !74
  %421 = getelementptr inbounds i64, ptr %399, i64 4
  %422 = load i64, ptr %415, align 8, !tbaa !74
  %423 = xor i64 %422, %420
  %424 = getelementptr inbounds i64, ptr %396, i64 4
  store i64 %423, ptr %418, align 8, !tbaa !74
  %425 = icmp eq i64 %400, 0
  br i1 %425, label %457, label %395, !llvm.loop !179

426:                                              ; preds = %358, %426
  %427 = phi ptr [ %455, %426 ], [ %208, %358 ]
  %428 = phi ptr [ %450, %426 ], [ %132, %358 ]
  %429 = phi i64 [ %431, %426 ], [ %357, %358 ]
  %430 = phi ptr [ %452, %426 ], [ %133, %358 ]
  %431 = add nsw i64 %429, -1
  %432 = getelementptr inbounds i64, ptr %428, i64 1
  %433 = load i64, ptr %428, align 8, !tbaa !74
  %434 = getelementptr inbounds i64, ptr %430, i64 1
  %435 = load i64, ptr %430, align 8, !tbaa !74
  %436 = or i64 %435, %433
  %437 = getelementptr inbounds i64, ptr %427, i64 1
  store i64 %436, ptr %427, align 8, !tbaa !74
  %438 = getelementptr inbounds i64, ptr %428, i64 2
  %439 = load i64, ptr %432, align 8, !tbaa !74
  %440 = getelementptr inbounds i64, ptr %430, i64 2
  %441 = load i64, ptr %434, align 8, !tbaa !74
  %442 = or i64 %441, %439
  %443 = getelementptr inbounds i64, ptr %427, i64 2
  store i64 %442, ptr %437, align 8, !tbaa !74
  %444 = getelementptr inbounds i64, ptr %428, i64 3
  %445 = load i64, ptr %438, align 8, !tbaa !74
  %446 = getelementptr inbounds i64, ptr %430, i64 3
  %447 = load i64, ptr %440, align 8, !tbaa !74
  %448 = or i64 %447, %445
  %449 = getelementptr inbounds i64, ptr %427, i64 3
  store i64 %448, ptr %443, align 8, !tbaa !74
  %450 = getelementptr inbounds i64, ptr %428, i64 4
  %451 = load i64, ptr %444, align 8, !tbaa !74
  %452 = getelementptr inbounds i64, ptr %430, i64 4
  %453 = load i64, ptr %446, align 8, !tbaa !74
  %454 = or i64 %453, %451
  %455 = getelementptr inbounds i64, ptr %427, i64 4
  store i64 %454, ptr %449, align 8, !tbaa !74
  %456 = icmp eq i64 %431, 0
  br i1 %456, label %457, label %426, !llvm.loop !180

457:                                              ; preds = %426, %395, %364, %358, %360, %362, %355, %341
  %458 = phi ptr [ %208, %341 ], [ %208, %355 ], [ %208, %362 ], [ %208, %360 ], [ %208, %358 ], [ %393, %364 ], [ %424, %395 ], [ %455, %426 ]
  %459 = phi ptr [ %132, %341 ], [ %132, %355 ], [ %132, %362 ], [ %132, %360 ], [ %132, %358 ], [ %388, %364 ], [ %419, %395 ], [ %450, %426 ]
  %460 = phi ptr [ %133, %341 ], [ %133, %355 ], [ %133, %362 ], [ %133, %360 ], [ %133, %358 ], [ %390, %364 ], [ %421, %395 ], [ %452, %426 ]
  %461 = phi i64 [ %140, %341 ], [ %356, %355 ], [ %356, %362 ], [ %356, %360 ], [ %356, %358 ], [ %356, %364 ], [ %356, %395 ], [ %356, %426 ]
  switch i32 %0, label %528 [
    i32 92, label %466
    i32 93, label %464
    i32 94, label %462
  ], !prof !181

462:                                              ; preds = %457
  %463 = icmp eq i64 %461, 0
  br i1 %463, label %509, label %496, !prof !182

464:                                              ; preds = %457
  %465 = icmp eq i64 %461, 0
  br i1 %465, label %509, label %483

466:                                              ; preds = %457
  %467 = icmp eq i64 %461, 0
  br i1 %467, label %481, label %468, !prof !183

468:                                              ; preds = %466, %468
  %469 = phi i64 [ %473, %468 ], [ %461, %466 ]
  %470 = phi ptr [ %476, %468 ], [ %460, %466 ]
  %471 = phi ptr [ %474, %468 ], [ %459, %466 ]
  %472 = phi ptr [ %479, %468 ], [ %458, %466 ]
  %473 = add i64 %469, -1
  %474 = getelementptr inbounds i8, ptr %471, i64 1
  %475 = load i8, ptr %471, align 1, !tbaa !82
  %476 = getelementptr inbounds i8, ptr %470, i64 1
  %477 = load i8, ptr %470, align 1, !tbaa !82
  %478 = and i8 %477, %475
  %479 = getelementptr inbounds i8, ptr %472, i64 1
  store i8 %478, ptr %472, align 1, !tbaa !82
  %480 = icmp eq i64 %473, 0
  br i1 %480, label %481, label %468, !prof !184, !llvm.loop !185

481:                                              ; preds = %468, %466
  %482 = phi ptr [ %458, %466 ], [ %479, %468 ]
  store i8 0, ptr %482, align 1, !tbaa !82
  br label %528

483:                                              ; preds = %464, %483
  %484 = phi i64 [ %488, %483 ], [ %461, %464 ]
  %485 = phi ptr [ %491, %483 ], [ %460, %464 ]
  %486 = phi ptr [ %489, %483 ], [ %459, %464 ]
  %487 = phi ptr [ %494, %483 ], [ %458, %464 ]
  %488 = add i64 %484, -1
  %489 = getelementptr inbounds i8, ptr %486, i64 1
  %490 = load i8, ptr %486, align 1, !tbaa !82
  %491 = getelementptr inbounds i8, ptr %485, i64 1
  %492 = load i8, ptr %485, align 1, !tbaa !82
  %493 = xor i8 %492, %490
  %494 = getelementptr inbounds i8, ptr %487, i64 1
  store i8 %493, ptr %487, align 1, !tbaa !82
  %495 = icmp eq i64 %488, 0
  br i1 %495, label %509, label %483, !llvm.loop !186

496:                                              ; preds = %462, %496
  %497 = phi i64 [ %501, %496 ], [ %461, %462 ]
  %498 = phi ptr [ %504, %496 ], [ %460, %462 ]
  %499 = phi ptr [ %502, %496 ], [ %459, %462 ]
  %500 = phi ptr [ %507, %496 ], [ %458, %462 ]
  %501 = add i64 %497, -1
  %502 = getelementptr inbounds i8, ptr %499, i64 1
  %503 = load i8, ptr %499, align 1, !tbaa !82
  %504 = getelementptr inbounds i8, ptr %498, i64 1
  %505 = load i8, ptr %498, align 1, !tbaa !82
  %506 = or i8 %505, %503
  %507 = getelementptr inbounds i8, ptr %500, i64 1
  store i8 %506, ptr %500, align 1, !tbaa !82
  %508 = icmp eq i64 %501, 0
  br i1 %508, label %509, label %496, !prof !187, !llvm.loop !188

509:                                              ; preds = %496, %483, %462, %464
  %510 = load i64, ptr %6, align 8, !tbaa !74
  %511 = icmp ugt i64 %510, %140
  br i1 %511, label %512, label %515, !prof !189

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %133, i64 %140
  %514 = sub i64 %510, %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %513, i64 noundef %514, i32 noundef 0) #6
  br label %528

515:                                              ; preds = %509
  %516 = load i64, ptr %5, align 8, !tbaa !74
  %517 = icmp ugt i64 %516, %140
  br i1 %517, label %518, label %521, !prof !190

518:                                              ; preds = %515
  %519 = getelementptr inbounds i8, ptr %132, i64 %140
  %520 = sub i64 %516, %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %519, i64 noundef %520, i32 noundef 0) #6
  br label %528

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !82
  %524 = load ptr, ptr %1, align 8, !tbaa !71
  %525 = getelementptr inbounds %struct.xpv, ptr %524, i64 0, i32 2
  %526 = load i64, ptr %525, align 8, !tbaa !72
  %527 = getelementptr inbounds i8, ptr %523, i64 %526
  store i8 0, ptr %527, align 1, !tbaa !82
  br label %528

528:                                              ; preds = %338, %512, %521, %518, %457, %481
  %529 = load i8, ptr @PL_tainting, align 1, !tbaa !125, !range !127, !noundef !128
  %530 = icmp eq i8 %529, 0
  %531 = load i8, ptr @PL_tainted, align 1, !range !127
  %532 = icmp eq i8 %531, 0
  %533 = select i1 %530, i1 true, i1 %532, !prof !171
  br i1 %533, label %535, label %534, !prof !171

534:                                              ; preds = %528
  call void @Perl_sv_magic(ptr noundef nonnull %1, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #6
  br label %535

535:                                              ; preds = %534, %528
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_do_kv() local_unnamed_addr #0 !prof !191 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !59
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !147
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !192

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %13

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #6
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  switch i16 %18, label %19 [
    i16 149, label %23
    i16 11, label %23
  ], !prof !193

19:                                               ; preds = %13
  %20 = icmp eq i16 %18, 146
  %21 = icmp eq i16 %18, 382
  %22 = or i1 %20, %21
  br label %23

23:                                               ; preds = %13, %19, %13
  %24 = phi i1 [ %22, %19 ], [ true, %13 ], [ true, %13 ]
  %25 = zext i1 %24 to i64
  switch i16 %18, label %26 [
    i16 149, label %30
    i16 11, label %30
  ], !prof !193

26:                                               ; preds = %23
  %27 = icmp eq i16 %18, 145
  %28 = icmp eq i16 %18, 383
  %29 = or i1 %27, %28
  br label %30

30:                                               ; preds = %23, %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ], [ true, %23 ]
  %32 = zext i1 %31 to i64
  %33 = tail call i32 @Perl_hv_iterinit(ptr noundef %3) #6
  switch i32 %14, label %102 [
    i32 1, label %175
    i32 2, label %34
  ], !prof !194

34:                                               ; preds = %30
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 5
  %37 = load i8, ptr %36, align 2, !tbaa !147
  %38 = and i8 %37, 32
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48, !prof !195

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 6
  %42 = load i8, ptr %41, align 1, !tbaa !63
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %60, label %45, !prof !195

45:                                               ; preds = %40
  %46 = tail call i32 @Perl_is_lvalue_sub() #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45, %34
  %49 = tail call ptr @Perl_newSV_type(i32 noundef 10) #6
  %50 = tail call ptr @Perl_sv_2mortal(ptr noundef %49) #6
  tail call void @Perl_sv_magic(ptr noundef %50, ptr noundef null, i32 noundef 107, ptr noundef null, i32 noundef 0) #6
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.xpvlv, ptr %51, i64 0, i32 9
  store i8 107, ptr %52, align 8, !tbaa !196
  %53 = icmp eq ptr %3, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !197
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !197
  br label %58

58:                                               ; preds = %48, %54
  %59 = getelementptr inbounds %struct.xpvlv, ptr %51, i64 0, i32 8
  store ptr %3, ptr %59, align 8, !tbaa !157
  br label %100

60:                                               ; preds = %45, %40
  %61 = load ptr, ptr @PL_curpad, align 8, !tbaa !59
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !198
  %65 = getelementptr inbounds ptr, ptr %61, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !67
  %69 = and i32 %68, 8388608
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !195

71:                                               ; preds = %60
  %72 = tail call ptr @Perl_mg_find(ptr noundef %3, i32 noundef 80) #6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %60, %71
  %75 = load ptr, ptr %3, align 8, !tbaa !199
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !200
  %78 = getelementptr inbounds %struct.xpvmg, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !82
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81, !prof !195

81:                                               ; preds = %74
  %82 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #6
  %83 = sext i32 %82 to i64
  br label %84

84:                                               ; preds = %74, %81
  %85 = phi i64 [ %83, %81 ], [ 0, %74 ]
  %86 = sub i64 %77, %85
  br label %92

87:                                               ; preds = %71, %87
  %88 = phi i64 [ %91, %87 ], [ 0, %71 ]
  %89 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %3, i32 noundef 0) #6
  %90 = icmp eq ptr %89, null
  %91 = add nuw nsw i64 %88, 1
  br i1 %90, label %92, label %87, !llvm.loop !202

92:                                               ; preds = %87, %84
  %93 = phi i64 [ %86, %84 ], [ %88, %87 ]
  tail call void @Perl_sv_setiv(ptr noundef %66, i64 noundef %93) #6
  %94 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !67
  %96 = and i32 %95, 4194304
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !195

98:                                               ; preds = %92
  %99 = tail call i32 @Perl_mg_set(ptr noundef %66) #6
  br label %100

100:                                              ; preds = %98, %92, %58
  %101 = phi ptr [ %50, %58 ], [ %66, %92 ], [ %66, %98 ]
  store ptr %101, ptr %1, align 8, !tbaa !59
  br label %175

102:                                              ; preds = %30
  %103 = load ptr, ptr @PL_stack_max, align 8, !tbaa !59
  %104 = ptrtoint ptr %103 to i64
  %105 = ptrtoint ptr %2 to i64
  %106 = sub i64 %104, %105
  %107 = ashr exact i64 %106, 3
  %108 = load ptr, ptr %3, align 8, !tbaa !199
  %109 = getelementptr inbounds %struct.xpvhv, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !200
  %111 = getelementptr inbounds %struct.xpvmg, ptr %108, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !82
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114, !prof !203

114:                                              ; preds = %102
  %115 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #6
  %116 = sext i32 %115 to i64
  br label %117

117:                                              ; preds = %102, %114
  %118 = phi i64 [ %116, %114 ], [ 0, %102 ]
  %119 = sub i64 %110, %118
  %120 = add nuw nsw i64 %32, %25
  %121 = mul i64 %119, %120
  %122 = icmp slt i64 %107, %121
  br i1 %122, label %123, label %138, !prof !204

123:                                              ; preds = %117
  %124 = load ptr, ptr %3, align 8, !tbaa !199
  %125 = getelementptr inbounds %struct.xpvhv, ptr %124, i64 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !200
  %127 = getelementptr inbounds %struct.xpvmg, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !82
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130, !prof !169

130:                                              ; preds = %123
  %131 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #6
  %132 = sext i32 %131 to i64
  br label %133

133:                                              ; preds = %123, %130
  %134 = phi i64 [ %132, %130 ], [ 0, %123 ]
  %135 = sub i64 %126, %134
  %136 = mul i64 %135, %120
  %137 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %2, ptr noundef nonnull %2, i64 noundef %136) #6
  br label %138

138:                                              ; preds = %117, %133
  %139 = phi ptr [ %137, %133 ], [ %2, %117 ]
  %140 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %3, i32 noundef 0) #6
  %141 = icmp eq ptr %140, null
  br i1 %141, label %175, label %142, !prof !205

142:                                              ; preds = %138, %171
  %143 = phi ptr [ %173, %171 ], [ %140, %138 ]
  %144 = phi ptr [ %172, %171 ], [ %139, %138 ]
  br i1 %24, label %145, label %157, !prof !206

145:                                              ; preds = %142
  %146 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %143) #6
  %147 = load ptr, ptr @PL_stack_max, align 8, !tbaa !59
  %148 = ptrtoint ptr %147 to i64
  %149 = ptrtoint ptr %144 to i64
  %150 = sub i64 %148, %149
  %151 = icmp slt i64 %150, 8
  br i1 %151, label %152, label %154, !prof !207

152:                                              ; preds = %145
  %153 = tail call ptr @Perl_stack_grow(ptr noundef %144, ptr noundef %144, i64 noundef 1) #6
  br label %154

154:                                              ; preds = %145, %152
  %155 = phi ptr [ %153, %152 ], [ %144, %145 ]
  %156 = getelementptr inbounds ptr, ptr %155, i64 1
  store ptr %146, ptr %156, align 8, !tbaa !59
  br label %157

157:                                              ; preds = %154, %142
  %158 = phi ptr [ %156, %154 ], [ %144, %142 ]
  br i1 %31, label %159, label %171, !prof !208

159:                                              ; preds = %157
  %160 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %3, ptr noundef nonnull %143) #6
  %161 = load ptr, ptr @PL_stack_max, align 8, !tbaa !59
  %162 = ptrtoint ptr %161 to i64
  %163 = ptrtoint ptr %158 to i64
  %164 = sub i64 %162, %163
  %165 = icmp slt i64 %164, 8
  br i1 %165, label %166, label %168, !prof !209

166:                                              ; preds = %159
  %167 = tail call ptr @Perl_stack_grow(ptr noundef %158, ptr noundef %158, i64 noundef 1) #6
  br label %168

168:                                              ; preds = %159, %166
  %169 = phi ptr [ %167, %166 ], [ %158, %159 ]
  %170 = getelementptr inbounds ptr, ptr %169, i64 1
  store ptr %160, ptr %170, align 8, !tbaa !59
  br label %171

171:                                              ; preds = %168, %157
  %172 = phi ptr [ %170, %168 ], [ %158, %157 ]
  %173 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %3, i32 noundef 0) #6
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %142, !prof !210, !llvm.loop !211

175:                                              ; preds = %171, %138, %30, %100
  %176 = phi ptr [ %1, %100 ], [ %2, %30 ], [ %139, %138 ], [ %172, %171 ]
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !59
  %177 = load ptr, ptr @PL_op, align 8, !tbaa !59
  %178 = load ptr, ptr %177, align 8, !tbaa !212
  ret ptr %178
}

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_swash_fetch(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @Perl_do_trans, ptr @Perl_sv_pvn_force_flags, i64 5570}
!36 = !{ptr @Perl_do_join, ptr @Perl_sv_upgrade, i64 27}
!37 = !{ptr @Perl_do_join, ptr @Perl_sv_2pv_flags, i64 12049}
!38 = !{ptr @Perl_do_join, ptr @Perl_sv_grow, i64 5832}
!39 = !{ptr @Perl_do_join, ptr @Perl_sv_setpvn, i64 219397}
!40 = !{ptr @Perl_do_join, ptr @Perl_sv_catsv_flags, i64 219333}
!41 = !{ptr @Perl_do_join, ptr @Perl_sv_catpvn_flags, i64 1310998}
!42 = !{ptr @Perl_do_sprintf, ptr @Perl_sv_vsetpvfn, i64 390026}
!43 = !{ptr @Perl_do_vecset, ptr @Perl_sv_pvn_force_flags, i64 79}
!44 = !{ptr @Perl_do_vecset, ptr @Perl_sv_2uv_flags, i64 223}
!45 = !{ptr @Perl_do_vecset, ptr @Perl_sv_grow, i64 6}
!46 = !{ptr @Perl_do_vop, ptr @Perl_sv_setpvn, i64 19}
!47 = !{ptr @Perl_do_vop, ptr @Perl_sv_pvn_force_flags, i64 2}
!48 = !{ptr @Perl_do_vop, ptr @Perl_sv_grow, i64 2}
!49 = !{ptr @Perl_do_vop, ptr @Perl_sv_catpvn_flags, i64 18}
!50 = !{ptr @Perl_do_kv, ptr @Perl_block_gimme, i64 16}
!51 = !{ptr @Perl_do_kv, ptr @Perl_hv_iterinit, i64 29768}
!52 = !{ptr @Perl_do_kv, ptr @Perl_sv_setiv, i64 1}
!53 = !{ptr @Perl_do_kv, ptr @Perl_stack_grow, i64 2}
!54 = !{ptr @Perl_do_kv, ptr @Perl_hv_iternext_flags, i64 20824570}
!55 = !{ptr @Perl_do_kv, ptr @Perl_hv_iterkeysv, i64 20794793}
!56 = !{ptr @Perl_do_kv, ptr @Perl_hv_iterval, i64 102493}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 12359}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !61, i64 35}
!64 = !{!"op", !60, i64 0, !60, i64 8, !60, i64 16, !65, i64 24, !66, i64 32, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !61, i64 34, !61, i64 35}
!65 = !{!"long", !61, i64 0}
!66 = !{!"int", !61, i64 0}
!67 = !{!68, !66, i64 12}
!68 = !{!"sv", !60, i64 0, !66, i64 8, !66, i64 12, !61, i64 16}
!69 = !{!"branch_weights", i32 0, i32 12359}
!70 = !{!"branch_weights", i32 12359, i32 0}
!71 = !{!68, !60, i64 0}
!72 = !{!73, !65, i64 16}
!73 = !{!"xpv", !60, i64 0, !61, i64 8, !65, i64 16, !61, i64 24}
!74 = !{!65, !65, i64 0}
!75 = !{!"branch_weights", i32 12356, i32 3}
!76 = !{!"branch_weights", i32 6786, i32 5570}
!77 = !{!"branch_weights", i32 0, i32 5570}
!78 = !{!"branch_weights", i32 12356, i32 0}
!79 = !{!"branch_weights", i32 3, i32 0}
!80 = !{!81, !60, i64 40}
!81 = !{!"svop", !60, i64 0, !60, i64 8, !60, i64 16, !65, i64 24, !66, i64 32, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !61, i64 34, !61, i64 35, !60, i64 40}
!82 = !{!61, !61, i64 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!87, !60, i64 40}
!87 = !{!"pvop", !60, i64 0, !60, i64 8, !60, i64 16, !65, i64 24, !66, i64 32, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !61, i64 34, !61, i64 35, !60, i64 40}
!88 = !{!"branch_weights", i32 0, i32 3}
!89 = !{!"branch_weights", i32 191, i32 1}
!90 = !{!91, !91, i64 0}
!91 = !{!"short", !61, i64 0}
!92 = !{!"branch_weights", i32 577, i32 191}
!93 = distinct !{!93, !84, !85}
!94 = distinct !{!94, !84, !85}
!95 = distinct !{!95, !84, !85}
!96 = distinct !{!96, !84, !85}
!97 = distinct !{!97, !84, !85}
!98 = distinct !{!98, !84, !85}
!99 = distinct !{!99, !84, !85}
!100 = distinct !{!100, !84, !85}
!101 = distinct !{!101, !84, !85}
!102 = !{!"branch_weights", i32 0, i32 12356}
!103 = !{!"branch_weights", i32 12355, i32 1}
!104 = !{!"branch_weights", i32 144221, i32 80578}
!105 = !{!"branch_weights", i32 212444, i32 12355}
!106 = distinct !{!106, !84, !85}
!107 = distinct !{!107, !84, !85}
!108 = !{!"function_entry_count", i64 219397}
!109 = !{!"branch_weights", i32 219397, i32 0}
!110 = !{!"branch_weights", i32 219333, i32 64}
!111 = !{!"branch_weights", i32 219370, i32 27}
!112 = !{!"branch_weights", i32 5832, i32 213565}
!113 = !{!"branch_weights", i32 5831, i32 1}
!114 = !{!"branch_weights", i32 0, i32 278216}
!115 = !{!"branch_weights", i32 278214, i32 2}
!116 = !{!"branch_weights", i32 278214, i32 0}
!117 = !{!118, !60, i64 0}
!118 = !{!"xpvmg", !60, i64 0, !61, i64 8, !65, i64 16, !61, i64 24, !61, i64 32, !61, i64 40}
!119 = !{!120, !66, i64 12}
!120 = !{!"hv", !60, i64 0, !66, i64 8, !66, i64 12, !61, i64 16}
!121 = !{!"branch_weights", i32 3, i32 278211}
!122 = !{!"branch_weights", i32 272385, i32 5831}
!123 = distinct !{!123, !84, !85}
!124 = !{!"branch_weights", i32 5832, i32 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"_Bool", !61, i64 0}
!127 = !{i8 0, i8 2}
!128 = !{}
!129 = !{!"branch_weights", i32 0, i32 219333}
!130 = !{!"branch_weights", i32 53724, i32 165673}
!131 = !{!"branch_weights", i32 53723, i32 1}
!132 = !{!"branch_weights", i32 165673, i32 0}
!133 = !{!134, !66, i64 56}
!134 = !{!"cop", !60, i64 0, !60, i64 8, !60, i64 16, !65, i64 24, !66, i64 32, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !66, i64 33, !61, i64 34, !61, i64 35, !66, i64 36, !60, i64 40, !60, i64 48, !66, i64 56, !66, i64 60, !60, i64 64, !60, i64 72}
!135 = !{!"branch_weights", i32 140337, i32 25336}
!136 = !{!"branch_weights", i32 140337, i32 0}
!137 = !{!"branch_weights", i32 0, i32 140337}
!138 = distinct !{!138, !84, !85}
!139 = !{!"branch_weights", i32 1018278, i32 12046}
!140 = !{!"branch_weights", i32 1030324, i32 0}
!141 = !{!"branch_weights", i32 0, i32 1030324}
!142 = !{!"branch_weights", i32 976601, i32 53723}
!143 = distinct !{!143, !84, !85}
!144 = !{!"function_entry_count", i64 390026}
!145 = !{!"branch_weights", i32 390026, i32 0}
!146 = !{!"function_entry_count", i64 238}
!147 = !{!64, !61, i64 34}
!148 = !{!"branch_weights", i32 15, i32 223}
!149 = !{!"branch_weights", i32 15, i32 0}
!150 = !{!"branch_weights", i32 223, i32 15}
!151 = !{!"branch_weights", i32 238, i32 0}
!152 = !{!"branch_weights", i32 0, i32 238}
!153 = !{!"branch_weights", i32 76, i32 162}
!154 = !{!"branch_weights", i32 76, i32 0}
!155 = !{!"branch_weights", i32 162, i32 0}
!156 = !{!"function_entry_count", i64 223}
!157 = !{!158, !60, i64 64}
!158 = !{!"xpvlv", !60, i64 0, !61, i64 8, !65, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !65, i64 56, !60, i64 64, !61, i64 72, !61, i64 73}
!159 = !{!"branch_weights", i32 0, i32 223}
!160 = !{!"branch_weights", i32 144, i32 79}
!161 = !{!"branch_weights", i32 223, i32 0}
!162 = !{!158, !65, i64 56}
!163 = !{!"branch_weights", i32 76, i32 147}
!164 = !{!"branch_weights", i32 6, i32 70}
!165 = !{!"VP", i32 1, i64 76, i64 2, i64 70, i64 17, i64 6}
!166 = !{!"function_entry_count", i64 27}
!167 = !{!"branch_weights", i32 8, i32 19}
!168 = !{!"branch_weights", i32 6, i32 2}
!169 = !{!"branch_weights", i32 2, i32 0}
!170 = !{!"branch_weights", i32 19, i32 0}
!171 = !{!"branch_weights", i32 27, i32 0}
!172 = !{!"branch_weights", i32 0, i32 27}
!173 = !{!"branch_weights", i32 2, i32 25}
!174 = !{!"VP", i32 1, i64 2, i64 1, i64 2}
!175 = distinct !{!175, !84, !85}
!176 = distinct !{!176, !84, !85}
!177 = distinct !{!177, !84, !85}
!178 = distinct !{!178, !84, !85}
!179 = distinct !{!179, !84, !85}
!180 = distinct !{!180, !84, !85}
!181 = !{!"branch_weights", i32 0, i32 6, i32 0, i32 21}
!182 = !{!"branch_weights", i32 1, i32 167}
!183 = !{!"branch_weights", i32 1, i32 191}
!184 = !{!"branch_weights", i32 191, i32 3137}
!185 = distinct !{!185, !84, !85}
!186 = distinct !{!186, !84, !85}
!187 = !{!"branch_weights", i32 167, i32 1945}
!188 = distinct !{!188, !84, !85}
!189 = !{!"branch_weights", i32 6, i32 15}
!190 = !{!"branch_weights", i32 12, i32 3}
!191 = !{!"function_entry_count", i64 29768}
!192 = !{!"branch_weights", i32 16, i32 29752}
!193 = !{!"branch_weights", i32 24162, i32 5588, i32 18}
!194 = !{!"branch_weights", i32 29767, i32 0, i32 1}
!195 = !{!"branch_weights", i32 1, i32 0}
!196 = !{!158, !61, i64 72}
!197 = !{!68, !66, i64 8}
!198 = !{!64, !65, i64 24}
!199 = !{!120, !60, i64 0}
!200 = !{!201, !65, i64 16}
!201 = !{!"xpvhv", !60, i64 0, !61, i64 8, !65, i64 16, !65, i64 24}
!202 = distinct !{!202, !84, !85}
!203 = !{!"branch_weights", i32 29767, i32 0}
!204 = !{!"branch_weights", i32 2, i32 29765}
!205 = !{!"branch_weights", i32 1, i32 29766}
!206 = !{!"branch_weights", i32 20794790, i32 10}
!207 = !{!"branch_weights", i32 0, i32 20794790}
!208 = !{!"branch_weights", i32 102493, i32 20692307}
!209 = !{!"branch_weights", i32 0, i32 102493}
!210 = !{!"branch_weights", i32 29766, i32 20765034}
!211 = distinct !{!211, !84, !85}
!212 = !{!64, !60, i64 0}
