; ModuleID = 'cpan/MIME-Base64/Base64.c'
source_filename = "cpan/MIME-Base64/Base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%union._xnvu = type { double }

@.str = private unnamed_addr constant [26 x i8] c"cpan/MIME-Base64/Base64.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"MIME::Base64::encode_base64\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"MIME::Base64::decode_base64\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"MIME::Base64::encoded_base64_length\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"MIME::Base64::decoded_base64_length\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::encode_qp\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::decode_qp\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"sv, ...\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@basis_64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@index_64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FE\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"=%02X\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_MIME__Base64(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_MIME__Base64_encode_base64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_MIME__Base64_decode_base64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_MIME__Base64_encoded_base64_length, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_MIME__Base64_decoded_base64_length, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_MIME__QuotedPrint_encode_qp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_MIME__QuotedPrint_decode_qp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__Base64_encode_base64(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %7 = load i32, ptr %5, align 4, !tbaa !39
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 536870912
  %27 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %23, i1 noundef zeroext false) #5
  %28 = load i32, ptr %24, align 4, !tbaa !41
  %29 = and i32 %28, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load ptr, ptr %23, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !44
  store i64 %34, ptr %3, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  br label %39

37:                                               ; preds = %19
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 2) #5
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %36, %31 ], [ %38, %37 ]
  %41 = load i64, ptr %3, align 8, !tbaa !47
  %42 = icmp sgt i32 %16, 1
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %45 = sext i32 %7 to i64
  %46 = getelementptr ptr, ptr %44, i64 %45
  %47 = getelementptr ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !41
  %51 = and i32 %50, 65280
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %50, 255
  %54 = icmp eq i32 %53, 8
  %55 = or i1 %52, %54
  %56 = and i32 %50, 16777471
  %57 = icmp eq i32 %56, 16777226
  %58 = or i1 %57, %55
  br i1 %58, label %59, label %70

59:                                               ; preds = %43
  %60 = and i32 %50, 2098176
  %61 = icmp eq i32 %60, 1024
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %48, align 8, !tbaa !43
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !44
  store i64 %65, ptr %2, align 8, !tbaa !47
  %66 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  br label %71

68:                                               ; preds = %59
  %69 = call ptr @Perl_sv_2pv_flags(ptr noundef %48, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %71

70:                                               ; preds = %43, %39
  store i64 1, ptr %2, align 8, !tbaa !47
  br label %71

71:                                               ; preds = %62, %68, %70
  %72 = phi ptr [ @.str.12, %70 ], [ %67, %62 ], [ %69, %68 ]
  %73 = add nsw i64 %41, 2
  %74 = sdiv i64 %73, 3
  %75 = shl nsw i64 %74, 2
  store i64 %75, ptr %3, align 8, !tbaa !47
  %76 = add i64 %41, 4
  %77 = icmp ult i64 %76, 5
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = add i64 %75, -1
  %80 = udiv i64 %79, 76
  %81 = add nuw nsw i64 %80, 1
  %82 = load i64, ptr %2, align 8, !tbaa !47
  %83 = mul i64 %82, %81
  %84 = add i64 %83, %75
  store i64 %84, ptr %3, align 8, !tbaa !47
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i64, ptr %3, align 8
  %87 = call i64 @llvm.umax.i64(i64 %86, i64 1)
  %88 = call ptr @Perl_newSV(i64 noundef %87) #5
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !41
  %91 = or i32 %90, 17408
  store i32 %91, ptr %89, align 4, !tbaa !41
  %92 = load i64, ptr %3, align 8, !tbaa !47
  %93 = load ptr, ptr %88, align 8, !tbaa !43
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  store i64 %92, ptr %94, align 8, !tbaa !44
  %95 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = icmp sgt i64 %41, 0
  br i1 %97, label %98, label %176

98:                                               ; preds = %85, %170
  %99 = phi ptr [ %171, %170 ], [ %40, %85 ]
  %100 = phi i64 [ %173, %170 ], [ %41, %85 ]
  %101 = phi ptr [ %172, %170 ], [ %96, %85 ]
  %102 = phi i32 [ %174, %170 ], [ 0, %85 ]
  %103 = icmp eq i32 %102, 19
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i64, ptr %2, align 8, !tbaa !47
  %106 = getelementptr inbounds i8, ptr %72, i64 %105
  %107 = icmp sgt i64 %105, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104, %108
  %109 = phi ptr [ %111, %108 ], [ %72, %104 ]
  %110 = phi ptr [ %113, %108 ], [ %101, %104 ]
  %111 = getelementptr inbounds i8, ptr %109, i64 1
  %112 = load i8, ptr %109, align 1, !tbaa !48
  %113 = getelementptr inbounds i8, ptr %110, i64 1
  store i8 %112, ptr %110, align 1, !tbaa !48
  %114 = icmp ult ptr %111, %106
  br i1 %114, label %108, label %115, !llvm.loop !49

115:                                              ; preds = %108, %104, %98
  %116 = phi i32 [ %102, %98 ], [ 0, %104 ], [ 0, %108 ]
  %117 = phi ptr [ %101, %98 ], [ %101, %104 ], [ %113, %108 ]
  %118 = getelementptr inbounds i8, ptr %99, i64 1
  %119 = load i8, ptr %99, align 1, !tbaa !48
  %120 = icmp eq i64 %100, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, ptr %99, i64 2
  %123 = load i8, ptr %118, align 1, !tbaa !48
  br label %124

124:                                              ; preds = %115, %121
  %125 = phi ptr [ %122, %121 ], [ %118, %115 ]
  %126 = phi i8 [ %123, %121 ], [ 0, %115 ]
  %127 = zext i8 %119 to i32
  %128 = lshr i32 %127, 2
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !48
  %132 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %131, ptr %117, align 1, !tbaa !48
  %133 = shl nuw nsw i32 %127, 4
  %134 = and i32 %133, 48
  %135 = zext i8 %126 to i32
  %136 = lshr i32 %135, 4
  %137 = or disjoint i32 %136, %134
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !48
  %141 = getelementptr inbounds i8, ptr %117, i64 2
  store i8 %140, ptr %132, align 1, !tbaa !48
  %142 = icmp sgt i64 %100, 2
  br i1 %142, label %143, label %159

143:                                              ; preds = %124
  %144 = getelementptr inbounds i8, ptr %125, i64 1
  %145 = load i8, ptr %125, align 1, !tbaa !48
  %146 = shl nuw nsw i32 %135, 2
  %147 = and i32 %146, 60
  %148 = zext i8 %145 to i32
  %149 = lshr i32 %148, 6
  %150 = or disjoint i32 %149, %147
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !48
  %154 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 %153, ptr %141, align 1, !tbaa !48
  %155 = and i32 %148, 63
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !48
  store i8 %158, ptr %154, align 1, !tbaa !48
  br label %170

159:                                              ; preds = %124
  %160 = icmp eq i64 %100, 2
  br i1 %160, label %161, label %168

161:                                              ; preds = %159
  %162 = shl nuw nsw i32 %135, 2
  %163 = and i32 %162, 60
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [65 x i8], ptr @basis_64, i64 0, i64 %164
  %166 = load i8, ptr %165, align 4, !tbaa !48
  %167 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 %166, ptr %141, align 1, !tbaa !48
  store i8 61, ptr %167, align 1, !tbaa !48
  br label %170

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 61, ptr %141, align 1, !tbaa !48
  store i8 61, ptr %169, align 1, !tbaa !48
  br label %170

170:                                              ; preds = %143, %168, %161
  %171 = phi ptr [ %144, %143 ], [ %125, %161 ], [ %125, %168 ]
  %172 = getelementptr inbounds i8, ptr %117, i64 4
  %173 = add nsw i64 %100, -3
  %174 = add nsw i32 %116, 1
  %175 = icmp sgt i64 %100, 3
  br i1 %175, label %98, label %176, !llvm.loop !52

176:                                              ; preds = %170, %85
  %177 = phi ptr [ %96, %85 ], [ %172, %170 ]
  %178 = load i64, ptr %3, align 8, !tbaa !47
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %176
  %181 = load i64, ptr %2, align 8, !tbaa !47
  %182 = getelementptr inbounds i8, ptr %72, i64 %181
  %183 = icmp sgt i64 %181, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180, %184
  %185 = phi ptr [ %187, %184 ], [ %72, %180 ]
  %186 = phi ptr [ %189, %184 ], [ %177, %180 ]
  %187 = getelementptr inbounds i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !48
  %189 = getelementptr inbounds i8, ptr %186, i64 1
  store i8 %188, ptr %186, align 1, !tbaa !48
  %190 = icmp ult ptr %187, %182
  br i1 %190, label %184, label %191, !llvm.loop !53

191:                                              ; preds = %184, %180, %176
  %192 = phi ptr [ %177, %176 ], [ %177, %180 ], [ %189, %184 ]
  store i8 0, ptr %192, align 1, !tbaa !48
  %193 = icmp eq i32 %26, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %23, i32 noundef 2, i64 noundef 0) #5
  br label %196

196:                                              ; preds = %194, %191
  %197 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %88) #5
  %198 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %199 = getelementptr inbounds ptr, ptr %198, i64 %21
  store ptr %197, ptr %199, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %200 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %201 = getelementptr inbounds ptr, ptr %200, i64 %21
  store ptr %201, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__Base64_decode_base64(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8], align 1
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %7 = load i32, ptr %5, align 4, !tbaa !39
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = and i64 %14, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !44
  store i64 %30, ptr %2, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  br label %35

33:                                               ; preds = %18
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = load i64, ptr %2, align 8, !tbaa !47
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %39 = mul i64 %37, 3
  %40 = lshr i64 %39, 2
  %41 = icmp ult i64 %39, 4
  %42 = select i1 %41, i64 1, i64 %40
  %43 = call ptr @Perl_newSV(i64 noundef %42) #5
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !41
  %46 = or i32 %45, 17408
  store i32 %46, ptr %44, align 4, !tbaa !41
  %47 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %50 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %51 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %52 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %53 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  br label %54

54:                                               ; preds = %114, %35
  %55 = phi ptr [ %48, %35 ], [ %115, %114 ]
  %56 = phi ptr [ %36, %35 ], [ %61, %114 ]
  %57 = icmp ult ptr %56, %38
  br i1 %57, label %58, label %118

58:                                               ; preds = %54, %84
  %59 = phi i32 [ %72, %84 ], [ 0, %54 ]
  %60 = phi ptr [ %61, %84 ], [ %56, %54 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  %62 = load i8, ptr %60, align 1, !tbaa !48
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i8], ptr @index_64, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !48
  %66 = icmp eq i8 %65, -1
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = add nsw i32 %59, 1
  %69 = sext i32 %59 to i64
  %70 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 %69
  store i8 %65, ptr %70, align 1, !tbaa !48
  br label %71

71:                                               ; preds = %67, %58
  %72 = phi i32 [ %68, %67 ], [ %59, %58 ]
  %73 = icmp eq ptr %61, %38
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = icmp slt i32 %72, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = icmp slt i32 %72, 2
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = icmp eq i32 %72, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  store i8 -2, ptr %49, align 1, !tbaa !48
  br label %81

81:                                               ; preds = %80, %78
  store i8 -2, ptr %50, align 1, !tbaa !48
  br label %82

82:                                               ; preds = %71, %74, %81, %76
  %83 = phi i32 [ 6, %76 ], [ 4, %81 ], [ 4, %74 ], [ 0, %71 ]
  switch i32 %83, label %114 [
    i32 0, label %84
    i32 4, label %86
  ]

84:                                               ; preds = %82
  %85 = icmp slt i32 %72, 4
  br i1 %85, label %58, label %86, !llvm.loop !54

86:                                               ; preds = %84, %82
  %87 = load i8, ptr %3, align 1, !tbaa !48
  %88 = icmp eq i8 %87, -2
  %89 = load i8, ptr %51, align 1
  %90 = icmp eq i8 %89, -2
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %114, label %92

92:                                               ; preds = %86
  %93 = shl i8 %87, 2
  %94 = lshr i8 %89, 4
  %95 = and i8 %94, 3
  %96 = or disjoint i8 %95, %93
  %97 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %96, ptr %55, align 1, !tbaa !48
  %98 = load i8, ptr %52, align 1, !tbaa !48
  %99 = icmp eq i8 %98, -2
  br i1 %99, label %114, label %100

100:                                              ; preds = %92
  %101 = load i8, ptr %51, align 1, !tbaa !48
  %102 = shl i8 %101, 4
  %103 = lshr i8 %98, 2
  %104 = and i8 %103, 15
  %105 = or disjoint i8 %102, %104
  %106 = getelementptr inbounds i8, ptr %55, i64 2
  store i8 %105, ptr %97, align 1, !tbaa !48
  %107 = load i8, ptr %53, align 1, !tbaa !48
  %108 = icmp eq i8 %107, -2
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = load i8, ptr %52, align 1, !tbaa !48
  %111 = shl i8 %110, 6
  %112 = or i8 %111, %107
  %113 = getelementptr inbounds i8, ptr %55, i64 3
  store i8 %112, ptr %106, align 1, !tbaa !48
  br label %114

114:                                              ; preds = %82, %86, %100, %92, %109
  %115 = phi ptr [ %113, %109 ], [ %97, %92 ], [ %106, %100 ], [ %55, %86 ], [ %55, %82 ]
  %116 = phi i32 [ 0, %109 ], [ 3, %92 ], [ 3, %100 ], [ 3, %86 ], [ %83, %82 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %54, label %118

118:                                              ; preds = %114, %54
  %119 = phi ptr [ %55, %54 ], [ %115, %114 ]
  %120 = load ptr, ptr %47, align 8, !tbaa !48
  %121 = ptrtoint ptr %119 to i64
  %122 = ptrtoint ptr %120 to i64
  %123 = sub i64 %121, %122
  %124 = load ptr, ptr %43, align 8, !tbaa !43
  %125 = getelementptr inbounds %struct.xpv, ptr %124, i64 0, i32 2
  store i64 %123, ptr %125, align 8, !tbaa !44
  store i8 0, ptr %119, align 1, !tbaa !48
  %126 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %43) #5
  %127 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %128 = getelementptr inbounds ptr, ptr %127, i64 %20
  store ptr %126, ptr %128, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %129 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %130 = getelementptr inbounds ptr, ptr %129, i64 %20
  store ptr %130, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__Base64_encoded_base64_length(ptr noundef %0) #0 !prof !34 {
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
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !55
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !41
  %39 = and i32 %38, 536870912
  %40 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %21, i1 noundef zeroext false) #5
  %41 = load ptr, ptr %21, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !44
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %21, i32 noundef 2, i64 noundef 0) #5
  br label %47

47:                                               ; preds = %45, %35
  %48 = icmp sgt i32 %14, 1
  br i1 %48, label %49, label %69

49:                                               ; preds = %47
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %51 = getelementptr ptr, ptr %50, i64 %8
  %52 = getelementptr ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !41
  %56 = and i32 %55, 65280
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %55, 255
  %59 = icmp eq i32 %58, 8
  %60 = or i1 %57, %59
  %61 = and i32 %55, 16777471
  %62 = icmp eq i32 %61, 16777226
  %63 = or i1 %62, %60
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load ptr, ptr %53, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !44
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %47, %49, %64
  %70 = phi i32 [ %68, %64 ], [ 1, %49 ], [ 1, %47 ]
  %71 = add nsw i64 %43, 2
  %72 = sdiv i64 %71, 3
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = add nsw i32 %74, -1
  %78 = sdiv i32 %77, 76
  %79 = add nsw i32 %78, 1
  %80 = mul i32 %70, %79
  %81 = add i32 %80, %74
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %76, %69
  %84 = phi i64 [ %82, %76 ], [ 0, %69 ]
  %85 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  tail call void @Perl_sv_setiv(ptr noundef %36, i64 noundef %84) #5
  %86 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !41
  %88 = and i32 %87, 4194304
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = tail call i32 @Perl_mg_set(ptr noundef %36) #5
  br label %92

92:                                               ; preds = %83, %90
  %93 = getelementptr inbounds ptr, ptr %85, i64 %19
  store ptr %36, ptr %93, align 8, !tbaa !35
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %95 = getelementptr inbounds ptr, ptr %94, i64 %19
  store ptr %95, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__Base64_decoded_base64_length(ptr noundef %0) #0 !prof !34 {
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
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !44
  store i64 %29, ptr %2, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  br label %34

32:                                               ; preds = %17
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = load i64, ptr %2, align 8, !tbaa !47
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.op, ptr %38, i64 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !55
  %41 = and i8 %40, 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.op, ptr %38, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  br label %51

49:                                               ; preds = %34
  %50 = call ptr @Perl_sv_newmortal() #5
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %48, %43 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %74, %51
  %54 = phi i32 [ 0, %51 ], [ %75, %74 ]
  %55 = phi i32 [ 0, %51 ], [ %76, %74 ]
  %56 = phi ptr [ %35, %51 ], [ %59, %74 ]
  %57 = icmp ult ptr %56, %37
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1, !tbaa !48
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @index_64, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !48
  %64 = icmp eq i8 %63, -1
  br i1 %64, label %74, label %65, !llvm.loop !58

65:                                               ; preds = %58
  %66 = icmp eq i8 %60, 61
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = add nsw i32 %54, 1
  %69 = icmp ne i32 %54, 0
  %70 = icmp eq i32 %68, 4
  %71 = select i1 %70, i32 0, i32 %68
  %72 = zext i1 %69 to i32
  %73 = add nsw i32 %55, %72
  br label %74

74:                                               ; preds = %65, %58, %67
  %75 = phi i32 [ %71, %67 ], [ %54, %58 ], [ %54, %65 ]
  %76 = phi i32 [ %73, %67 ], [ %55, %58 ], [ %55, %65 ]
  %77 = phi i1 [ false, %67 ], [ false, %58 ], [ true, %65 ]
  br i1 %77, label %78, label %53

78:                                               ; preds = %74, %53
  %79 = phi i32 [ %55, %53 ], [ %76, %74 ]
  %80 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %81 = sext i32 %79 to i64
  call void @Perl_sv_setiv(ptr noundef %52, i64 noundef %81) #5
  %82 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !41
  %84 = and i32 %83, 4194304
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = call i32 @Perl_mg_set(ptr noundef %52) #5
  br label %88

88:                                               ; preds = %78, %86
  %89 = getelementptr inbounds ptr, ptr %80, i64 %19
  store ptr %52, ptr %89, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %90 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %91 = getelementptr inbounds ptr, ptr %90, i64 %19
  store ptr %91, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__QuotedPrint_encode_qp(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %7 = load i32, ptr %5, align 4, !tbaa !39
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 536870912
  %27 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %23, i1 noundef zeroext false) #5
  %28 = icmp sgt i32 %16, 1
  br i1 %28, label %29, label %56

29:                                               ; preds = %19
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %31 = sext i32 %7 to i64
  %32 = getelementptr ptr, ptr %30, i64 %31
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %45, label %56

45:                                               ; preds = %29
  %46 = and i32 %36, 2098176
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %34, align 8, !tbaa !43
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !44
  store i64 %51, ptr %2, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  br label %57

54:                                               ; preds = %45
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %57

56:                                               ; preds = %29, %19
  store i64 1, ptr %2, align 8, !tbaa !47
  br label %57

57:                                               ; preds = %48, %54, %56
  %58 = phi ptr [ @.str.12, %56 ], [ %53, %48 ], [ %55, %54 ]
  %59 = icmp sgt i32 %16, 2
  br i1 %59, label %60, label %123

60:                                               ; preds = %57
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %62 = sext i32 %7 to i64
  %63 = getelementptr ptr, ptr %61, i64 %62
  %64 = getelementptr ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %123, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !41
  %70 = and i32 %69, 2097152
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %65, i32 noundef 2) #5
  br label %123

74:                                               ; preds = %67
  %75 = and i32 %69, 65280
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %69, 255
  %78 = icmp eq i32 %77, 8
  %79 = or i1 %76, %78
  %80 = and i32 %69, 16777471
  %81 = icmp eq i32 %80, 16777226
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %123

83:                                               ; preds = %74
  %84 = and i32 %69, 1024
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %65, align 8, !tbaa !43
  %88 = icmp eq ptr %87, null
  br i1 %88, label %123, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !44
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %123, label %93

93:                                               ; preds = %89
  %94 = icmp eq i64 %91, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = load i8, ptr %97, align 1, !tbaa !48
  %99 = icmp ne i8 %98, 48
  br label %123

100:                                              ; preds = %83
  %101 = and i32 %69, 768
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %100
  %104 = and i32 %69, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %65, align 8, !tbaa !43
  %108 = getelementptr inbounds %struct.xpviv, ptr %107, i64 0, i32 4
  %109 = load i64, ptr %108, align 8, !tbaa !48
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %106, %103
  %112 = and i32 %69, 512
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %65, align 8, !tbaa !43
  %116 = getelementptr inbounds %struct.xpvnv, ptr %115, i64 0, i32 5
  %117 = load double, ptr %116, align 8, !tbaa !48
  %118 = fcmp uno double %117, 0.000000e+00
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = fcmp une double %117, 0.000000e+00
  br label %123

121:                                              ; preds = %100
  %122 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %65, i32 noundef 0) #5
  br label %123

123:                                              ; preds = %114, %72, %121, %74, %89, %95, %93, %86, %111, %119, %106, %60, %57
  %124 = phi i1 [ false, %57 ], [ false, %60 ], [ %73, %72 ], [ %122, %121 ], [ false, %74 ], [ false, %86 ], [ true, %89 ], [ false, %93 ], [ %99, %95 ], [ true, %106 ], [ false, %111 ], [ %120, %119 ], [ true, %114 ]
  %125 = load i32, ptr %24, align 4, !tbaa !41
  %126 = and i32 %125, 2098176
  %127 = icmp eq i32 %126, 1024
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load ptr, ptr %23, align 8, !tbaa !43
  %130 = getelementptr inbounds %struct.xpv, ptr %129, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !44
  store i64 %131, ptr %3, align 8, !tbaa !47
  %132 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  br label %136

134:                                              ; preds = %123
  %135 = call ptr @Perl_sv_2pv_flags(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 2) #5
  br label %136

136:                                              ; preds = %134, %128
  %137 = phi ptr [ %133, %128 ], [ %135, %134 ]
  %138 = load i64, ptr %3, align 8, !tbaa !47
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = add i64 %138, 1
  %141 = call ptr @Perl_newSV(i64 noundef %140) #5
  call void @Perl_sv_setpv(ptr noundef %141, ptr noundef nonnull @.str.14) #5
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 3
  %143 = ptrtoint ptr %137 to i64
  %144 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  br label %145

145:                                              ; preds = %283, %136
  %146 = phi ptr [ %137, %136 ], [ %260, %283 ]
  %147 = phi i64 [ 0, %136 ], [ %259, %283 ]
  %148 = icmp ult ptr %146, %139
  br i1 %148, label %149, label %160

149:                                              ; preds = %145, %157
  %150 = phi ptr [ %158, %157 ], [ %146, %145 ]
  %151 = load i8, ptr %150, align 1, !tbaa !48
  %152 = freeze i8 %151
  %153 = icmp eq i8 %152, 9
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = icmp slt i8 %152, 32
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  switch i8 %152, label %157 [
    i8 127, label %160
    i8 61, label %160
  ]

157:                                              ; preds = %156, %149
  %158 = getelementptr inbounds i8, ptr %150, i64 1
  %159 = icmp ult ptr %158, %139
  br i1 %159, label %149, label %160, !llvm.loop !59

160:                                              ; preds = %157, %154, %156, %156, %145
  %161 = phi ptr [ %146, %145 ], [ %158, %157 ], [ %150, %154 ], [ %150, %156 ], [ %150, %156 ]
  %162 = icmp eq ptr %161, %139
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i8, ptr %161, align 1, !tbaa !48
  %165 = icmp eq i8 %164, 10
  %166 = icmp ugt ptr %161, %146
  %167 = and i1 %165, %166
  br i1 %167, label %170, label %177

168:                                              ; preds = %160
  %169 = icmp ugt ptr %161, %146
  br i1 %169, label %170, label %177

170:                                              ; preds = %168, %163
  br label %171

171:                                              ; preds = %170, %175
  %172 = phi ptr [ %173, %175 ], [ %161, %170 ]
  %173 = getelementptr inbounds i8, ptr %172, i64 -1
  %174 = load i8, ptr %173, align 1, !tbaa !48
  switch i8 %174, label %177 [
    i8 9, label %175
    i8 32, label %175
  ]

175:                                              ; preds = %171, %171
  %176 = icmp ugt ptr %173, %146
  br i1 %176, label %171, label %177, !llvm.loop !60

177:                                              ; preds = %175, %171, %168, %163
  %178 = phi ptr [ %161, %163 ], [ %161, %168 ], [ %172, %171 ], [ %173, %175 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = ptrtoint ptr %146 to i64
  %181 = sub i64 %179, %180
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %204, label %183

183:                                              ; preds = %177
  %184 = load i64, ptr %2, align 8, !tbaa !47
  %185 = icmp ne i64 %184, 0
  %186 = sub i64 75, %147
  %187 = icmp ugt i64 %181, %186
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %197

189:                                              ; preds = %183, %189
  %190 = phi i64 [ 75, %189 ], [ %186, %183 ]
  %191 = phi ptr [ %193, %189 ], [ %146, %183 ]
  %192 = phi i64 [ %194, %189 ], [ %181, %183 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %191, i64 noundef %190, i32 noundef 2) #5
  %193 = getelementptr inbounds i8, ptr %191, i64 %190
  %194 = sub i64 %192, %190
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %195 = load i64, ptr %2, align 8, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %195, i32 noundef 2) #5
  %196 = icmp ugt i64 %194, 75
  br i1 %196, label %189, label %197, !llvm.loop !61

197:                                              ; preds = %189, %183
  %198 = phi i64 [ %181, %183 ], [ %194, %189 ]
  %199 = phi ptr [ %146, %183 ], [ %193, %189 ]
  %200 = phi i64 [ %147, %183 ], [ 0, %189 ]
  %201 = icmp eq i64 %198, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %199, i64 noundef %198, i32 noundef 2) #5
  %203 = add i64 %200, %198
  br label %204

204:                                              ; preds = %197, %202, %177
  %205 = phi i64 [ %203, %202 ], [ %200, %197 ], [ %147, %177 ]
  %206 = icmp eq ptr %178, %139
  br i1 %206, label %284, label %207

207:                                              ; preds = %204
  %208 = load i8, ptr %178, align 1, !tbaa !48
  %209 = icmp eq i8 %208, 10
  %210 = load i64, ptr %2, align 8
  %211 = icmp ne i64 %210, 0
  %212 = select i1 %209, i1 %211, i1 false
  %213 = xor i1 %212, true
  %214 = select i1 %213, i1 true, i1 %124
  br i1 %214, label %239, label %215

215:                                              ; preds = %207
  %216 = icmp eq i64 %205, 1
  br i1 %216, label %217, label %238

217:                                              ; preds = %215
  %218 = load ptr, ptr %141, align 8, !tbaa !43
  %219 = getelementptr inbounds %struct.xpv, ptr %218, i64 0, i32 2
  %220 = load i64, ptr %219, align 8, !tbaa !44
  %221 = add i64 %210, 1
  %222 = icmp ugt i64 %220, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %217
  %224 = load ptr, ptr %142, align 8, !tbaa !48
  %225 = getelementptr inbounds i8, ptr %224, i64 %220
  %226 = sub i64 0, %210
  %227 = getelementptr inbounds i8, ptr %225, i64 %226
  %228 = getelementptr inbounds i8, ptr %227, i64 -2
  %229 = load i8, ptr %228, align 1, !tbaa !48
  %230 = icmp eq i8 %229, 61
  br i1 %230, label %231, label %238

231:                                              ; preds = %223
  %232 = getelementptr inbounds i8, ptr %225, i64 -1
  %233 = load i8, ptr %232, align 1, !tbaa !48
  store i8 %233, ptr %228, align 1, !tbaa !48
  %234 = load ptr, ptr %141, align 8, !tbaa !43
  %235 = getelementptr inbounds %struct.xpv, ptr %234, i64 0, i32 2
  %236 = load i64, ptr %235, align 8, !tbaa !44
  %237 = add i64 %236, -1
  store i64 %237, ptr %235, align 8, !tbaa !44
  br label %258

238:                                              ; preds = %223, %217, %215
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %210, i32 noundef 2) #5
  br label %258

239:                                              ; preds = %207
  %240 = icmp ugt i64 %205, 72
  %241 = select i1 %211, i1 %240, i1 false
  br i1 %241, label %242, label %253

242:                                              ; preds = %239
  %243 = icmp eq i64 %205, 73
  br i1 %243, label %244, label %251

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %178, i64 1
  %246 = icmp ult ptr %245, %139
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i8, ptr %245, align 1, !tbaa !48
  %249 = icmp ne i8 %248, 10
  %250 = select i1 %249, i1 true, i1 %124
  br i1 %250, label %251, label %253

251:                                              ; preds = %247, %244, %242
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %252 = load i64, ptr %2, align 8, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef %58, i64 noundef %252, i32 noundef 2) #5
  br label %253

253:                                              ; preds = %247, %251, %239
  %254 = phi i64 [ 0, %251 ], [ 73, %247 ], [ %205, %239 ]
  %255 = load i8, ptr %178, align 1, !tbaa !48
  %256 = zext i8 %255 to i32
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %141, ptr noundef nonnull @.str.16, i32 noundef %256) #5
  %257 = add i64 %254, 3
  br label %258

258:                                              ; preds = %231, %238, %253
  %259 = phi i64 [ %257, %253 ], [ 0, %238 ], [ 0, %231 ]
  %260 = getelementptr inbounds i8, ptr %178, i64 1
  %261 = load ptr, ptr %141, align 8, !tbaa !43
  %262 = getelementptr inbounds %struct.xpv, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !48
  %264 = icmp ugt i64 %263, 80
  br i1 %264, label %265, label %283

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.xpv, ptr %261, i64 0, i32 2
  %267 = load i64, ptr %266, align 8, !tbaa !44
  %268 = sub i64 %263, %267
  %269 = icmp ult i64 %268, 3
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load i64, ptr %3, align 8, !tbaa !47
  %272 = mul i64 %271, %267
  %273 = ptrtoint ptr %260 to i64
  %274 = sub i64 %273, %143
  %275 = udiv i64 %272, %274
  %276 = load i32, ptr %144, align 4, !tbaa !41
  %277 = and i32 %276, 268435456
  %278 = icmp ne i32 %277, 0
  %279 = icmp ult i64 %263, %275
  %280 = select i1 %278, i1 true, i1 %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %270
  %282 = call ptr @Perl_sv_grow(ptr noundef nonnull %141, i64 noundef %275) #5
  br label %283

283:                                              ; preds = %281, %270, %265, %258
  br label %145, !llvm.loop !62

284:                                              ; preds = %204
  %285 = load ptr, ptr %141, align 8, !tbaa !43
  %286 = getelementptr inbounds %struct.xpv, ptr %285, i64 0, i32 2
  %287 = load i64, ptr %286, align 8, !tbaa !44
  %288 = icmp ne i64 %287, 0
  %289 = load i64, ptr %2, align 8
  %290 = icmp ne i64 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  %292 = icmp ne i64 %205, 0
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %294, label %296

294:                                              ; preds = %284
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %141, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 2) #5
  %295 = load i64, ptr %2, align 8, !tbaa !47
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %141, ptr noundef %58, i64 noundef %295, i32 noundef 2) #5
  br label %296

296:                                              ; preds = %294, %284
  %297 = icmp eq i32 %26, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %296
  %299 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %23, i32 noundef 2, i64 noundef 0) #5
  br label %300

300:                                              ; preds = %298, %296
  %301 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %141) #5
  %302 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %303 = getelementptr inbounds ptr, ptr %302, i64 %21
  store ptr %301, ptr %303, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %304 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %305 = getelementptr inbounds ptr, ptr %304, i64 %21
  store ptr %305, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_MIME__QuotedPrint_decode_qp(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8], align 1
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %7 = load i32, ptr %5, align 4, !tbaa !39
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = and i64 %14, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = and i32 %24, 538969088
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !44
  store i64 %30, ptr %2, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  br label %35

33:                                               ; preds = %18
  %34 = call ptr @Perl_sv_2pvbyte(ptr noundef %22, ptr noundef nonnull %2) #5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = load i64, ptr %2, align 8
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = call i64 @llvm.umax.i64(i64 %37, i64 1)
  %40 = call ptr @Perl_newSV(i64 noundef %39) #5
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !41
  %43 = or i32 %42, 17408
  store i32 %43, ptr %41, align 4, !tbaa !41
  %44 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp sgt i64 %37, 0
  br i1 %46, label %47, label %147

47:                                               ; preds = %35, %142
  %48 = phi ptr [ %145, %142 ], [ %36, %35 ]
  %49 = phi ptr [ %144, %142 ], [ null, %35 ]
  %50 = phi ptr [ %143, %142 ], [ %45, %35 ]
  %51 = ptrtoint ptr %48 to i64
  %52 = ptrtoint ptr %49 to i64
  %53 = load i8, ptr %48, align 1, !tbaa !48
  switch i8 %53, label %69 [
    i8 32, label %54
    i8 9, label %54
    i8 13, label %58
    i8 10, label %66
  ]

54:                                               ; preds = %47, %47
  %55 = icmp eq ptr %49, null
  %56 = select i1 %55, ptr %48, ptr %49
  %57 = getelementptr inbounds i8, ptr %48, i64 1
  br label %142

58:                                               ; preds = %47
  %59 = getelementptr inbounds i8, ptr %48, i64 1
  %60 = icmp ult ptr %59, %38
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8, ptr %59, align 1, !tbaa !48
  %63 = icmp eq i8 %62, 10
  br i1 %63, label %142, label %64

64:                                               ; preds = %61, %58
  %65 = icmp eq i8 %53, 10
  br i1 %65, label %66, label %69

66:                                               ; preds = %47, %64
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %53, ptr %50, align 1, !tbaa !48
  br label %142

69:                                               ; preds = %47, %64
  %70 = icmp ne ptr %49, null
  %71 = icmp ult ptr %49, %48
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = sub i64 %51, %52
  %75 = getelementptr i8, ptr %49, i64 %74
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi ptr [ %79, %76 ], [ %49, %73 ]
  %78 = phi ptr [ %81, %76 ], [ %50, %73 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 1
  %80 = load i8, ptr %77, align 1, !tbaa !48
  %81 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %80, ptr %78, align 1, !tbaa !48
  %82 = icmp eq ptr %79, %75
  br i1 %82, label %83, label %76, !llvm.loop !63

83:                                               ; preds = %76, %69
  %84 = phi ptr [ %50, %69 ], [ %81, %76 ]
  %85 = load i8, ptr %48, align 1, !tbaa !48
  %86 = icmp eq i8 %85, 61
  br i1 %86, label %87, label %139

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %48, i64 2
  %89 = icmp ult ptr %88, %38
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %48, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !48
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !39
  %96 = and i32 %95, 4096
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = load i8, ptr %88, align 1, !tbaa !48
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !39
  %103 = and i32 %102, 4096
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %107 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #5
  %108 = load i8, ptr %91, align 1, !tbaa !48
  store i8 %108, ptr %3, align 1, !tbaa !48
  %109 = getelementptr inbounds i8, ptr %48, i64 3
  %110 = load i8, ptr %88, align 1, !tbaa !48
  store i8 %110, ptr %106, align 1, !tbaa !48
  store i8 0, ptr %107, align 1, !tbaa !48
  %111 = call i64 @strtol(ptr nocapture noundef nonnull %3, ptr noundef null, i32 noundef 16) #5
  %112 = trunc i64 %111 to i8
  %113 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %112, ptr %84, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #5
  br label %142

114:                                              ; preds = %98, %90, %87
  %115 = getelementptr inbounds i8, ptr %48, i64 1
  %116 = icmp ult ptr %115, %38
  br i1 %116, label %117, label %125

117:                                              ; preds = %114, %120
  %118 = phi ptr [ %121, %120 ], [ %115, %114 ]
  %119 = load i8, ptr %118, align 1, !tbaa !48
  switch i8 %119, label %125 [
    i8 32, label %120
    i8 9, label %120
    i8 10, label %123
  ]

120:                                              ; preds = %117, %117
  %121 = getelementptr inbounds i8, ptr %118, i64 1
  %122 = icmp ult ptr %121, %38
  br i1 %122, label %117, label %125, !llvm.loop !64

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, ptr %118, i64 1
  br label %142

125:                                              ; preds = %120, %117, %114
  %126 = phi ptr [ %115, %114 ], [ %121, %120 ], [ %118, %117 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  %128 = icmp ult ptr %127, %38
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i8, ptr %126, align 1, !tbaa !48
  %131 = icmp eq i8 %130, 13
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i8, ptr %127, align 1, !tbaa !48
  %134 = icmp eq i8 %133, 10
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %126, i64 2
  br label %142

137:                                              ; preds = %132, %129, %125
  %138 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %85, ptr %84, align 1, !tbaa !48
  br label %142

139:                                              ; preds = %83
  %140 = getelementptr inbounds i8, ptr %48, i64 1
  %141 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %85, ptr %84, align 1, !tbaa !48
  br label %142

142:                                              ; preds = %123, %137, %135, %61, %139, %105, %66, %54
  %143 = phi ptr [ %50, %54 ], [ %68, %66 ], [ %113, %105 ], [ %141, %139 ], [ %50, %61 ], [ %84, %123 ], [ %84, %135 ], [ %138, %137 ]
  %144 = phi ptr [ %56, %54 ], [ null, %66 ], [ null, %105 ], [ null, %139 ], [ %49, %61 ], [ null, %123 ], [ null, %135 ], [ null, %137 ]
  %145 = phi ptr [ %57, %54 ], [ %67, %66 ], [ %109, %105 ], [ %140, %139 ], [ %59, %61 ], [ %124, %123 ], [ %136, %135 ], [ %115, %137 ]
  %146 = icmp ult ptr %145, %38
  br i1 %146, label %47, label %147, !llvm.loop !65

147:                                              ; preds = %142, %35
  %148 = phi ptr [ %45, %35 ], [ %143, %142 ]
  %149 = phi ptr [ null, %35 ], [ %144, %142 ]
  %150 = phi ptr [ %36, %35 ], [ %145, %142 ]
  %151 = icmp ne ptr %149, null
  %152 = icmp ult ptr %149, %150
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %154, label %166

154:                                              ; preds = %147
  %155 = ptrtoint ptr %149 to i64
  %156 = ptrtoint ptr %150 to i64
  %157 = sub i64 %156, %155
  %158 = getelementptr i8, ptr %149, i64 %157
  br label %159

159:                                              ; preds = %154, %159
  %160 = phi ptr [ %162, %159 ], [ %149, %154 ]
  %161 = phi ptr [ %164, %159 ], [ %148, %154 ]
  %162 = getelementptr inbounds i8, ptr %160, i64 1
  %163 = load i8, ptr %160, align 1, !tbaa !48
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  store i8 %163, ptr %161, align 1, !tbaa !48
  %165 = icmp eq ptr %162, %158
  br i1 %165, label %166, label %159, !llvm.loop !66

166:                                              ; preds = %159, %147
  %167 = phi ptr [ %148, %147 ], [ %164, %159 ]
  store i8 0, ptr %167, align 1, !tbaa !48
  %168 = load ptr, ptr %44, align 8, !tbaa !48
  %169 = ptrtoint ptr %167 to i64
  %170 = ptrtoint ptr %168 to i64
  %171 = sub i64 %169, %170
  %172 = load ptr, ptr %40, align 8, !tbaa !43
  %173 = getelementptr inbounds %struct.xpv, ptr %172, i64 0, i32 2
  store i64 %171, ptr %173, align 8, !tbaa !44
  %174 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %40) #5
  %175 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %176 = getelementptr inbounds ptr, ptr %175, i64 %20
  store ptr %174, ptr %176, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %177 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %178 = getelementptr inbounds ptr, ptr %177, i64 %20
  store ptr %178, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!43 = !{!42, !36, i64 0}
!44 = !{!45, !46, i64 16}
!45 = !{!"xpv", !36, i64 0, !37, i64 8, !46, i64 16, !37, i64 24}
!46 = !{!"long", !37, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!37, !37, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = distinct !{!53, !50, !51}
!54 = distinct !{!54, !50, !51}
!55 = !{!56, !37, i64 35}
!56 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35}
!57 = !{!56, !46, i64 24}
!58 = distinct !{!58, !50, !51}
!59 = distinct !{!59, !50, !51}
!60 = distinct !{!60, !50, !51}
!61 = distinct !{!61, !50, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
