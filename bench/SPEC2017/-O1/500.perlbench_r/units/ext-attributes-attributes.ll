; ModuleID = 'ext/attributes/attributes.c'
source_filename = "ext/attributes/attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.1, ptr, %union.anon.2, %union.anon.3, %union.anon.4, ptr, %union.anon.5, ptr, i32, i32, i32 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.hv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [28 x i8] c"ext/attributes/attributes.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"attributes::_modify_attrs\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attributes::_fetch_attrs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"attributes::_guess_stash\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"attributes::reftype\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"@attributes\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"lvalue\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"prototype(\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Unterminated attribute parameter in attribute list\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"A variable may not be unshared\00", align 1
@PL_sharehook = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"$reference\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_attributes(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_attributes__modify_attrs) #4
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_attributes__fetch_attrs, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #4
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_attributes__guess_stash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #4
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_attributes_reftype, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0) #4
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_attributes__modify_attrs(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1, %18
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.7) #4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = and i32 %24, 65280
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 255
  %28 = icmp eq i32 %27, 8
  %29 = or i1 %26, %28
  %30 = and i32 %24, 16777471
  %31 = icmp eq i32 %30, 16777226
  %32 = or i1 %31, %29
  %33 = and i32 %24, 2048
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %34, %32
  br i1 %35, label %36, label %17

36:                                               ; preds = %18
  %37 = icmp sgt i32 %15, 1
  br i1 %37, label %38, label %224

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = add nsw i32 %15, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %219, label %43

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %19, i64 %9
  %45 = getelementptr ptr, ptr %44, i64 2
  %46 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  br label %47

47:                                               ; preds = %43, %211
  %48 = phi i32 [ %41, %43 ], [ %214, %211 ]
  %49 = phi ptr [ %21, %43 ], [ %213, %211 ]
  %50 = phi ptr [ %45, %43 ], [ %52, %211 ]
  %51 = phi i32 [ 0, %43 ], [ %212, %211 ]
  %52 = getelementptr inbounds ptr, ptr %50, i64 1
  %53 = load ptr, ptr %50, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %216, label %55

55:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %56 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !41
  %58 = and i32 %57, 2098176
  %59 = icmp eq i32 %58, 1024
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load ptr, ptr %53, align 8, !tbaa !44
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !45
  store i64 %63, ptr %2, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  br label %68

66:                                               ; preds = %55
  %67 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %53, ptr noundef nonnull %2, i32 noundef 34) #4
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ %65, %60 ], [ %67, %66 ]
  %70 = load i8, ptr %69, align 1, !tbaa !43
  %71 = icmp eq i8 %70, 45
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  %74 = load i64, ptr %2, align 8, !tbaa !48
  %75 = add i64 %74, -1
  store i64 %75, ptr %2, align 8, !tbaa !48
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi ptr [ %73, %72 ], [ %69, %68 ]
  %78 = load i32, ptr %46, align 4, !tbaa !41
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 13
  %81 = load i64, ptr %2, align 8, !tbaa !48
  br i1 %80, label %82, label %193

82:                                               ; preds = %76
  %83 = trunc i64 %81 to i32
  switch i32 %83, label %134 [
    i32 5, label %84
    i32 6, label %100
  ]

84:                                               ; preds = %82
  %85 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %77, ptr noundef nonnull dereferenceable(5) @.str.8, i64 5)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %202

87:                                               ; preds = %84
  %88 = load ptr, ptr %40, align 8, !tbaa !44
  %89 = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 12
  %90 = load i32, ptr %89, align 4, !tbaa !49
  br i1 %71, label %91, label %93

91:                                               ; preds = %87
  %92 = and i32 %90, -131073
  store i32 %92, ptr %89, align 4, !tbaa !49
  br label %211

93:                                               ; preds = %87
  %94 = and i32 %90, 192
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %205, label %96

96:                                               ; preds = %93
  %97 = and i32 %90, 131072
  %98 = icmp eq i32 %97, 0
  %99 = or i32 %90, 131072
  store i32 %99, ptr %89, align 4, !tbaa !49
  br i1 %98, label %202, label %211

100:                                              ; preds = %82
  %101 = getelementptr inbounds i8, ptr %77, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !43
  switch i8 %102, label %202 [
    i8 108, label %103
    i8 104, label %123
  ]

103:                                              ; preds = %100
  %104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %77, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %202

106:                                              ; preds = %103
  %107 = load ptr, ptr %40, align 8, !tbaa !51
  %108 = getelementptr inbounds %struct.xpvcv, ptr %107, i64 0, i32 12
  %109 = load i32, ptr %108, align 4, !tbaa !49
  %110 = and i32 %109, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %207

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.xpvcv, ptr %107, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = icmp eq ptr %114, null
  br i1 %115, label %207, label %116

116:                                              ; preds = %112
  %117 = and i32 %109, 2
  %118 = icmp eq i32 %117, 0
  %119 = xor i1 %71, %118
  %120 = or i32 %109, 2
  %121 = and i32 %109, -11
  %122 = select i1 %71, i32 %121, i32 %120
  store i32 %122, ptr %108, align 4, !tbaa !49
  br i1 %119, label %202, label %211

123:                                              ; preds = %100
  %124 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %77, ptr noundef nonnull dereferenceable(6) @.str.10, i64 6)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %123
  %127 = load ptr, ptr %40, align 8, !tbaa !51
  %128 = getelementptr inbounds %struct.xpvcv, ptr %127, i64 0, i32 12
  %129 = load i32, ptr %128, align 4, !tbaa !49
  br i1 %71, label %130, label %132

130:                                              ; preds = %126
  %131 = and i32 %129, -2
  store i32 %131, ptr %128, align 4, !tbaa !49
  br label %211

132:                                              ; preds = %126
  %133 = or i32 %129, 1
  store i32 %133, ptr %128, align 4, !tbaa !49
  br label %211

134:                                              ; preds = %82
  %135 = icmp ugt i64 %81, 10
  br i1 %135, label %136, label %202

136:                                              ; preds = %134
  %137 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %77, ptr noundef nonnull dereferenceable(10) @.str.11, i64 10)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %202

139:                                              ; preds = %136
  %140 = getelementptr inbounds i8, ptr %77, i64 10
  %141 = add i64 %81, -11
  %142 = call ptr @Perl_newSVpvn(ptr noundef nonnull %140, i64 noundef %141) #4
  %143 = load ptr, ptr %40, align 8, !tbaa !51
  %144 = getelementptr inbounds %struct.xpvcv, ptr %143, i64 0, i32 12
  %145 = load i32, ptr %144, align 4, !tbaa !49
  %146 = and i32 %145, 32768
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.xpvcv, ptr %143, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  br label %151

151:                                              ; preds = %148, %139
  %152 = phi ptr [ %150, %148 ], [ null, %139 ]
  %153 = load i64, ptr %2, align 8, !tbaa !48
  %154 = add i64 %153, -1
  %155 = getelementptr inbounds i8, ptr %77, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !43
  %157 = icmp eq i8 %156, 41
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12) #4
  br label %159

159:                                              ; preds = %158, %151
  %160 = icmp eq ptr %152, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %159
  %162 = call ptr @Perl_newSVhek(ptr noundef nonnull %152) #4
  %163 = call ptr @Perl_sv_2mortal(ptr noundef %162) #4
  br label %175

164:                                              ; preds = %159
  %165 = load ptr, ptr %40, align 8, !tbaa !51
  %166 = getelementptr inbounds %struct.xpvcv, ptr %165, i64 0, i32 12
  %167 = load i32, ptr %166, align 4, !tbaa !49
  %168 = and i32 %167, 32768
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %164
  %171 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %40) #4
  br label %175

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.xpvcv, ptr %165, i64 0, i32 7
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  br label %175

175:                                              ; preds = %172, %170, %161
  %176 = phi ptr [ %163, %161 ], [ %171, %170 ], [ %174, %172 ]
  %177 = call zeroext i1 @Perl_ckwarn(i32 noundef 47) #4
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call zeroext i1 @Perl_validate_proto(ptr noundef %176, ptr noundef %142, i1 noundef zeroext true) #4
  br label %180

180:                                              ; preds = %178, %175
  %181 = load i64, ptr %2, align 8, !tbaa !48
  %182 = add i64 %181, -11
  %183 = load i32, ptr %56, align 4, !tbaa !41
  %184 = and i32 %183, 536870912
  call void @Perl_cv_ckproto_len_flags(ptr noundef nonnull %40, ptr noundef %176, ptr noundef nonnull %140, i64 noundef %182, i32 noundef %184) #4
  %185 = load i64, ptr %2, align 8, !tbaa !48
  %186 = add i64 %185, -11
  call void @Perl_sv_setpvn(ptr noundef nonnull %40, ptr noundef nonnull %140, i64 noundef %186) #4
  %187 = load i32, ptr %56, align 4, !tbaa !41
  %188 = and i32 %187, 536870912
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %180
  %191 = load i32, ptr %46, align 4, !tbaa !41
  %192 = or i32 %191, 536870912
  store i32 %192, ptr %46, align 4, !tbaa !41
  br label %211

193:                                              ; preds = %76
  %194 = icmp eq i64 %81, 6
  br i1 %194, label %195, label %202

195:                                              ; preds = %193
  %196 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %77, ptr noundef nonnull dereferenceable(6) @.str.13, i64 6)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  br i1 %71, label %199, label %200

199:                                              ; preds = %198
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14) #4
  br label %200

200:                                              ; preds = %199, %198
  %201 = load ptr, ptr @PL_sharehook, align 8, !tbaa !35
  call void %201(ptr noundef %40) #4
  br label %211

202:                                              ; preds = %195, %193, %136, %134, %123, %116, %103, %100, %96, %84
  %203 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %53, ptr %49, align 8, !tbaa !35
  %204 = add nsw i32 %51, 1
  br label %211

205:                                              ; preds = %93
  %206 = or i32 %90, 131072
  store i32 %206, ptr %89, align 4, !tbaa !49
  br label %211

207:                                              ; preds = %106, %112
  %208 = and i32 %109, -3
  %209 = select i1 %71, i32 0, i32 2
  %210 = or disjoint i32 %208, %209
  store i32 %210, ptr %108, align 4, !tbaa !49
  br label %211

211:                                              ; preds = %207, %96, %205, %202, %200, %190, %180, %132, %130, %116, %91
  %212 = phi i32 [ %204, %202 ], [ %51, %116 ], [ %51, %200 ], [ %51, %91 ], [ %51, %132 ], [ %51, %130 ], [ %51, %190 ], [ %51, %180 ], [ %51, %205 ], [ %51, %96 ], [ %51, %207 ]
  %213 = phi ptr [ %203, %202 ], [ %49, %116 ], [ %49, %200 ], [ %49, %91 ], [ %49, %132 ], [ %49, %130 ], [ %49, %190 ], [ %49, %180 ], [ %49, %205 ], [ %49, %96 ], [ %49, %207 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  %214 = add nsw i32 %48, -1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %47, !llvm.loop !53

216:                                              ; preds = %211, %47
  %217 = phi i32 [ %51, %47 ], [ %212, %211 ]
  %218 = sext i32 %217 to i64
  br label %219

219:                                              ; preds = %216, %38
  %220 = phi i64 [ 0, %38 ], [ %218, %216 ]
  %221 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %222 = getelementptr inbounds ptr, ptr %221, i64 %20
  %223 = getelementptr ptr, ptr %222, i64 %220
  br label %224

224:                                              ; preds = %36, %219
  %225 = phi ptr [ %223, %219 ], [ %21, %36 ]
  %226 = getelementptr ptr, ptr %225, i64 -1
  store ptr %226, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_attributes__fetch_attrs(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1, %19
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 65280
  %27 = icmp ne i32 %26, 0
  %28 = and i32 %25, 255
  %29 = icmp eq i32 %28, 8
  %30 = or i1 %27, %29
  %31 = and i32 %25, 16777471
  %32 = icmp eq i32 %31, 16777226
  %33 = or i1 %32, %30
  %34 = and i32 %25, 2048
  %35 = icmp ne i32 %34, 0
  %36 = and i1 %35, %33
  br i1 %36, label %37, label %18

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %78

44:                                               ; preds = %37
  %45 = load ptr, ptr %39, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.xpvcv, ptr %45, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !49
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %15 to i64
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %54, 8
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #4
  br label %58

58:                                               ; preds = %50, %56
  %59 = phi ptr [ %57, %56 ], [ %15, %50 ]
  %60 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.9, i64 noundef 6, i32 noundef 524288) #4
  %61 = getelementptr inbounds ptr, ptr %59, i64 1
  store ptr %60, ptr %61, align 8, !tbaa !35
  br label %62

62:                                               ; preds = %58, %44
  %63 = phi ptr [ %61, %58 ], [ %15, %44 ]
  %64 = and i32 %47, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %63 to i64
  %70 = sub i64 %68, %69
  %71 = icmp slt i64 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = tail call ptr @Perl_stack_grow(ptr noundef %63, ptr noundef %63, i64 noundef 1) #4
  br label %74

74:                                               ; preds = %66, %72
  %75 = phi ptr [ %73, %72 ], [ %63, %66 ]
  %76 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.10, i64 noundef 6, i32 noundef 524288) #4
  %77 = getelementptr inbounds ptr, ptr %75, i64 1
  store ptr %76, ptr %77, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %37, %62, %74
  %79 = phi ptr [ %77, %74 ], [ %63, %62 ], [ %15, %37 ]
  store ptr %79, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_attributes__guess_stash(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 6
  %15 = load i8, ptr %14, align 1, !tbaa !56
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @Perl_sv_newmortal() #4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = and i64 %12, 34359738360
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %31
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  store ptr %27, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !41
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %37, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  %46 = and i32 %37, 2048
  %47 = icmp ne i32 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %30

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !41
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %51, align 8, !tbaa !44
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !61
  %61 = and i32 %60, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %187, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = load ptr, ptr %58, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct.xpvhv, ptr %66, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !64
  %69 = getelementptr ptr, ptr %65, i64 %68
  %70 = getelementptr ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  br i1 %72, label %187, label %73

73:                                               ; preds = %63
  %74 = getelementptr i8, ptr %69, i64 36
  %75 = load i32, ptr %74, align 4, !tbaa !66
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %187, label %184

77:                                               ; preds = %49
  %78 = trunc i32 %53 to i8
  switch i8 %78, label %162 [
    i8 13, label %79
    i8 9, label %145
  ]

79:                                               ; preds = %77
  %80 = load ptr, ptr %51, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.xpvcv, ptr %80, i64 0, i32 12
  %82 = load i32, ptr %81, align 4, !tbaa !49
  %83 = and i32 %82, 32768
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %51) #4
  br label %90

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.xpvcv, ptr %80, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !43
  br label %90

90:                                               ; preds = %85, %87
  %91 = phi ptr [ %86, %85 ], [ %89, %87 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %142, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %51, align 8, !tbaa !51
  %95 = getelementptr inbounds %struct.xpvcv, ptr %94, i64 0, i32 12
  %96 = load i32, ptr %95, align 4, !tbaa !49
  %97 = and i32 %96, 32768
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %51) #4
  br label %104

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.xpvcv, ptr %94, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  br label %104

104:                                              ; preds = %99, %101
  %105 = phi ptr [ %100, %99 ], [ %103, %101 ]
  %106 = getelementptr inbounds %struct.gv, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !68
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %142

110:                                              ; preds = %104
  %111 = load ptr, ptr %51, align 8, !tbaa !51
  %112 = getelementptr inbounds %struct.xpvcv, ptr %111, i64 0, i32 12
  %113 = load i32, ptr %112, align 4, !tbaa !49
  %114 = and i32 %113, 32768
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %51) #4
  br label %121

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.xpvcv, ptr %111, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !43
  br label %121

121:                                              ; preds = %116, %118
  %122 = phi ptr [ %117, %116 ], [ %120, %118 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !70
  %124 = getelementptr inbounds %struct.xpvgv, ptr %123, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  %126 = icmp eq ptr %125, null
  br i1 %126, label %142, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %51, align 8, !tbaa !51
  %129 = getelementptr inbounds %struct.xpvcv, ptr %128, i64 0, i32 12
  %130 = load i32, ptr %129, align 4, !tbaa !49
  %131 = and i32 %130, 32768
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %51) #4
  br label %138

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.xpvcv, ptr %128, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !43
  br label %138

138:                                              ; preds = %133, %135
  %139 = phi ptr [ %134, %133 ], [ %137, %135 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !70
  %141 = getelementptr inbounds %struct.xpvgv, ptr %140, i64 0, i32 5
  br label %159

142:                                              ; preds = %121, %104, %90
  %143 = load ptr, ptr %51, align 8, !tbaa !44
  %144 = getelementptr inbounds %struct.xpvcv, ptr %143, i64 0, i32 4
  br label %159

145:                                              ; preds = %77
  %146 = and i32 %53, 49152
  %147 = icmp eq i32 %146, 32768
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = icmp eq ptr %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !71
  %155 = icmp eq ptr %154, null
  %156 = select i1 %155, ptr %51, ptr %154
  %157 = load ptr, ptr %156, align 8, !tbaa !70
  %158 = getelementptr inbounds %struct.xpvgv, ptr %157, i64 0, i32 5
  br label %159

159:                                              ; preds = %138, %142, %152
  %160 = phi ptr [ %158, %152 ], [ %144, %142 ], [ %141, %138 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  br label %162

162:                                              ; preds = %159, %77, %145, %148
  %163 = phi ptr [ null, %77 ], [ null, %148 ], [ null, %145 ], [ %161, %159 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %189, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.hv, ptr %163, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !61
  %168 = and i32 %167, 33554432
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %187, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.hv, ptr %163, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !43
  %173 = load ptr, ptr %163, align 8, !tbaa !63
  %174 = getelementptr inbounds %struct.xpvhv, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !64
  %176 = getelementptr ptr, ptr %172, i64 %175
  %177 = getelementptr ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %170
  %181 = getelementptr i8, ptr %176, i64 36
  %182 = load i32, ptr %181, align 4, !tbaa !66
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180, %73
  %185 = phi ptr [ %71, %73 ], [ %178, %180 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !35
  br label %187

187:                                              ; preds = %184, %170, %165, %180, %63, %56, %73
  %188 = phi ptr [ null, %63 ], [ null, %56 ], [ %71, %73 ], [ null, %170 ], [ null, %165 ], [ %178, %180 ], [ %186, %184 ]
  tail call void @Perl_sv_sethek(ptr noundef %27, ptr noundef %188) #4
  br label %189

189:                                              ; preds = %187, %162
  %190 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !41
  %192 = and i32 %191, 4194304
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = tail call i32 @Perl_mg_set(ptr noundef %27) #4
  br label %196

196:                                              ; preds = %194, %189
  %197 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %198 = getelementptr inbounds ptr, ptr %197, i64 %33
  store ptr %198, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_attributes_reftype(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 6
  %15 = load i8, ptr %14, align 1, !tbaa !56
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %26

24:                                               ; preds = %1
  %25 = tail call ptr @Perl_sv_newmortal() #4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = and i64 %12, 34359738360
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %42
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  store ptr %27, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !41
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = tail call i32 @Perl_mg_get(ptr noundef %35) #4
  br label %42

42:                                               ; preds = %31, %40
  %43 = load i32, ptr %36, align 4, !tbaa !41
  %44 = and i32 %43, 65280
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %43, 255
  %47 = icmp eq i32 %46, 8
  %48 = or i1 %45, %47
  %49 = and i32 %43, 16777471
  %50 = icmp eq i32 %49, 16777226
  %51 = or i1 %50, %48
  %52 = and i32 %43, 2048
  %53 = icmp ne i32 %52, 0
  %54 = and i1 %53, %51
  br i1 %54, label %55, label %30

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = tail call ptr @Perl_sv_reftype(ptr noundef %57, i32 noundef 0) #4
  tail call void @Perl_sv_setpv(ptr noundef %27, ptr noundef %58) #4
  %59 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !41
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = tail call i32 @Perl_mg_set(ptr noundef %27) #4
  br label %65

65:                                               ; preds = %63, %55
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %67 = getelementptr inbounds ptr, ptr %66, i64 %33
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_validate_proto(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_cv_ckproto_len_flags(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !40, i64 12}
!42 = !{!"sv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!43 = !{!37, !37, i64 0}
!44 = !{!42, !36, i64 0}
!45 = !{!46, !47, i64 16}
!46 = !{!"xpv", !36, i64 0, !37, i64 8, !47, i64 16, !37, i64 24}
!47 = !{!"long", !37, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!50, !40, i64 92}
!50 = !{!"xpvcv", !36, i64 0, !37, i64 8, !47, i64 16, !37, i64 24, !36, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !36, i64 64, !37, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96}
!51 = !{!52, !36, i64 0}
!52 = !{!"cv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !37, i64 35}
!57 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35}
!58 = !{!57, !47, i64 24}
!59 = !{!60, !36, i64 0}
!60 = !{!"xpvmg", !36, i64 0, !37, i64 8, !47, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!61 = !{!62, !40, i64 12}
!62 = !{!"hv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!63 = !{!62, !36, i64 0}
!64 = !{!65, !47, i64 24}
!65 = !{!"xpvhv", !36, i64 0, !37, i64 8, !47, i64 16, !47, i64 24}
!66 = !{!67, !40, i64 28}
!67 = !{!"xpvhv_aux", !37, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!68 = !{!69, !40, i64 12}
!69 = !{!"gv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!70 = !{!69, !36, i64 0}
!71 = !{!72, !36, i64 56}
!72 = !{!"gp", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !40, i64 67, !36, i64 72}
