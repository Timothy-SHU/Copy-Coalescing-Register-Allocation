; ModuleID = 'real.c'
source_filename = "real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"real.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"-0.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%c%cNaN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"e%+d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"p%+d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"QNaN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"SNaN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@_hex_value = external local_unnamed_addr constant [256 x i8], align 16
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@dconst_e_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@dconst_third_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@dconst1 = external global %struct.real_value, align 8
@dconst_sqrt2_ptr.value = internal global %struct.real_value zeroinitializer, align 8
@ieee_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@motorola_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 128, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@spu_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_single, ptr @decode_ieee_single, i32 2, i32 24, i32 24, i32 -125, i32 129, i32 31, i32 31, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8
@ieee_double_format = dso_local constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_double_format = dso_local constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@motorola_double_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_double, ptr @decode_ieee_double, i32 2, i32 53, i32 53, i32 -1021, i32 1024, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@ieee_extended_motorola_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_motorola, ptr @decode_ieee_extended_motorola, i32 2, i32 64, i32 64, i32 -16382, i32 16384, i32 95, i32 95, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 8
@ieee_extended_intel_96_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_96, ptr @decode_ieee_extended_intel_96, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_extended_intel_128_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_128, ptr @decode_ieee_extended_intel_128, i32 2, i32 64, i32 64, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_extended_intel_96_round_53_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_extended_intel_96, ptr @decode_ieee_extended_intel_96, i32 2, i32 53, i32 53, i32 -16381, i32 16384, i32 79, i32 79, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ibm_extended_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ibm_extended, ptr @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_extended_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ibm_extended, ptr @decode_ibm_extended, i32 2, i32 106, i32 53, i32 -968, i32 1024, i32 127, i32 -1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@ieee_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_quad, ptr @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@mips_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_quad, ptr @decode_ieee_quad, i32 2, i32 113, i32 113, i32 -16381, i32 16384, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1 }, align 8
@vax_f_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_f, ptr @decode_vax_f, i32 2, i32 24, i32 24, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@vax_d_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_d, ptr @decode_vax_d, i32 2, i32 56, i32 56, i32 -127, i32 127, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@vax_g_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_vax_g, ptr @decode_vax_g, i32 2, i32 53, i32 53, i32 -1023, i32 1023, i32 15, i32 15, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@decimal_single_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_single, ptr @decode_decimal_single, i32 10, i32 7, i32 7, i32 -94, i32 97, i32 31, i32 31, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@decimal_double_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_double, ptr @decode_decimal_double, i32 10, i32 16, i32 16, i32 -382, i32 385, i32 63, i32 63, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@decimal_quad_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_decimal_quad, ptr @decode_decimal_quad, i32 10, i32 34, i32 34, i32 -6142, i32 6145, i32 127, i32 127, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@ieee_half_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_half, ptr @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 16, i32 15, i32 15, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 8
@arm_half_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_ieee_half, ptr @decode_ieee_half, i32 2, i32 11, i32 11, i32 -13, i32 17, i32 15, i32 15, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 8
@real_internal_format = dso_local local_unnamed_addr constant %struct.real_format { ptr @encode_internal, ptr @decode_internal, i32 2, i32 190, i32 190, i32 -33554431, i32 33554431, i32 -1, i32 -1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, align 8
@real_sqrt.halfthree = internal global %struct.real_value zeroinitializer, align 8
@real_sqrt.init = internal unnamed_addr global i1 false, align 1
@dconsthalf = external global %struct.real_value, align 8
@dconstm1 = external global %struct.real_value, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"0x0.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"08ce\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"7bde\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@ten_to_ptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16
@ten_to_mptwo.tens = internal global [26 x %struct.real_value] zeroinitializer, align 16
@real_digit.num = internal global [10 x %struct.real_value] zeroinitializer, align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !61 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %4
  %15 = tail call zeroext i8 @decimal_real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #27
  br label %53

16:                                               ; preds = %10, %8
  switch i32 %1, label %52 [
    i32 63, label %17
    i32 64, label %19
    i32 65, label %21
    i32 75, label %23
    i32 80, label %25
    i32 81, label %35
    i32 79, label %45
    i32 82, label %48
    i32 77, label %51
  ]

17:                                               ; preds = %16
  %18 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0), !range !81
  br label %53

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 1), !range !81
  br label %53

21:                                               ; preds = %16
  %22 = tail call fastcc zeroext i8 @do_multiply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3)
  br label %53

23:                                               ; preds = %16
  %24 = tail call fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3), !range !81
  br label %53

25:                                               ; preds = %16
  %26 = load i32, ptr %3, align 8
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !82
  br label %53

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @do_compare(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef -1)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  br label %53

34:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !82
  br label %53

35:                                               ; preds = %16
  %36 = load i32, ptr %3, align 8
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !82
  br label %53

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @do_compare(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !82
  br label %53

44:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  br label %53

45:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %46 = load i32, ptr %0, align 8
  %47 = xor i32 %46, 8
  store i32 %47, ptr %0, align 8
  br label %53

48:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, -9
  store i32 %50, ptr %0, align 8
  br label %53

51:                                               ; preds = %16
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef nonnull %2)
  br label %53

52:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.1) #27
  br label %53

53:                                               ; preds = %45, %48, %51, %52, %33, %34, %29, %43, %44, %39, %23, %21, %19, %17, %14
  %54 = phi i8 [ %15, %14 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ 0, %39 ], [ 0, %44 ], [ 0, %43 ], [ 0, %29 ], [ 0, %34 ], [ 0, %33 ], [ 0, %52 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ]
  ret i8 %54
}

declare zeroext i8 @decimal_real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #10 !prof !83 !PGOFuncName !84 {
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 1
  %9 = load i32, ptr %2, align 8
  %10 = xor i32 %9, %6
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 1
  %13 = xor i32 %12, %3
  %14 = shl i32 %6, 2
  %15 = and i32 %14, 12
  %16 = and i32 %9, 3
  %17 = or disjoint i32 %15, %16
  switch i32 %17, label %34 [
    i32 0, label %18
    i32 1, label %22
    i32 2, label %22
    i32 3, label %22
    i32 7, label %22
    i32 11, label %22
    i32 15, label %22
    i32 6, label %22
    i32 4, label %29
    i32 8, label %29
    i32 12, label %29
    i32 13, label %29
    i32 14, label %29
    i32 9, label %29
    i32 10, label %30
    i32 5, label %35
  ], !prof !85

18:                                               ; preds = %4
  %19 = icmp eq i32 %13, 0
  %20 = shl nuw nsw i32 %8, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %21 = select i1 %19, i32 %20, i32 0, !prof !86
  store i32 %21, ptr %0, align 8
  br label %254

22:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %23 = xor i32 %13, %7
  %24 = load i32, ptr %0, align 8
  %25 = shl i32 %23, 3
  %26 = and i32 %25, 8
  %27 = and i32 %24, -9
  %28 = or disjoint i32 %27, %26
  store i32 %28, ptr %0, align 8
  br label %254

29:                                               ; preds = %4, %4, %4, %4, %4, %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  br label %254

30:                                               ; preds = %4
  %31 = icmp eq i32 %13, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 35, ptr %0, align 8
  br label %254

33:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  br label %254

34:                                               ; preds = %4
  unreachable

35:                                               ; preds = %4
  %36 = ashr i32 %6, 6
  %37 = ashr i32 %9, 6
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43, !prof !87

40:                                               ; preds = %35
  %41 = sub nsw i32 0, %38
  %42 = xor i32 %13, %8
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi ptr [ %2, %40 ], [ %1, %35 ]
  %45 = phi ptr [ %1, %40 ], [ %2, %35 ]
  %46 = phi i32 [ %41, %40 ], [ %38, %35 ]
  %47 = phi i32 [ %42, %40 ], [ %8, %35 ]
  %48 = load i32, ptr %44, align 8
  %49 = ashr i32 %48, 6
  %50 = icmp sgt i32 %46, 0
  br i1 %50, label %51, label %140, !prof !88

51:                                               ; preds = %43
  %52 = icmp sgt i32 %46, 191
  br i1 %52, label %53, label %59, !prof !89

53:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %44, i64 32, i1 false), !tbaa.struct !82
  %54 = load i32, ptr %0, align 8
  %55 = shl i32 %47, 3
  %56 = and i32 %55, 8
  %57 = and i32 %54, -9
  %58 = or disjoint i32 %57, %56
  store i32 %58, ptr %0, align 8
  br label %254

59:                                               ; preds = %51
  %60 = icmp ugt i32 %46, 63
  br i1 %60, label %61, label %74, !prof !90

61:                                               ; preds = %59
  %62 = lshr i32 %46, 6
  %63 = zext nneg i32 %62 to i64
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i64 [ 0, %61 ], [ %70, %64 ]
  %66 = phi i64 [ 0, %61 ], [ %69, %64 ]
  %67 = getelementptr inbounds %struct.real_value, ptr %45, i64 0, i32 1, i64 %65
  %68 = load i64, ptr %67, align 8, !tbaa !91
  %69 = or i64 %68, %66
  %70 = add nuw nsw i64 %65, 1
  %71 = icmp eq i64 %70, %63
  br i1 %71, label %72, label %64, !llvm.loop !92

72:                                               ; preds = %64
  %73 = and i32 %46, 63
  br label %74

74:                                               ; preds = %72, %59
  %75 = phi i32 [ %73, %72 ], [ %46, %59 ]
  %76 = phi i64 [ %69, %72 ], [ 0, %59 ]
  %77 = phi i32 [ %62, %72 ], [ 0, %59 ]
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %90, !prof !90

79:                                               ; preds = %74
  %80 = icmp ult i32 %77, 3
  br i1 %80, label %81, label %121

81:                                               ; preds = %79
  %82 = xor i32 %77, 3
  %83 = getelementptr inbounds i8, ptr %5, i64 8
  %84 = shl nuw nsw i32 %77, 3
  %85 = add nuw nsw i32 %84, 8
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr i8, ptr %45, i64 %86
  %88 = shl nuw nsw i32 %82, 3
  %89 = zext nneg i32 %88 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %83, ptr align 8 %87, i64 %89, i1 false), !tbaa !91
  br label %121

90:                                               ; preds = %74
  %91 = zext nneg i32 %77 to i64
  %92 = getelementptr inbounds %struct.real_value, ptr %45, i64 0, i32 1, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !91
  %94 = zext nneg i32 %75 to i64
  %95 = shl nsw i64 -1, %94
  %96 = xor i64 %95, -1
  %97 = sub nuw nsw i32 64, %75
  %98 = zext nneg i32 %97 to i64
  br label %99

99:                                               ; preds = %114, %90
  %100 = phi i64 [ 0, %90 ], [ %119, %114 ]
  %101 = add nuw nsw i64 %100, %91
  %102 = icmp ugt i64 %101, 2
  br i1 %102, label %106, label %103, !prof !93

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.real_value, ptr %45, i64 0, i32 1, i64 %101
  %105 = load i64, ptr %104, align 8, !tbaa !91
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i64 [ %105, %103 ], [ 0, %99 ]
  %108 = lshr i64 %107, %94
  %109 = icmp ugt i64 %101, 1
  br i1 %109, label %114, label %110, !prof !94

110:                                              ; preds = %106
  %111 = add nuw nsw i64 %101, 1
  %112 = getelementptr inbounds %struct.real_value, ptr %45, i64 0, i32 1, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !91
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i64 [ %113, %110 ], [ 0, %106 ]
  %116 = shl i64 %115, %98
  %117 = or i64 %116, %108
  %118 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1, i64 %100
  store i64 %117, ptr %118, align 8, !tbaa !91
  %119 = add nuw nsw i64 %100, 1
  %120 = icmp eq i64 %119, 3
  br i1 %120, label %133, label %99, !prof !94, !llvm.loop !95

121:                                              ; preds = %81, %79
  %122 = phi i32 [ 0, %79 ], [ %82, %81 ]
  %123 = icmp ult i32 %122, 3
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = shl nuw nsw i32 %122, 3
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr i8, ptr %5, i64 %126
  %128 = getelementptr i8, ptr %127, i64 8
  %129 = sub nsw i32 2, %122
  %130 = zext i32 %129 to i64
  %131 = shl nuw nsw i64 %130, 3
  %132 = add nuw nsw i64 %131, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %128, i8 0, i64 %132, i1 false), !tbaa !91
  br label %136

133:                                              ; preds = %114
  %134 = and i64 %93, %96
  %135 = or i64 %134, %76
  br label %136

136:                                              ; preds = %121, %124, %133
  %137 = phi i64 [ %76, %121 ], [ %76, %124 ], [ %135, %133 ]
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i8
  br label %140

140:                                              ; preds = %136, %43
  %141 = phi ptr [ %5, %136 ], [ %45, %43 ]
  %142 = phi i8 [ %139, %136 ], [ 0, %43 ]
  %143 = icmp eq i32 %13, 0
  br i1 %143, label %180, label %144, !prof !96

144:                                              ; preds = %140
  %145 = zext nneg i8 %142 to i32
  br label %146

146:                                              ; preds = %144, %160
  %147 = phi i64 [ 0, %144 ], [ %165, %160 ]
  %148 = phi i32 [ %145, %144 ], [ %163, %160 ]
  %149 = getelementptr inbounds %struct.real_value, ptr %44, i64 0, i32 1, i64 %147
  %150 = load i64, ptr %149, align 8, !tbaa !91
  %151 = getelementptr inbounds %struct.real_value, ptr %141, i64 0, i32 1, i64 %147
  %152 = load i64, ptr %151, align 8, !tbaa !91
  %153 = sub i64 %150, %152
  %154 = icmp eq i32 %148, 0
  %155 = icmp ugt i64 %152, %150
  br i1 %154, label %160, label %156

156:                                              ; preds = %146
  %157 = add i64 %153, -1
  %158 = icmp eq i64 %153, 0
  %159 = or i1 %155, %158
  br label %160

160:                                              ; preds = %146, %156
  %161 = phi i1 [ %159, %156 ], [ %155, %146 ]
  %162 = phi i64 [ %157, %156 ], [ %153, %146 ]
  %163 = zext i1 %161 to i32
  %164 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %147
  store i64 %162, ptr %164, align 8, !tbaa !91
  %165 = add nuw nsw i64 %147, 1
  %166 = icmp eq i64 %165, 3
  br i1 %166, label %167, label %146, !llvm.loop !97

167:                                              ; preds = %160
  br i1 %161, label %168, label %235

168:                                              ; preds = %167, %168
  %169 = phi i64 [ %178, %168 ], [ 0, %167 ]
  %170 = phi i1 [ %177, %168 ], [ true, %167 ]
  %171 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %169
  %172 = load i64, ptr %171, align 8, !tbaa !91
  %173 = xor i64 %172, -1
  %174 = icmp eq i64 %172, 0
  %175 = sub i64 0, %172
  %176 = select i1 %170, i64 %175, i64 %173
  %177 = select i1 %170, i1 %174, i1 false
  store i64 %176, ptr %171, align 8, !tbaa !91
  %178 = add nuw nsw i64 %169, 1
  %179 = icmp eq i64 %178, 3
  br i1 %179, label %233, label %168, !llvm.loop !98

180:                                              ; preds = %140, %194
  %181 = phi i64 [ %199, %194 ], [ 0, %140 ]
  %182 = phi i8 [ %197, %194 ], [ 0, %140 ]
  %183 = getelementptr inbounds %struct.real_value, ptr %44, i64 0, i32 1, i64 %181
  %184 = load i64, ptr %183, align 8, !tbaa !91
  %185 = getelementptr inbounds %struct.real_value, ptr %141, i64 0, i32 1, i64 %181
  %186 = load i64, ptr %185, align 8, !tbaa !91
  %187 = add i64 %186, %184
  %188 = icmp eq i8 %182, 0
  %189 = icmp ult i64 %187, %184
  br i1 %188, label %194, label %190, !prof !99

190:                                              ; preds = %180
  %191 = add i64 %187, 1
  %192 = icmp eq i64 %191, 0
  %193 = or i1 %189, %192
  br label %194

194:                                              ; preds = %180, %190
  %195 = phi i1 [ %193, %190 ], [ %189, %180 ]
  %196 = phi i64 [ %191, %190 ], [ %187, %180 ]
  %197 = zext i1 %195 to i8
  %198 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %181
  store i64 %196, ptr %198, align 8, !tbaa !91
  %199 = add nuw nsw i64 %181, 1
  %200 = icmp eq i64 %199, 3
  br i1 %200, label %201, label %180, !prof !100, !llvm.loop !101

201:                                              ; preds = %194
  br i1 %195, label %202, label %235, !prof !102

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 0
  %204 = load i64, ptr %203, align 8, !tbaa !91
  br label %205

205:                                              ; preds = %214, %202
  %206 = phi i64 [ 0, %202 ], [ %218, %214 ]
  %207 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !91
  %209 = icmp ugt i64 %206, 1
  br i1 %209, label %214, label %210, !prof !94

210:                                              ; preds = %205
  %211 = add nuw nsw i64 %206, 1
  %212 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !91
  br label %214

214:                                              ; preds = %210, %205
  %215 = phi i64 [ %213, %210 ], [ 0, %205 ]
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %208, i64 63)
  %217 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %206
  store i64 %216, ptr %217, align 8, !tbaa !91
  %218 = add nuw nsw i64 %206, 1
  %219 = icmp eq i64 %218, 3
  br i1 %219, label %220, label %205, !prof !94, !llvm.loop !95

220:                                              ; preds = %214
  %221 = trunc i64 %204 to i8
  %222 = and i8 %221, 1
  %223 = or i8 %222, %142
  %224 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %225 = load i64, ptr %224, align 8, !tbaa !91
  %226 = or i64 %225, -9223372036854775808
  store i64 %226, ptr %224, align 8, !tbaa !91
  %227 = add nsw i32 %49, 1
  %228 = icmp sgt i32 %49, 33554430
  br i1 %228, label %229, label %235, !prof !103

229:                                              ; preds = %220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %230 = shl i32 %47, 3
  %231 = and i32 %230, 8
  %232 = or disjoint i32 %231, 2
  store i32 %232, ptr %0, align 8
  br label %254

233:                                              ; preds = %168
  %234 = xor i32 %47, 1
  br label %235

235:                                              ; preds = %233, %201, %220, %167
  %236 = phi i32 [ %47, %167 ], [ %47, %220 ], [ %47, %201 ], [ %234, %233 ]
  %237 = phi i32 [ %49, %167 ], [ %227, %220 ], [ %49, %201 ], [ %49, %233 ]
  %238 = phi i8 [ %142, %167 ], [ %223, %220 ], [ %142, %201 ], [ %142, %233 ]
  %239 = shl i32 %236, 3
  %240 = and i32 %239, 8
  %241 = shl i32 %237, 6
  %242 = or disjoint i32 %240, %241
  %243 = or disjoint i32 %242, 1
  store i32 %243, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  %244 = load i32, ptr %0, align 8
  %245 = and i32 %244, 3
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249, !prof !104

247:                                              ; preds = %235
  %248 = and i32 %244, -12
  store i32 %248, ptr %0, align 8
  br label %254

249:                                              ; preds = %235
  %250 = zext nneg i8 %238 to i64
  %251 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %252 = load i64, ptr %251, align 8, !tbaa !91
  %253 = or i64 %252, %250
  store i64 %253, ptr %251, align 8, !tbaa !91
  br label %254

254:                                              ; preds = %247, %249, %32, %33, %229, %53, %29, %22, %18
  %255 = phi i8 [ 1, %53 ], [ 1, %229 ], [ 0, %29 ], [ 0, %22 ], [ 0, %18 ], [ 0, %33 ], [ 0, %32 ], [ %238, %249 ], [ %238, %247 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret i8 %255
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_multiply(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #10 !prof !105 !PGOFuncName !106 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = load i32, ptr %1, align 8
  %7 = load i32, ptr %2, align 8
  %8 = xor i32 %7, %6
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 1
  %11 = shl i32 %6, 2
  %12 = and i32 %11, 12
  %13 = and i32 %7, 3
  %14 = or disjoint i32 %12, %13
  switch i32 %14, label %33 [
    i32 0, label %15
    i32 1, label %15
    i32 4, label %15
    i32 3, label %17
    i32 7, label %17
    i32 11, label %17
    i32 15, label %17
    i32 12, label %22
    i32 13, label %22
    i32 14, label %22
    i32 2, label %27
    i32 8, label %27
    i32 10, label %30
    i32 6, label %30
    i32 9, label %30
    i32 5, label %34
  ], !prof !107

15:                                               ; preds = %3, %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %16 = shl nuw nsw i32 %10, 3
  store i32 %16, ptr %0, align 8
  br label %113

17:                                               ; preds = %3, %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %18 = load i32, ptr %0, align 8
  %19 = shl nuw nsw i32 %10, 3
  %20 = and i32 %18, -9
  %21 = or disjoint i32 %20, %19
  store i32 %21, ptr %0, align 8
  br label %113

22:                                               ; preds = %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %23 = load i32, ptr %0, align 8
  %24 = shl nuw nsw i32 %10, 3
  %25 = and i32 %23, -9
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %0, align 8
  br label %113

27:                                               ; preds = %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %28 = shl nuw nsw i32 %10, 3
  %29 = or disjoint i32 %28, 35
  store i32 %29, ptr %0, align 8
  br label %113

30:                                               ; preds = %3, %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %31 = shl nuw nsw i32 %10, 3
  %32 = or disjoint i32 %31, 2
  store i32 %32, ptr %0, align 8
  br label %113

33:                                               ; preds = %3
  unreachable

34:                                               ; preds = %3
  %35 = icmp eq ptr %0, %1
  %36 = icmp eq ptr %0, %2
  %37 = or i1 %35, %36
  %38 = select i1 %37, ptr %5, ptr %0, !prof !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, i8 0, i64 32, i1 false)
  br label %39

39:                                               ; preds = %34, %103
  %40 = phi i8 [ 0, %34 ], [ %101, %103 ]
  %41 = phi i32 [ 0, %34 ], [ %104, %103 ]
  %42 = lshr i32 %41, 1
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !91
  %46 = and i32 %41, 1
  %47 = icmp eq i32 %46, 0
  %48 = lshr i64 %45, 32
  %49 = and i64 %45, 4294967295
  %50 = select i1 %47, i64 %49, i64 %48, !prof !109
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %100, label %52, !prof !110

52:                                               ; preds = %39
  %53 = shl nuw nsw i32 %41, 5
  %54 = add nsw i32 %53, -160
  br label %55

55:                                               ; preds = %52, %96
  %56 = phi i64 [ 0, %52 ], [ %99, %96 ]
  %57 = phi i8 [ %40, %52 ], [ %94, %96 ]
  %58 = phi i32 [ 0, %52 ], [ %97, %96 ]
  %59 = load i32, ptr %1, align 8
  %60 = ashr i32 %59, 6
  %61 = add nsw i32 %54, %60
  %62 = load i32, ptr %2, align 8
  %63 = ashr i32 %62, 6
  %64 = shl nuw nsw i32 %58, 5
  %65 = xor i32 %64, 32
  %66 = sub nsw i32 %63, %65
  %67 = add nsw i32 %61, %66
  %68 = icmp sgt i32 %67, 33554431
  br i1 %68, label %69, label %72, !prof !111

69:                                               ; preds = %55
  %70 = shl nuw nsw i32 %10, 3
  %71 = or disjoint i32 %70, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %71, ptr %0, align 8
  br label %93

72:                                               ; preds = %55
  %73 = icmp slt i32 %67, -33554431
  br i1 %73, label %93, label %74, !prof !111

74:                                               ; preds = %72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %75 = shl i32 %67, 6
  %76 = or disjoint i32 %75, 1
  store i32 %76, ptr %4, align 8
  %77 = icmp eq i32 %58, 0
  br label %78

78:                                               ; preds = %74, %78
  %79 = phi i64 [ %56, %74 ], [ %88, %78 ]
  %80 = lshr i64 %79, 1
  %81 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !91
  %83 = lshr i64 %82, 32
  %84 = and i64 %82, 4294967295
  %85 = select i1 %77, i64 %84, i64 %83, !prof !112
  %86 = mul nuw i64 %85, %50
  %87 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %80
  store i64 %86, ptr %87, align 8, !tbaa !91
  %88 = add nuw nsw i64 %79, 2
  %89 = icmp ult i64 %79, 4
  br i1 %89, label %78, label %90, !prof !113, !llvm.loop !114

90:                                               ; preds = %78
  call fastcc void @normalize(ptr noundef nonnull %4)
  %91 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %38, ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 0), !range !81
  %92 = or i8 %91, %57
  br label %93

93:                                               ; preds = %72, %90, %69
  %94 = phi i8 [ %57, %69 ], [ %92, %90 ], [ 1, %72 ]
  %95 = phi i32 [ 1, %69 ], [ 0, %90 ], [ 8, %72 ]
  switch i32 %95, label %100 [
    i32 0, label %96
    i32 8, label %96
  ], !prof !115

96:                                               ; preds = %93, %93
  %97 = add nuw nsw i32 %58, 1
  %98 = icmp eq i32 %58, 0
  %99 = add nuw nsw i64 %56, 1
  br i1 %98, label %55, label %100, !prof !116, !llvm.loop !117

100:                                              ; preds = %96, %93, %39
  %101 = phi i8 [ %40, %39 ], [ %94, %93 ], [ %94, %96 ]
  %102 = phi i32 [ 5, %39 ], [ 0, %96 ], [ %95, %93 ]
  switch i32 %102, label %113 [
    i32 0, label %103
    i32 5, label %103
  ], !prof !118

103:                                              ; preds = %100, %100
  %104 = add nuw nsw i32 %41, 1
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %39, !prof !119, !llvm.loop !120

106:                                              ; preds = %103
  %107 = load i32, ptr %38, align 8
  %108 = shl nuw nsw i32 %10, 3
  %109 = and i32 %107, -9
  %110 = or disjoint i32 %109, %108
  store i32 %110, ptr %38, align 8
  %111 = icmp eq ptr %38, %0
  br i1 %111, label %113, label %112, !prof !121

112:                                              ; preds = %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !82
  br label %113

113:                                              ; preds = %100, %106, %112, %30, %27, %22, %17, %15
  %114 = phi i8 [ 0, %30 ], [ 0, %27 ], [ 0, %22 ], [ 0, %17 ], [ 0, %15 ], [ %101, %112 ], [ %101, %106 ], [ 1, %100 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i8 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #10 !prof !122 !PGOFuncName !123 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = load i32, ptr %1, align 8
  %7 = load i32, ptr %2, align 8
  %8 = xor i32 %7, %6
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %11 = shl i32 %6, 2
  %12 = and i32 %11, 12
  %13 = and i32 %7, 3
  %14 = or disjoint i32 %12, %13
  switch i32 %14, label %36 [
    i32 0, label %15
    i32 10, label %15
    i32 1, label %18
    i32 2, label %18
    i32 6, label %18
    i32 4, label %20
    i32 8, label %20
    i32 3, label %23
    i32 7, label %23
    i32 11, label %23
    i32 15, label %23
    i32 12, label %28
    i32 13, label %28
    i32 14, label %28
    i32 9, label %33
    i32 5, label %37
  ], !prof !124

15:                                               ; preds = %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %16 = shl nuw nsw i32 %10, 3
  %17 = or disjoint i32 %16, 35
  store i32 %17, ptr %0, align 8
  br label %150

18:                                               ; preds = %3, %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %19 = shl nuw nsw i32 %10, 3
  store i32 %19, ptr %0, align 8
  br label %150

20:                                               ; preds = %3, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %21 = shl nuw nsw i32 %10, 3
  %22 = or disjoint i32 %21, 2
  store i32 %22, ptr %0, align 8
  br label %150

23:                                               ; preds = %3, %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %24 = load i32, ptr %0, align 8
  %25 = shl nuw nsw i32 %10, 3
  %26 = and i32 %24, -9
  %27 = or disjoint i32 %26, %25
  store i32 %27, ptr %0, align 8
  br label %150

28:                                               ; preds = %3, %3, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %29 = load i32, ptr %0, align 8
  %30 = shl nuw nsw i32 %10, 3
  %31 = and i32 %29, -9
  %32 = or disjoint i32 %31, %30
  store i32 %32, ptr %0, align 8
  br label %150

33:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %34 = shl nuw nsw i32 %10, 3
  %35 = or disjoint i32 %34, 2
  store i32 %35, ptr %0, align 8
  br label %150

36:                                               ; preds = %3
  unreachable

37:                                               ; preds = %3
  %38 = icmp eq ptr %0, %1
  %39 = icmp eq ptr %0, %2
  %40 = or i1 %38, %39
  %41 = select i1 %40, ptr %5, ptr %0, !prof !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 32, i1 false)
  %42 = shl nuw nsw i32 %10, 3
  %43 = or disjoint i32 %42, 1
  store i32 %43, ptr %41, align 8
  %44 = load i32, ptr %1, align 8
  %45 = ashr i32 %44, 6
  %46 = load i32, ptr %2, align 8
  %47 = ashr i32 %46, 6
  %48 = sub nsw i32 %45, %47
  %49 = icmp sgt i32 %48, 33554430
  br i1 %49, label %50, label %52, !prof !126

50:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %51 = or disjoint i32 %42, 2
  store i32 %51, ptr %0, align 8
  br label %150

52:                                               ; preds = %37
  %53 = icmp slt i32 %48, -33554432
  br i1 %53, label %54, label %55, !prof !126

54:                                               ; preds = %52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %42, ptr %0, align 8
  br label %150

55:                                               ; preds = %52
  %56 = shl i32 %48, 6
  %57 = add i32 %56, 64
  %58 = or disjoint i32 %57, %43
  store i32 %58, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %59 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1
  %60 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %61 = select i1 %40, ptr %59, ptr %60, !prof !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %62 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 2
  %63 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  br label %80

64:                                               ; preds = %133
  %65 = load i64, ptr %62, align 8, !tbaa !91
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 2, %64 ], [ %70, %66 ]
  %68 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !91
  %70 = add nsw i64 %67, -1
  %71 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !91
  %73 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %72, i64 1)
  store i64 %73, ptr %68, align 8, !tbaa !91
  %74 = icmp eq i64 %70, 0
  br i1 %74, label %75, label %66, !prof !127, !llvm.loop !128

75:                                               ; preds = %66
  %76 = add nsw i32 %81, -1
  %77 = and i64 %65, -9223372036854775808
  %78 = load i64, ptr %63, align 8, !tbaa !91
  %79 = shl i64 %78, 1
  store i64 %79, ptr %63, align 8, !tbaa !91
  br label %80

80:                                               ; preds = %75, %55
  %81 = phi i32 [ 191, %55 ], [ %76, %75 ]
  %82 = phi i64 [ 0, %55 ], [ %77, %75 ]
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %87, label %103, !prof !129

84:                                               ; preds = %87
  %85 = add nsw i32 %89, -1
  %86 = icmp eq i32 %89, 0
  br i1 %86, label %100, label %87, !prof !130, !llvm.loop !131

87:                                               ; preds = %80, %84
  %88 = phi i32 [ %98, %84 ], [ undef, %80 ]
  %89 = phi i32 [ %85, %84 ], [ 2, %80 ]
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !91
  %93 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %90
  %94 = load i64, ptr %93, align 8, !tbaa !91
  %95 = icmp ugt i64 %92, %94
  %96 = icmp ult i64 %92, %94
  %97 = select i1 %96, i32 -1, i32 %88, !prof !132
  %98 = select i1 %95, i32 1, i32 %97, !prof !133
  %99 = icmp eq i64 %92, %94
  br i1 %99, label %84, label %100, !prof !134

100:                                              ; preds = %84, %87
  %101 = phi i32 [ %98, %87 ], [ 0, %84 ]
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %133, !prof !135

103:                                              ; preds = %100, %80
  br label %104

104:                                              ; preds = %103, %118
  %105 = phi i64 [ %122, %118 ], [ 0, %103 ]
  %106 = phi i32 [ %121, %118 ], [ 0, %103 ]
  %107 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %105
  %108 = load i64, ptr %107, align 8, !tbaa !91
  %109 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %105
  %110 = load i64, ptr %109, align 8, !tbaa !91
  %111 = sub i64 %108, %110
  %112 = icmp eq i32 %106, 0
  %113 = icmp ugt i64 %110, %108
  br i1 %112, label %118, label %114, !prof !136

114:                                              ; preds = %104
  %115 = add i64 %111, -1
  %116 = icmp eq i64 %111, 0
  %117 = or i1 %113, %116
  br label %118

118:                                              ; preds = %104, %114
  %119 = phi i1 [ %117, %114 ], [ %113, %104 ]
  %120 = phi i64 [ %115, %114 ], [ %111, %104 ]
  %121 = zext i1 %119 to i32
  store i64 %120, ptr %107, align 8, !tbaa !91
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, 3
  br i1 %123, label %124, label %104, !prof !137, !llvm.loop !97

124:                                              ; preds = %118
  %125 = and i32 %81, 63
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = lshr i32 %81, 6
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds %struct.real_value, ptr %41, i64 0, i32 1, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !91
  %132 = or i64 %131, %127
  store i64 %132, ptr %130, align 8, !tbaa !91
  br label %133

133:                                              ; preds = %124, %100
  %134 = icmp eq i32 %81, 0
  br i1 %134, label %135, label %64, !prof !138, !llvm.loop !139

135:                                              ; preds = %133, %135
  %136 = phi i64 [ %141, %135 ], [ 0, %133 ]
  %137 = phi i64 [ %140, %135 ], [ 0, %133 ]
  %138 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %136
  %139 = load i64, ptr %138, align 8, !tbaa !91
  %140 = or i64 %139, %137
  %141 = add nuw nsw i64 %136, 1
  %142 = icmp eq i64 %141, 3
  br i1 %142, label %143, label %135, !prof !140, !llvm.loop !141

143:                                              ; preds = %135
  %144 = icmp ne i64 %140, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call fastcc void @normalize(ptr noundef nonnull %41)
  %145 = zext i1 %144 to i64
  %146 = load i64, ptr %61, align 8, !tbaa !91
  %147 = or i64 %146, %145
  store i64 %147, ptr %61, align 8, !tbaa !91
  %148 = icmp eq ptr %41, %0
  br i1 %148, label %150, label %149, !prof !142

149:                                              ; preds = %143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !82
  br label %150

150:                                              ; preds = %143, %149, %54, %50, %33, %28, %23, %20, %18, %15
  %151 = phi i1 [ true, %50 ], [ true, %54 ], [ false, %33 ], [ false, %28 ], [ false, %23 ], [ false, %20 ], [ false, %18 ], [ false, %15 ], [ %144, %149 ], [ %144, %143 ]
  %152 = zext i1 %151 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret i8 %152
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_compare(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !143 !PGOFuncName !144 {
  %4 = load i32, ptr %0, align 8
  %5 = shl i32 %4, 2
  %6 = and i32 %5, 12
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 3
  %9 = or disjoint i32 %6, %8
  switch i32 %9, label %35 [
    i32 0, label %78
    i32 4, label %10
    i32 8, label %15
    i32 9, label %15
    i32 10, label %19
    i32 1, label %25
    i32 2, label %30
    i32 6, label %30
    i32 3, label %34
    i32 7, label %34
    i32 11, label %34
    i32 15, label %34
    i32 12, label %34
    i32 13, label %34
    i32 14, label %34
    i32 5, label %36
  ], !prof !145

10:                                               ; preds = %3
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %78

15:                                               ; preds = %3, %10, %3
  %16 = and i32 %4, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 -1
  br label %78

19:                                               ; preds = %3
  %20 = shl i32 %4, 28
  %21 = ashr i32 %20, 31
  %22 = lshr i32 %7, 3
  %23 = and i32 %22, 1
  %24 = add nsw i32 %23, %21
  br label %78

25:                                               ; preds = %3
  %26 = and i32 %7, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %78

30:                                               ; preds = %3, %25, %3
  %31 = and i32 %7, 8
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 -1, i32 1
  br label %78

34:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %78

35:                                               ; preds = %3
  unreachable

36:                                               ; preds = %3
  %37 = lshr i32 %4, 3
  %38 = and i32 %37, 1
  %39 = lshr i32 %7, 3
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %44, label %42, !prof !146

42:                                               ; preds = %36
  %43 = sub nsw i32 %40, %38
  br label %78

44:                                               ; preds = %36
  %45 = or i32 %7, %4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !146

48:                                               ; preds = %44
  %49 = tail call i32 @decimal_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %78

50:                                               ; preds = %44
  %51 = ashr i32 %4, 6
  %52 = ashr i32 %7, 6
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %72, label %54, !prof !147

54:                                               ; preds = %50
  %55 = icmp slt i32 %51, %52
  br i1 %55, label %72, label %59, !prof !148

56:                                               ; preds = %59
  %57 = add nsw i32 %61, -1
  %58 = icmp eq i32 %61, 0
  br i1 %58, label %72, label %59, !prof !149, !llvm.loop !131

59:                                               ; preds = %54, %56
  %60 = phi i32 [ %70, %56 ], [ undef, %54 ]
  %61 = phi i32 [ %57, %56 ], [ 2, %54 ]
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %62
  %66 = load i64, ptr %65, align 8, !tbaa !91
  %67 = icmp ugt i64 %64, %66
  %68 = icmp ult i64 %64, %66
  %69 = select i1 %68, i32 -1, i32 %60, !prof !149
  %70 = select i1 %67, i32 1, i32 %69, !prof !150
  %71 = icmp eq i64 %64, %66
  br i1 %71, label %56, label %72, !prof !149

72:                                               ; preds = %56, %59, %54, %50
  %73 = phi i32 [ 1, %50 ], [ -1, %54 ], [ %70, %59 ], [ 0, %56 ]
  %74 = and i32 %4, 8
  %75 = icmp eq i32 %74, 0
  %76 = sub nsw i32 0, %73
  %77 = select i1 %75, i32 %73, i32 %76, !prof !146
  br label %78

78:                                               ; preds = %3, %72, %48, %42, %34, %30, %28, %19, %15, %13
  %79 = phi i32 [ %43, %42 ], [ %49, %48 ], [ %77, %72 ], [ %2, %34 ], [ %33, %30 ], [ %29, %28 ], [ %24, %19 ], [ %18, %15 ], [ %14, %13 ], [ %9, %3 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !151 !PGOFuncName !152 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %35, !prof !153

6:                                                ; preds = %2
  %7 = and i32 %3, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !153

9:                                                ; preds = %6
  tail call void @decimal_do_fix_trunc(ptr noundef nonnull %0, ptr noundef %1) #27
  br label %35

10:                                               ; preds = %6
  %11 = ashr i32 %3, 6
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15, !prof !154

13:                                               ; preds = %10
  %14 = and i32 %3, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %14, ptr %0, align 8
  br label %35

15:                                               ; preds = %10
  %16 = icmp slt i32 %11, 192
  br i1 %16, label %17, label %35, !prof !153

17:                                               ; preds = %15
  %18 = sub nsw i32 192, %11
  %19 = lshr i32 %18, 6
  %20 = icmp ugt i32 %11, 128
  br i1 %20, label %27, label %21, !prof !155

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i64 8
  %23 = add nsw i32 %19, -1
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = add nuw nsw i64 %25, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %22, i8 0, i64 %26, i1 false), !tbaa !91
  br label %27

27:                                               ; preds = %21, %17
  %28 = and i32 %18, 63
  %29 = zext nneg i32 %28 to i64
  %30 = shl nsw i64 -1, %29
  %31 = zext nneg i32 %19 to i64
  %32 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !91
  %34 = and i64 %33, %30
  store i64 %34, ptr %32, align 8, !tbaa !91
  br label %35

35:                                               ; preds = %2, %13, %27, %15, %9
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @real_arithmetic2(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !61 {
  %5 = tail call zeroext i8 @real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @real_compare(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  switch i32 %0, label %70 [
    i32 97, label %4
    i32 98, label %8
    i32 99, label %12
    i32 100, label %16
    i32 101, label %20
    i32 102, label %24
    i32 103, label %28
    i32 104, label %37
    i32 105, label %46
    i32 106, label %50
    i32 107, label %54
    i32 108, label %58
    i32 109, label %62
    i32 110, label %66
  ]

4:                                                ; preds = %3
  %5 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  %6 = lshr i32 %5, 31
  %7 = trunc i32 %6 to i8
  br label %71

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  %10 = icmp slt i32 %9, 1
  %11 = zext i1 %10 to i8
  br label %71

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %71

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %18 = icmp sgt i32 %17, -1
  %19 = zext i1 %18 to i8
  br label %71

20:                                               ; preds = %3
  %21 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %71

24:                                               ; preds = %3
  %25 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %71

28:                                               ; preds = %3
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %71, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %2, align 8
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i8
  br label %71

37:                                               ; preds = %3
  %38 = load i32, ptr %1, align 8
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %71, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %2, align 8
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 3
  %45 = zext i1 %44 to i8
  br label %71

46:                                               ; preds = %3
  %47 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %48 = lshr i32 %47, 31
  %49 = trunc i32 %48 to i8
  br label %71

50:                                               ; preds = %3
  %51 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef -1)
  %52 = icmp slt i32 %51, 1
  %53 = zext i1 %52 to i8
  br label %71

54:                                               ; preds = %3
  %55 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i8
  br label %71

58:                                               ; preds = %3
  %59 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  %60 = icmp sgt i32 %59, -1
  %61 = zext i1 %60 to i8
  br label %71

62:                                               ; preds = %3
  %63 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i8
  br label %71

66:                                               ; preds = %3
  %67 = tail call fastcc i32 @do_compare(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i8
  br label %71

70:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #27
  br label %71

71:                                               ; preds = %37, %41, %28, %32, %70, %66, %62, %58, %54, %50, %46, %24, %20, %16, %12, %8, %4
  %72 = phi i8 [ 0, %70 ], [ %69, %66 ], [ %65, %62 ], [ %61, %58 ], [ %57, %54 ], [ %53, %50 ], [ %49, %46 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ %15, %12 ], [ %11, %8 ], [ %7, %4 ], [ 1, %28 ], [ %36, %32 ], [ 0, %37 ], [ %45, %41 ]
  ret i8 %72
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @real_exponent(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  switch i32 %3, label %7 [
    i32 0, label %8
    i32 2, label %4
    i32 3, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %1, %1
  br label %8

5:                                                ; preds = %1
  %6 = ashr i32 %2, 6
  br label %8

7:                                                ; preds = %1
  unreachable

8:                                                ; preds = %1, %5, %4
  %9 = phi i32 [ %6, %5 ], [ 2147483647, %4 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @real_ldexp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 !prof !61 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = ashr i32 %8, 6
  %10 = add nsw i32 %9, %2
  %11 = icmp sgt i32 %10, 33554431
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = and i32 %4, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %14 = or disjoint i32 %13, 2
  br label %23

15:                                               ; preds = %7
  %16 = icmp slt i32 %10, -33554431
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = and i32 %4, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %23

19:                                               ; preds = %15
  %20 = shl i32 %10, 6
  %21 = and i32 %4, 61
  %22 = or disjoint i32 %20, %21
  br label %23

23:                                               ; preds = %17, %19, %12
  %24 = phi i32 [ %14, %12 ], [ %22, %19 ], [ %18, %17 ]
  store i32 %24, ptr %0, align 8
  br label %25

25:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isinf(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 2
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isnan(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isfinite(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, -4
  %4 = icmp ult i32 %3, -2
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isneg(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @real_isnegzero(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 11
  %4 = icmp eq i32 %3, 8
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @real_identical(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !61 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 3
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = xor i32 %5, %3
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  switch i32 %4, label %28 [
    i32 0, label %39
    i32 2, label %39
    i32 1, label %13
    i32 3, label %16
  ]

13:                                               ; preds = %12
  %14 = and i32 %9, -60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %39

16:                                               ; preds = %12
  %17 = and i32 %9, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = or i32 %5, %3
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %19
  br label %32

24:                                               ; preds = %19
  %25 = and i32 %9, 32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %39

28:                                               ; preds = %12
  unreachable

29:                                               ; preds = %32
  %30 = add nuw nsw i64 %33, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %39, label %32, !llvm.loop !156

32:                                               ; preds = %23, %29
  %33 = phi i64 [ %30, %29 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %33
  %37 = load i64, ptr %36, align 8, !tbaa !91
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29, %32, %12, %16, %13, %12, %8, %2, %24
  %40 = phi i8 [ %27, %24 ], [ 0, %2 ], [ 0, %8 ], [ 1, %12 ], [ 0, %13 ], [ 0, %16 ], [ 1, %12 ], [ 0, %32 ], [ 1, %29 ]
  ret i8 %40
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @exact_real_inverse(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !61 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), align 16
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0, i64 noundef 1, i64 noundef 0, i32 noundef 1)
  br label %8

8:                                                ; preds = %2, %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %42

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %16, 0
  br i1 %14, label %15, label %20, !llvm.loop !157

15:                                               ; preds = %8, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !91
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %12, label %42

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  %22 = load i64, ptr %21, align 8, !tbaa !91
  %23 = icmp eq i64 %22, -9223372036854775808
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), ptr noundef nonnull %1), !range !81
  call void @real_convert(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %3)
  %26 = load i32, ptr %3, align 8
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %42

29:                                               ; preds = %32
  %30 = add nuw nsw i64 %33, 1
  %31 = icmp eq i64 %33, 0
  br i1 %31, label %32, label %37, !llvm.loop !158

32:                                               ; preds = %24, %29
  %33 = phi i64 [ %30, %29 ], [ 0, %24 ]
  %34 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !91
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %29, label %42

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 2
  %39 = load i64, ptr %38, align 8, !tbaa !91
  %40 = icmp eq i64 %39, -9223372036854775808
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !82
  br label %42

42:                                               ; preds = %15, %32, %37, %24, %20, %8, %41
  %43 = phi i8 [ 1, %41 ], [ 0, %8 ], [ 0, %20 ], [ 0, %24 ], [ 0, %37 ], [ 0, %32 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret i8 %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc nonnull ptr @real_digit(i32 noundef %0) unnamed_addr #9 !prof !61 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2302, ptr noundef nonnull @.str.1) #27
  br label %4

4:                                                ; preds = %1, %3
  %5 = icmp slt i32 %0, 10
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2303, ptr noundef nonnull @.str.1) #27
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64
  %11 = getelementptr inbounds [10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @real_from_integer(ptr noundef nonnull %11, i32 noundef 0, i64 noundef %10, i64 noundef 0, i32 noundef 1)
  br label %16

16:                                               ; preds = %15, %9, %7
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds [10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 %17
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !159 {
  %4 = add i32 %1, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !160

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2741, ptr noundef nonnull @.str.1) #27
  br label %10

10:                                               ; preds = %3, %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !161

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !162
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %19, !prof !160

18:                                               ; preds = %14, %10
  tail call void @decimal_real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #27
  br label %19

19:                                               ; preds = %18, %14
  tail call fastcc void @round_for_format(ptr noundef %7, ptr noundef %0)
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24, !prof !164

23:                                               ; preds = %19
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @real_can_shorten_arithmetic(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 !prof !61 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = add i32 %1, -38
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = add i32 %0, -38
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !162
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %145

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !165
  %23 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !165
  %25 = shl nsw i32 %24, 1
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %145

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !166
  %30 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !166
  %32 = shl nsw i32 %31, 1
  %33 = sub i32 %32, %24
  %34 = add i32 %33, -2
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %145

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !167
  %39 = add i32 %31, -2
  %40 = add i32 %24, %38
  %41 = sub i32 %39, %40
  %42 = icmp slt i32 %29, %41
  br i1 %42, label %43, label %145

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !167
  %46 = shl nsw i32 %38, 1
  %47 = add nsw i32 %46, 2
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %145

49:                                               ; preds = %43
  %50 = add i32 %24, 2
  %51 = sub i32 %50, %31
  %52 = add i32 %51, %38
  %53 = icmp sgt i32 %45, %52
  br i1 %53, label %54, label %145

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 9
  %56 = load i8, ptr %55, align 4, !tbaa !168
  %57 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 9
  %58 = load i8, ptr %57, align 4, !tbaa !168
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %60, label %145

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 10
  %62 = load i8, ptr %61, align 1, !tbaa !169
  %63 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 10
  %64 = load i8, ptr %63, align 1, !tbaa !169
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %66, label %145

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 11
  %68 = load i8, ptr %67, align 2, !tbaa !170
  %69 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 11
  %70 = load i8, ptr %69, align 2, !tbaa !170
  %71 = icmp ult i8 %68, %70
  br i1 %71, label %145, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 12
  %74 = load i8, ptr %73, align 1, !tbaa !171
  %75 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 12
  %76 = load i8, ptr %75, align 1, !tbaa !171
  %77 = icmp ult i8 %74, %76
  br i1 %77, label %145, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.real_format, ptr %14, i64 0, i32 14
  %80 = load i8, ptr %79, align 1, !tbaa !172
  %81 = getelementptr inbounds %struct.real_format, ptr %8, i64 0, i32 14
  %82 = load i8, ptr %81, align 1, !tbaa !172
  %83 = icmp ult i8 %80, %82
  br i1 %83, label %145, label %84

84:                                               ; preds = %78
  %85 = load i8, ptr %4, align 1, !tbaa !73
  switch i8 %85, label %114 [
    i8 8, label %86
    i8 9, label %86
    i8 11, label %86
    i8 17, label %86
  ]

86:                                               ; preds = %84, %84, %84, %84
  %87 = and i8 %85, -2
  %88 = icmp eq i8 %87, 8
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %91 = load i8, ptr %90, align 1, !tbaa !73
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %86, %89
  %94 = phi i32 [ %92, %89 ], [ %1, %86 ]
  %95 = add i32 %94, -38
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !62
  %99 = getelementptr inbounds %struct.real_format, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !173
  br i1 %88, label %105, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %103 = load i8, ptr %102, align 1, !tbaa !73
  %104 = zext i8 %103 to i32
  br label %105

105:                                              ; preds = %93, %101
  %106 = phi i32 [ %104, %101 ], [ %1, %93 ]
  %107 = add i32 %106, -38
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  %111 = getelementptr inbounds %struct.real_format, ptr %110, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !165
  %113 = icmp slt i32 %100, %112
  br i1 %113, label %145, label %114

114:                                              ; preds = %84, %105
  %115 = load i8, ptr %10, align 1, !tbaa !73
  switch i8 %115, label %145 [
    i8 8, label %116
    i8 9, label %116
    i8 11, label %116
    i8 17, label %116
  ]

116:                                              ; preds = %114, %114, %114, %114
  %117 = and i8 %115, -2
  %118 = icmp eq i8 %117, 8
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %121 = load i8, ptr %120, align 1, !tbaa !73
  %122 = zext i8 %121 to i32
  br label %123

123:                                              ; preds = %116, %119
  %124 = phi i32 [ %122, %119 ], [ %0, %116 ]
  %125 = add i32 %124, -38
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !62
  %129 = getelementptr inbounds %struct.real_format, ptr %128, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !173
  br i1 %118, label %135, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %133 = load i8, ptr %132, align 1, !tbaa !73
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %123, %131
  %136 = phi i32 [ %134, %131 ], [ %0, %123 ]
  %137 = add i32 %136, -38
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !62
  %141 = getelementptr inbounds %struct.real_format, ptr %140, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !165
  %143 = icmp sge i32 %130, %142
  %144 = zext i1 %143 to i8
  br label %145

145:                                              ; preds = %114, %135, %105, %78, %72, %66, %60, %54, %49, %43, %36, %27, %20, %2
  %146 = phi i8 [ 0, %105 ], [ 0, %78 ], [ 0, %72 ], [ 0, %66 ], [ 0, %60 ], [ 0, %54 ], [ 0, %49 ], [ 0, %43 ], [ 0, %36 ], [ 0, %27 ], [ 0, %20 ], [ 0, %2 ], [ %144, %135 ], [ 1, %114 ]
  ret i8 %146
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @real_to_integer(ptr noundef %0) local_unnamed_addr #9 !prof !61 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  switch i32 %3, label %28 [
    i32 0, label %29
    i32 2, label %4
    i32 3, label %4
    i32 1, label %8
  ]

4:                                                ; preds = %1, %16, %1
  %5 = and i32 %2, 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 9223372036854775807, i64 -9223372036854775808
  br label %29

8:                                                ; preds = %1
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @decimal_real_to_integer(ptr noundef nonnull %0) #27
  br label %29

13:                                               ; preds = %8
  %14 = ashr i32 %2, 6
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = icmp sgt i32 %14, 64
  br i1 %17, label %4, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %20 = load i64, ptr %19, align 8, !tbaa !91
  %21 = sub nuw nsw i32 64, %14
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = and i32 %2, 8
  %25 = icmp eq i32 %24, 0
  %26 = sub i64 0, %23
  %27 = select i1 %25, i64 %23, i64 %26
  br label %29

28:                                               ; preds = %1
  unreachable

29:                                               ; preds = %1, %13, %18, %11, %4
  %30 = phi i64 [ %12, %11 ], [ %7, %4 ], [ %27, %18 ], [ 0, %13 ], [ 0, %1 ]
  ret i64 %30
}

declare i64 @decimal_real_to_integer(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 3
  switch i32 %6, label %36 [
    i32 0, label %37
    i32 2, label %7
    i32 3, label %7
    i32 1, label %12
  ]

7:                                                ; preds = %3, %19, %3
  %8 = and i32 %5, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i64 9223372036854775807, i64 -9223372036854775808
  %11 = sext i1 %9 to i64
  br label %37

12:                                               ; preds = %3
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @decimal_real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #27
  br label %40

16:                                               ; preds = %12
  %17 = ashr i32 %5, 6
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = icmp sgt i32 %17, 128
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = sub nuw nsw i32 128, %17
  call fastcc void @rshift_significand(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef %22)
  %23 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 2
  %24 = load i64, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !91
  %27 = and i32 %5, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = sub nsw i64 0, %24
  br label %37

33:                                               ; preds = %29
  %34 = sub nsw i64 0, %26
  %35 = xor i64 %24, -1
  br label %37

36:                                               ; preds = %3
  unreachable

37:                                               ; preds = %7, %3, %16, %21, %33, %31
  %38 = phi i64 [ %32, %31 ], [ %35, %33 ], [ %24, %21 ], [ 0, %16 ], [ 0, %3 ], [ %10, %7 ]
  %39 = phi i64 [ 0, %31 ], [ %34, %33 ], [ %26, %21 ], [ 0, %16 ], [ 0, %3 ], [ %11, %7 ]
  store i64 %39, ptr %0, align 8, !tbaa !91
  store i64 %38, ptr %1, align 8, !tbaa !91
  br label %40

40:                                               ; preds = %37, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

declare void @decimal_real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #17 !prof !61 {
  %4 = lshr i32 %2, 6
  %5 = and i32 %2, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = sub nuw nsw i32 64, %5
  %10 = zext nneg i32 %9 to i64
  %11 = zext nneg i32 %4 to i64
  br label %19

12:                                               ; preds = %3
  %13 = icmp ult i32 %2, 192
  br i1 %13, label %14, label %43

14:                                               ; preds = %12
  %15 = lshr exact i32 %2, 6
  %16 = zext nneg i32 %15 to i64
  %17 = xor i32 %4, 3
  %18 = zext nneg i32 %17 to i64
  br label %55

19:                                               ; preds = %7, %34
  %20 = phi i64 [ 0, %7 ], [ %39, %34 ]
  %21 = add nuw nsw i64 %20, %11
  %22 = icmp ugt i64 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !91
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi i64 [ %25, %23 ], [ 0, %19 ]
  %28 = lshr i64 %27, %8
  %29 = icmp ugt i64 %21, 1
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %21, 1
  %32 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !91
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi i64 [ %33, %30 ], [ 0, %26 ]
  %36 = shl i64 %35, %10
  %37 = or i64 %36, %28
  %38 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %20
  store i64 %37, ptr %38, align 8, !tbaa !91
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %64, label %19, !llvm.loop !174

41:                                               ; preds = %55
  %42 = trunc i64 %61 to i32
  br label %43

43:                                               ; preds = %41, %12
  %44 = phi i32 [ 0, %12 ], [ %42, %41 ]
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = shl nuw nsw i32 %44, 3
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr i8, ptr %0, i64 %48
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = sub nsw i32 2, %44
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = add nuw nsw i64 %53, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, i8 0, i64 %54, i1 false), !tbaa !91
  br label %64

55:                                               ; preds = %14, %55
  %56 = phi i64 [ 0, %14 ], [ %61, %55 ]
  %57 = phi i64 [ %16, %14 ], [ %62, %55 ]
  %58 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !91
  %60 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %56
  store i64 %59, ptr %60, align 8, !tbaa !91
  %61 = add nuw nsw i64 %56, 1
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %61, %18
  br i1 %63, label %41, label %55, !llvm.loop !175

64:                                               ; preds = %34, %46, %43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @real_to_decimal_for_mode(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #12 !prof !176 {
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca %struct.real_value, align 8
  %11 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %20, label %13, !prof !177

13:                                               ; preds = %6
  %14 = add i32 %5, -38
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !177

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1517, ptr noundef nonnull @.str.1) #27
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = phi ptr [ %17, %13 ], [ null, %19 ], [ null, %6 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  %22 = load i32, ptr %7, align 8
  %23 = and i32 %22, 3
  switch i32 %23, label %42 [
    i32 0, label %24
    i32 1, label %43
    i32 2, label %29
    i32 3, label %33
  ], !prof !178

24:                                               ; preds = %20
  %25 = and i32 %22, 8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.2
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %27)
  br label %389

29:                                               ; preds = %20
  %30 = and i32 %22, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.5, ptr @.str.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) %32, i64 5, i1 false)
  br label %389

33:                                               ; preds = %20
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 43, i32 45
  %38 = and i32 %34, 16
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 81, i32 83
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %37, i32 noundef %40)
  br label %389

42:                                               ; preds = %20
  unreachable

43:                                               ; preds = %20
  %44 = and i32 %22, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !179

46:                                               ; preds = %43
  call void @decimal_real_to_decimal(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %2, i64 noundef %3, i32 noundef %4) #27
  br label %389

47:                                               ; preds = %43
  %48 = add i64 %3, -58
  %49 = icmp ult i64 %48, -57
  %50 = select i1 %49, i64 57, i64 %3, !prof !177
  %51 = ashr i32 %22, 6
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 0x3FD34413509F79FF
  %54 = fptosi double %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56, !prof !180

56:                                               ; preds = %47, %56
  %57 = phi i32 [ %59, %56 ], [ %54, %47 ]
  %58 = phi i64 [ %60, %56 ], [ 1, %47 ]
  %59 = sdiv i32 %57, 10
  %60 = add i64 %58, 1
  %61 = add i32 %57, 9
  %62 = icmp ult i32 %61, 19
  br i1 %62, label %63, label %56, !prof !181, !llvm.loop !182

63:                                               ; preds = %56, %47
  %64 = phi i64 [ 1, %47 ], [ %60, %56 ]
  %65 = add i64 %2, -4
  %66 = xor i64 %64, -1
  %67 = add i64 %65, %66
  %68 = icmp ugt i64 %67, %2
  br i1 %68, label %69, label %70, !prof !177

69:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1560, ptr noundef nonnull @.str.1) #27
  br label %70

70:                                               ; preds = %63, %69
  %71 = tail call i64 @llvm.umin.i64(i64 %50, i64 %67)
  %72 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), align 16
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76, !prof !183

75:                                               ; preds = %70
  tail call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0, i64 noundef 1, i64 noundef 0, i32 noundef 1)
  br label %76

76:                                               ; preds = %70, %75
  %77 = load i32, ptr @ten_to_ptwo.tens, align 16
  %78 = and i32 %77, 3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81, !prof !183

80:                                               ; preds = %76
  tail call void @real_from_integer(ptr noundef nonnull @ten_to_ptwo.tens, i32 noundef 0, i64 noundef 10, i64 noundef 0, i32 noundef 1) #28
  br label %81

81:                                               ; preds = %76, %80
  %82 = load i32, ptr %7, align 8
  %83 = and i32 %82, -9
  store i32 %83, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i64 32, i1 false), !tbaa.struct !82
  %84 = call fastcc i32 @do_compare(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0)
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %156, !prof !184

86:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !82
  %87 = load i32, ptr %9, align 8
  %88 = and i32 %87, 63
  %89 = or disjoint i32 %88, 12224
  store i32 %89, ptr %9, align 8
  %90 = call i32 @floor_log2(i64 noundef %67) #27
  br label %91

91:                                               ; preds = %118, %86
  %92 = phi i32 [ %90, %86 ], [ %120, %118 ]
  %93 = phi i32 [ 0, %86 ], [ %119, %118 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #27
  %94 = call fastcc ptr @ten_to_ptwo(i32 noundef %92)
  %95 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %94), !range !81
  call fastcc void @do_fix_trunc(ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %99

96:                                               ; preds = %99
  %97 = add nsw i32 %101, -1
  %98 = icmp eq i32 %101, 0
  br i1 %98, label %112, label %99, !prof !185, !llvm.loop !131

99:                                               ; preds = %91, %96
  %100 = phi i32 [ undef, %91 ], [ %110, %96 ]
  %101 = phi i32 [ 2, %91 ], [ %97, %96 ]
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds %struct.real_value, ptr %10, i64 0, i32 1, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !91
  %105 = getelementptr inbounds %struct.real_value, ptr %11, i64 0, i32 1, i64 %102
  %106 = load i64, ptr %105, align 8, !tbaa !91
  %107 = icmp ugt i64 %104, %106
  %108 = icmp ult i64 %104, %106
  %109 = select i1 %108, i32 -1, i32 %100, !prof !186
  %110 = select i1 %107, i32 1, i32 %109, !prof !187
  %111 = icmp eq i64 %104, %106
  br i1 %111, label %96, label %112, !prof !188

112:                                              ; preds = %96, %99
  %113 = phi i32 [ %110, %99 ], [ 0, %96 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118, !prof !189

115:                                              ; preds = %112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !82
  %116 = shl nuw i32 1, %92
  %117 = add nsw i32 %93, %116
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i32 [ %117, %115 ], [ %93, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  %120 = add nsw i32 %92, -1
  %121 = icmp sgt i32 %92, 0
  br i1 %121, label %91, label %122, !prof !155, !llvm.loop !190

122:                                              ; preds = %118
  %123 = load i32, ptr %9, align 8
  %124 = and i32 %123, -64
  %125 = load i32, ptr %7, align 8
  %126 = add i32 %125, %124
  %127 = and i32 %126, -64
  %128 = add i32 %127, -12224
  %129 = and i32 %123, 63
  %130 = or disjoint i32 %128, %129
  store i32 %130, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !82
  %131 = load i32, ptr %7, align 8
  %132 = ashr i32 %131, 6
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %156, !prof !161

134:                                              ; preds = %122
  %135 = sitofp i32 %132 to double
  %136 = fmul double %135, 0x3FD34413509F79FF
  %137 = fptosi double %136 to i32
  %138 = sext i32 %137 to i64
  %139 = call i32 @floor_log2(i64 noundef %138) #27
  %140 = add nsw i32 %139, 1
  br label %141

141:                                              ; preds = %152, %134
  %142 = phi i32 [ %140, %134 ], [ %154, %152 ]
  %143 = phi i32 [ %119, %134 ], [ %153, %152 ]
  %144 = call fastcc ptr @ten_to_ptwo(i32 noundef %142)
  %145 = call fastcc i32 @do_compare(ptr noundef nonnull %9, ptr noundef nonnull %144, i32 noundef 0)
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %152, !prof !191

147:                                              ; preds = %141
  %148 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %144), !range !81
  %149 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %144)
  %150 = shl nuw i32 1, %142
  %151 = add nsw i32 %143, %150
  br label %152

152:                                              ; preds = %141, %147
  %153 = phi i32 [ %151, %147 ], [ %143, %141 ]
  %154 = add nsw i32 %142, -1
  %155 = icmp sgt i32 %142, 0
  br i1 %155, label %141, label %156, !prof !192, !llvm.loop !193

156:                                              ; preds = %152, %122, %81
  %157 = phi i32 [ %84, %81 ], [ -1, %122 ], [ %84, %152 ]
  %158 = phi i32 [ 0, %81 ], [ %119, %122 ], [ %153, %152 ]
  %159 = icmp slt i32 %157, 0
  br i1 %159, label %160, label %226, !prof !194

160:                                              ; preds = %156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !82
  %161 = getelementptr inbounds %struct.real_value, ptr %10, i64 0, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !91
  %163 = and i64 %162, 7
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %175, !prof !195

165:                                              ; preds = %160, %170
  %166 = phi i32 [ %171, %170 ], [ %158, %160 ]
  %167 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull @ten_to_ptwo.tens)
  %168 = load i32, ptr %9, align 8
  %169 = icmp sgt i32 %168, 63
  br i1 %169, label %175, label %170, !prof !196

170:                                              ; preds = %165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !82
  %171 = add nsw i32 %166, -1
  %172 = load i64, ptr %161, align 8, !tbaa !91
  %173 = and i64 %172, 7
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %165, label %175, !prof !197, !llvm.loop !198

175:                                              ; preds = %170, %165, %160
  %176 = phi i32 [ %158, %160 ], [ %171, %170 ], [ %166, %165 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !82
  %177 = load i32, ptr %7, align 8
  %178 = ashr i32 %177, 6
  %179 = sub nsw i32 0, %178
  %180 = sitofp i32 %179 to double
  %181 = fmul double %180, 0x3FD34413509F79FF
  %182 = fptosi double %181 to i32
  %183 = sext i32 %182 to i64
  %184 = call i32 @floor_log2(i64 noundef %183) #27
  %185 = add i32 %184, 1
  %186 = sext i32 %185 to i64
  br label %187

187:                                              ; preds = %220, %175
  %188 = phi i64 [ %222, %220 ], [ %186, %175 ]
  %189 = phi i32 [ %221, %220 ], [ %176, %175 ]
  %190 = trunc i64 %188 to i32
  %191 = call fastcc ptr @ten_to_ptwo(i32 noundef %190)
  %192 = icmp sgt i64 %188, -1
  br i1 %192, label %194, label %193, !prof !199

193:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2286, ptr noundef nonnull @.str.1) #27
  br label %194

194:                                              ; preds = %193, %187
  %195 = icmp slt i64 %188, 26
  br i1 %195, label %197, label %196, !prof !199

196:                                              ; preds = %194
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2287, ptr noundef nonnull @.str.1) #27
  br label %197

197:                                              ; preds = %194, %196
  %198 = getelementptr inbounds [26 x %struct.real_value], ptr @ten_to_mptwo.tens, i64 0, i64 %188
  %199 = load i32, ptr %198, align 16
  %200 = and i32 %199, 3
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211, !prof !200

202:                                              ; preds = %197
  %203 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), align 16
  %204 = and i32 %203, 3
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207, !prof !201

206:                                              ; preds = %202
  call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0, i64 noundef 1, i64 noundef 0, i32 noundef 1)
  br label %207

207:                                              ; preds = %206, %202
  %208 = trunc i64 %188 to i32
  %209 = call fastcc ptr @ten_to_ptwo(i32 noundef %208)
  %210 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %198, ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), ptr noundef nonnull %209), !range !81
  br label %211

211:                                              ; preds = %197, %207
  %212 = call fastcc i32 @do_compare(ptr noundef nonnull %10, ptr noundef nonnull %198, i32 noundef 0)
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %220, !prof !202

214:                                              ; preds = %211
  %215 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %191)
  %216 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %191)
  %217 = trunc i64 %188 to i32
  %218 = shl nsw i32 -1, %217
  %219 = add i32 %218, %189
  br label %220

220:                                              ; preds = %214, %211
  %221 = phi i32 [ %219, %214 ], [ %189, %211 ]
  %222 = add nsw i64 %188, -1
  %223 = icmp sgt i64 %188, 0
  br i1 %223, label %187, label %224, !prof !203, !llvm.loop !204

224:                                              ; preds = %220
  %225 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), ptr noundef nonnull %8), !range !81
  br label %226

226:                                              ; preds = %224, %156
  %227 = phi i32 [ %221, %224 ], [ %158, %156 ]
  %228 = and i32 %82, 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !179

230:                                              ; preds = %226
  %231 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !73
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi ptr [ %231, %230 ], [ %0, %226 ]
  %234 = getelementptr inbounds i8, ptr %233, i64 1
  %235 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %236 = trunc i64 %235 to i32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %259, !prof !194

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 2
  %240 = load i64, ptr %239, align 8, !tbaa !91
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %252, !prof !205

242:                                              ; preds = %238, %245
  %243 = phi i32 [ %246, %245 ], [ 2, %238 ]
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %259, label %245, !prof !206, !llvm.loop !207

245:                                              ; preds = %242
  %246 = add nsw i32 %243, -1
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !91
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %242, label %251, !prof !205, !llvm.loop !207

251:                                              ; preds = %245
  br i1 %244, label %259, label %252, !prof !206

252:                                              ; preds = %238, %251
  %253 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull @ten_to_ptwo.tens)
  %254 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %255 = trunc i64 %254 to i32
  %256 = add nsw i32 %227, -1
  %257 = icmp eq i32 %255, 0
  br i1 %257, label %258, label %259, !prof !206

258:                                              ; preds = %252
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1703, ptr noundef nonnull @.str.1) #27
  br label %259

259:                                              ; preds = %242, %251, %258, %252, %232
  %260 = phi i32 [ %255, %252 ], [ 0, %258 ], [ %236, %232 ], [ 0, %251 ], [ 0, %242 ]
  %261 = phi i32 [ %256, %252 ], [ %256, %258 ], [ %227, %232 ], [ %227, %251 ], [ %227, %242 ]
  %262 = icmp eq i32 %260, 10
  br i1 %262, label %263, label %271, !prof !177

263:                                              ; preds = %259
  store i8 49, ptr %234, align 1, !tbaa !73
  %264 = add nsw i64 %71, -1
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds i8, ptr %233, i64 2
  store i8 48, ptr %267, align 1, !tbaa !73
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i64 [ 3, %266 ], [ 2, %263 ]
  %270 = add nsw i32 %261, 1
  br label %277

271:                                              ; preds = %259
  %272 = icmp slt i32 %260, 11
  br i1 %272, label %274, label %273, !prof !179

273:                                              ; preds = %271
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1716, ptr noundef nonnull @.str.1) #27
  br label %274

274:                                              ; preds = %271, %273
  %275 = trunc i32 %260 to i8
  %276 = add i8 %275, 48
  store i8 %276, ptr %234, align 1, !tbaa !73
  br label %277

277:                                              ; preds = %274, %268
  %278 = phi i64 [ %269, %268 ], [ 2, %274 ]
  %279 = phi i32 [ %270, %268 ], [ %261, %274 ]
  %280 = phi i64 [ %264, %268 ], [ %71, %274 ]
  %281 = getelementptr inbounds i8, ptr %233, i64 %278
  %282 = add i64 %280, -1
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %296, label %284, !prof !180

284:                                              ; preds = %277, %284
  %285 = phi i64 [ %294, %284 ], [ %282, %277 ]
  %286 = phi ptr [ %293, %284 ], [ %281, %277 ]
  %287 = phi i64 [ %292, %284 ], [ %278, %277 ]
  %288 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull @ten_to_ptwo.tens)
  %289 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %290 = trunc i64 %289 to i8
  %291 = add i8 %290, 48
  %292 = add nuw nsw i64 %287, 1
  store i8 %291, ptr %286, align 1, !tbaa !73
  %293 = getelementptr inbounds i8, ptr %233, i64 %292
  %294 = add i64 %285, -1
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %284, !prof !208, !llvm.loop !209

296:                                              ; preds = %284, %277
  %297 = phi i64 [ %278, %277 ], [ %292, %284 ]
  %298 = phi ptr [ %281, %277 ], [ %293, %284 ]
  %299 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull @ten_to_ptwo.tens)
  %300 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %301 = trunc i64 %300 to i32
  %302 = icmp eq ptr %21, null
  br i1 %302, label %326, label %303, !prof !177

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.real_format, ptr %21, i64 0, i32 9
  %305 = load i8, ptr %304, align 4, !tbaa !168
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %326, label %307, !prof !179

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 2
  %309 = load i64, ptr %308, align 8, !tbaa !91
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %307, %314
  %312 = phi i32 [ %315, %314 ], [ 2, %307 ]
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320, !llvm.loop !207

314:                                              ; preds = %311
  %315 = add nsw i32 %312, -1
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 %316
  %318 = load i64, ptr %317, align 8, !tbaa !91
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %311, label %320, !llvm.loop !207

320:                                              ; preds = %311, %314
  %321 = zext i1 %313 to i32
  br label %322

322:                                              ; preds = %320, %307
  %323 = phi i32 [ 1, %307 ], [ %321, %320 ]
  %324 = add nsw i32 %323, %301
  %325 = icmp sgt i32 %324, 0
  br label %351

326:                                              ; preds = %303, %296
  %327 = icmp eq i32 %301, 5
  br i1 %327, label %328, label %348, !prof !210

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 2
  %330 = load i64, ptr %329, align 8, !tbaa !91
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %348, !prof !205

332:                                              ; preds = %328, %335
  %333 = phi i32 [ %336, %335 ], [ 2, %328 ]
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %342, label %335, !prof !211, !llvm.loop !207

335:                                              ; preds = %332
  %336 = add nsw i32 %333, -1
  %337 = zext nneg i32 %336 to i64
  %338 = getelementptr inbounds %struct.real_value, ptr %7, i64 0, i32 1, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !91
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %332, label %341, !prof !205, !llvm.loop !207

341:                                              ; preds = %335
  br i1 %334, label %342, label %348, !prof !211

342:                                              ; preds = %332, %341
  %343 = getelementptr inbounds i8, ptr %298, i64 -1
  %344 = load i8, ptr %343, align 1, !tbaa !73
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  %347 = select i1 %346, i32 5, i32 6
  br label %348

348:                                              ; preds = %328, %342, %341, %326
  %349 = phi i32 [ %301, %326 ], [ 6, %341 ], [ %347, %342 ], [ 6, %328 ]
  %350 = icmp sgt i32 %349, 5
  br label %351

351:                                              ; preds = %348, %322
  %352 = phi i1 [ %325, %322 ], [ %350, %348 ]
  br i1 %352, label %353, label %369, !prof !212

353:                                              ; preds = %351
  %354 = icmp ugt ptr %298, %233
  br i1 %354, label %355, label %364, !prof !213

355:                                              ; preds = %353, %360
  %356 = phi ptr [ %357, %360 ], [ %298, %353 ]
  %357 = getelementptr inbounds i8, ptr %356, i64 -1
  %358 = load i8, ptr %357, align 1, !tbaa !73
  %359 = icmp eq i8 %358, 57
  br i1 %359, label %360, label %362, !prof !214

360:                                              ; preds = %355
  store i8 48, ptr %357, align 1, !tbaa !73
  %361 = icmp ugt ptr %357, %233
  br i1 %361, label %355, label %364, !prof !215, !llvm.loop !216

362:                                              ; preds = %355
  %363 = add i8 %358, 1
  store i8 %363, ptr %357, align 1, !tbaa !73
  br label %364

364:                                              ; preds = %360, %353, %362
  %365 = phi ptr [ %357, %362 ], [ %298, %353 ], [ %357, %360 ]
  %366 = icmp eq ptr %365, %233
  br i1 %366, label %367, label %369, !prof !214

367:                                              ; preds = %364
  store i8 49, ptr %234, align 1, !tbaa !73
  %368 = add nsw i32 %279, 1
  br label %369

369:                                              ; preds = %364, %367, %351
  %370 = phi i32 [ %368, %367 ], [ %279, %364 ], [ %279, %351 ]
  %371 = load i8, ptr %234, align 1, !tbaa !73
  store i8 %371, ptr %233, align 1, !tbaa !73
  store i8 46, ptr %234, align 1, !tbaa !73
  %372 = icmp eq i32 %4, 0
  br i1 %372, label %386, label %373, !prof !179

373:                                              ; preds = %369
  %374 = call i64 @llvm.smin.i64(i64 %297, i64 3)
  br label %375

375:                                              ; preds = %373, %378
  %376 = phi i64 [ %379, %378 ], [ %297, %373 ]
  %377 = icmp sgt i64 %376, 3
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = add nsw i64 %376, -1
  %380 = getelementptr inbounds i8, ptr %233, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !73
  %382 = icmp eq i8 %381, 48
  br i1 %382, label %375, label %383, !llvm.loop !217

383:                                              ; preds = %375, %378
  %384 = phi i64 [ %374, %375 ], [ %376, %378 ]
  %385 = getelementptr inbounds i8, ptr %233, i64 %384
  br label %386

386:                                              ; preds = %383, %369
  %387 = phi ptr [ %298, %369 ], [ %385, %383 ]
  %388 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %387, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %370)
  br label %389

389:                                              ; preds = %386, %46, %33, %29, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @decimal_real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @ten_to_ptwo(i32 noundef %0) unnamed_addr #12 !prof !218 !PGOFuncName !219 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %4, label %3, !prof !220

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2254, ptr noundef nonnull @.str.1) #27
  br label %4

4:                                                ; preds = %1, %3
  %5 = icmp slt i32 %0, 26
  br i1 %5, label %7, label %6, !prof !220

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2255, ptr noundef nonnull @.str.1) #27
  br label %7

7:                                                ; preds = %4, %6
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [26 x %struct.real_value], ptr @ten_to_ptwo.tens, i64 0, i64 %8
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !221

13:                                               ; preds = %7
  %14 = icmp slt i32 %0, 5
  br i1 %14, label %15, label %27, !prof !222

15:                                               ; preds = %13
  %16 = icmp sgt i32 %0, 0
  br i1 %16, label %17, label %23, !prof !195

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %20, %17 ], [ 10, %15 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %15 ]
  %20 = mul nsw i64 %18, %18
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %17, !prof !223, !llvm.loop !224

23:                                               ; preds = %17, %15
  %24 = phi i64 [ 10, %15 ], [ %20, %17 ]
  tail call void @real_from_integer(ptr noundef nonnull %9, i32 noundef 0, i64 noundef %24, i64 noundef 0, i32 noundef 1)
  br label %25

25:                                               ; preds = %7, %23, %27
  %26 = phi ptr [ %9, %27 ], [ %9, %23 ], [ %9, %7 ]
  ret ptr %26

27:                                               ; preds = %13
  %28 = add nsw i32 %0, -1
  %29 = tail call fastcc ptr @ten_to_ptwo(i32 noundef %28)
  %30 = tail call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %9, ptr noundef nonnull %29, ptr noundef nonnull %29)
  br label %25
}

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @rtd_divmod(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !prof !225 !PGOFuncName !226 {
  %3 = load i32, ptr %0, align 8
  %4 = ashr i32 %3, 6
  %5 = load i32, ptr %1, align 8
  %6 = ashr i32 %5, 6
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %82, label %8, !prof !227

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %10 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  br label %28

11:                                               ; preds = %75
  %12 = load i64, ptr %9, align 8, !tbaa !91
  %13 = and i64 %12, -9223372036854775808
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 2, %11 ], [ %18, %14 ]
  %16 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !91
  %18 = add nsw i64 %15, -1
  %19 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !91
  %21 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %20, i64 1)
  store i64 %21, ptr %16, align 8, !tbaa !91
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %23, label %14, !prof !228, !llvm.loop !128

23:                                               ; preds = %14
  %24 = add nsw i32 %31, -1
  %25 = shl i64 %76, 1
  %26 = load i64, ptr %10, align 8, !tbaa !91
  %27 = shl i64 %26, 1
  store i64 %27, ptr %10, align 8, !tbaa !91
  br label %28

28:                                               ; preds = %8, %23
  %29 = phi i64 [ %25, %23 ], [ 0, %8 ]
  %30 = phi i64 [ %13, %23 ], [ 0, %8 ]
  %31 = phi i32 [ %24, %23 ], [ %4, %8 ]
  %32 = icmp eq i64 %30, 0
  br i1 %32, label %36, label %52, !prof !229

33:                                               ; preds = %36
  %34 = add nsw i32 %38, -1
  %35 = icmp eq i32 %38, 0
  br i1 %35, label %49, label %36, !prof !230, !llvm.loop !131

36:                                               ; preds = %28, %33
  %37 = phi i32 [ %47, %33 ], [ undef, %28 ]
  %38 = phi i32 [ %34, %33 ], [ 2, %28 ]
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %39
  %43 = load i64, ptr %42, align 8, !tbaa !91
  %44 = icmp ugt i64 %41, %43
  %45 = icmp ult i64 %41, %43
  %46 = select i1 %45, i32 -1, i32 %37, !prof !231
  %47 = select i1 %44, i32 1, i32 %46, !prof !232
  %48 = icmp eq i64 %41, %43
  br i1 %48, label %33, label %49, !prof !233

49:                                               ; preds = %33, %36
  %50 = phi i32 [ %47, %36 ], [ 0, %33 ]
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %75, !prof !234

52:                                               ; preds = %49, %28
  br label %53

53:                                               ; preds = %52, %67
  %54 = phi i64 [ %71, %67 ], [ 0, %52 ]
  %55 = phi i32 [ %70, %67 ], [ 0, %52 ]
  %56 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %54
  %57 = load i64, ptr %56, align 8, !tbaa !91
  %58 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %54
  %59 = load i64, ptr %58, align 8, !tbaa !91
  %60 = sub i64 %57, %59
  %61 = icmp eq i32 %55, 0
  %62 = icmp ugt i64 %59, %57
  br i1 %61, label %67, label %63, !prof !235

63:                                               ; preds = %53
  %64 = add i64 %60, -1
  %65 = icmp eq i64 %60, 0
  %66 = or i1 %62, %65
  br label %67

67:                                               ; preds = %53, %63
  %68 = phi i1 [ %66, %63 ], [ %62, %53 ]
  %69 = phi i64 [ %64, %63 ], [ %60, %53 ]
  %70 = zext i1 %68 to i32
  store i64 %69, ptr %56, align 8, !tbaa !91
  %71 = add nuw nsw i64 %54, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %53, !prof !236, !llvm.loop !97

73:                                               ; preds = %67
  %74 = or disjoint i64 %29, 1
  br label %75

75:                                               ; preds = %49, %73
  %76 = phi i64 [ %74, %73 ], [ %29, %49 ]
  %77 = icmp sgt i32 %31, %6
  br i1 %77, label %11, label %78, !prof !237, !llvm.loop !238

78:                                               ; preds = %75
  %79 = and i32 %5, -64
  %80 = and i32 %3, 63
  %81 = or disjoint i32 %79, %80
  store i32 %81, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %82

82:                                               ; preds = %2, %78
  %83 = phi i64 [ %76, %78 ], [ 0, %2 ]
  ret i64 %83
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_to_decimal(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !61 {
  tail call void @real_to_decimal_for_mode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_to_hexadecimal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !61 {
  %6 = alloca [16 x i8], align 16
  %7 = load i32, ptr %1, align 8
  %8 = ashr i32 %7, 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  %9 = and i32 %7, 3
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 1, label %24
    i32 2, label %11
    i32 3, label %15
  ]

10:                                               ; preds = %5
  br label %24

11:                                               ; preds = %5
  %12 = and i32 %7, 8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.5, ptr @.str.4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) %14, i64 5, i1 false)
  br label %98

15:                                               ; preds = %5
  %16 = and i32 %7, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 43, i32 45
  %19 = and i32 %7, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 81, i32 83
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %18, i32 noundef %21)
  br label %98

23:                                               ; preds = %5
  unreachable

24:                                               ; preds = %5, %10
  %25 = phi i32 [ %8, %5 ], [ 0, %10 ]
  %26 = and i32 %7, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 4271950, ptr %0, align 1
  br label %98

29:                                               ; preds = %24
  %30 = icmp eq i64 %3, 0
  %31 = select i1 %30, i64 48, i64 %3
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %25)
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %34 = load i32, ptr %1, align 8
  %35 = lshr i32 %34, 3
  %36 = and i32 %35, 1
  %37 = zext nneg i32 %36 to i64
  %38 = add i64 %2, -5
  %39 = add i64 %33, %37
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %40, %2
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1861, ptr noundef nonnull @.str.1) #27
  br label %43

43:                                               ; preds = %29, %42
  %44 = tail call i64 @llvm.umin.i64(i64 %31, i64 %40)
  %45 = load i32, ptr %1, align 8
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !73
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %0, %43 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 48, ptr %51, align 1, !tbaa !73
  %53 = getelementptr inbounds i8, ptr %51, i64 2
  store i8 120, ptr %52, align 1, !tbaa !73
  %54 = getelementptr inbounds i8, ptr %51, i64 3
  store i8 48, ptr %53, align 1, !tbaa !73
  store i8 46, ptr %54, align 1, !tbaa !73
  br label %55

55:                                               ; preds = %50, %79
  %56 = phi i64 [ 2, %50 ], [ %80, %79 ]
  %57 = phi i64 [ %44, %50 ], [ %77, %79 ]
  %58 = phi i64 [ 4, %50 ], [ %76, %79 ]
  %59 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %56
  %60 = trunc i64 %58 to i32
  %61 = add i32 %60, 16
  br label %66

62:                                               ; preds = %66
  %63 = add nsw i64 %67, -4
  %64 = trunc i64 %76 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %79, label %66, !llvm.loop !239

66:                                               ; preds = %55, %62
  %67 = phi i64 [ 60, %55 ], [ %63, %62 ]
  %68 = phi i64 [ %57, %55 ], [ %77, %62 ]
  %69 = phi i64 [ %58, %55 ], [ %76, %62 ]
  %70 = getelementptr inbounds i8, ptr %51, i64 %69
  %71 = load i64, ptr %59, align 8, !tbaa !91
  %72 = lshr i64 %71, %67
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds [17 x i8], ptr @.str.10, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !73
  %76 = add i64 %69, 1
  store i8 %75, ptr %70, align 1, !tbaa !73
  %77 = add i64 %68, -1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %82, label %62

79:                                               ; preds = %62
  %80 = add nsw i64 %56, -1
  %81 = icmp eq i64 %56, 0
  br i1 %81, label %82, label %55, !llvm.loop !240

82:                                               ; preds = %79, %66
  %83 = icmp eq i32 %4, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  %85 = tail call i64 @llvm.smin.i64(i64 %76, i64 5)
  br label %86

86:                                               ; preds = %84, %89
  %87 = phi i64 [ %90, %89 ], [ %76, %84 ]
  %88 = icmp sgt i64 %87, 5
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = add nsw i64 %87, -1
  %91 = getelementptr inbounds i8, ptr %51, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !73
  %93 = icmp eq i8 %92, 48
  br i1 %93, label %86, label %94, !llvm.loop !241

94:                                               ; preds = %89, %86, %82
  %95 = phi i64 [ %76, %82 ], [ %85, %86 ], [ %87, %89 ]
  %96 = getelementptr inbounds i8, ptr %51, i64 %95
  %97 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %25)
  br label %98

98:                                               ; preds = %94, %28, %15, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i32 @real_from_string(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !176 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = load i8, ptr %1, align 1, !tbaa !73
  switch i8 %3, label %8 [
    i8 45, label %4
    i8 43, label %6
  ], !prof !242

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  br label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  br label %8

8:                                                ; preds = %2, %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %1, %2 ]
  %10 = phi i32 [ 8, %4 ], [ 0, %6 ], [ 0, %2 ]
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !177

13:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %14 = or disjoint i32 %10, 35
  br label %363

15:                                               ; preds = %8
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !177

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %19 = or disjoint i32 %10, 51
  br label %363

20:                                               ; preds = %15
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str.13, i64 noundef 3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !177

23:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %24 = or disjoint i32 %10, 2
  br label %363

25:                                               ; preds = %20
  %26 = load i8, ptr %9, align 1, !tbaa !73
  %27 = icmp eq i8 %26, 48
  br i1 %27, label %28, label %204, !prof !179

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %9, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !73
  switch i8 %30, label %204 [
    i8 120, label %31
    i8 88, label %31
  ], !prof !243

31:                                               ; preds = %28, %28
  %32 = getelementptr inbounds i8, ptr %9, i64 2
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %32, %31 ], [ %37, %33 ]
  %35 = load i8, ptr %34, align 1, !tbaa !73
  %36 = icmp eq i8 %35, 48
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %36, label %33, label %38, !prof !244, !llvm.loop !245

38:                                               ; preds = %33
  %39 = load i8, ptr %34, align 1, !tbaa !73
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !73
  %43 = icmp eq i8 %42, 99
  br i1 %43, label %76, label %44, !prof !184

44:                                               ; preds = %38, %67
  %45 = phi i8 [ %74, %67 ], [ %42, %38 ]
  %46 = phi i32 [ %68, %67 ], [ 188, %38 ]
  %47 = phi i32 [ %69, %67 ], [ 0, %38 ]
  %48 = phi ptr [ %70, %67 ], [ %34, %38 ]
  %49 = icmp sgt i32 %46, -1
  br i1 %49, label %50, label %61, !prof !246

50:                                               ; preds = %44
  %51 = zext i8 %45 to i64
  %52 = and i32 %46, 63
  %53 = zext nneg i32 %52 to i64
  %54 = shl i64 %51, %53
  %55 = lshr i32 %46, 6
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !91
  %59 = or i64 %58, %54
  store i64 %59, ptr %57, align 8, !tbaa !91
  %60 = add nsw i32 %46, -4
  br label %67

61:                                               ; preds = %44
  %62 = icmp eq i8 %45, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !91
  %66 = or i64 %65, 1
  store i64 %66, ptr %64, align 8, !tbaa !91
  br label %67

67:                                               ; preds = %61, %63, %50
  %68 = phi i32 [ %60, %50 ], [ %46, %63 ], [ %46, %61 ]
  %69 = add nuw nsw i32 %47, 4
  %70 = getelementptr inbounds i8, ptr %48, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !73
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !73
  %75 = icmp eq i8 %74, 99
  br i1 %75, label %76, label %44, !prof !246, !llvm.loop !247

76:                                               ; preds = %67, %38
  %77 = phi ptr [ %34, %38 ], [ %70, %67 ]
  %78 = phi i32 [ 0, %38 ], [ %69, %67 ]
  %79 = phi i32 [ 188, %38 ], [ %68, %67 ]
  %80 = phi i8 [ %39, %38 ], [ %71, %67 ]
  %81 = icmp eq i8 %80, 46
  br i1 %81, label %82, label %133, !prof !184

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %77, i64 1
  %84 = icmp eq i32 %79, 188
  br i1 %84, label %85, label %95, !prof !161

85:                                               ; preds = %82
  %86 = load i8, ptr %83, align 1, !tbaa !73
  %87 = icmp eq i8 %86, 48
  br i1 %87, label %88, label %95, !prof !205

88:                                               ; preds = %85, %88
  %89 = phi i32 [ %92, %88 ], [ %78, %85 ]
  %90 = phi ptr [ %91, %88 ], [ %83, %85 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = add nsw i32 %89, -4
  %93 = load i8, ptr %91, align 1, !tbaa !73
  %94 = icmp eq i8 %93, 48
  br i1 %94, label %88, label %95, !prof !205, !llvm.loop !248

95:                                               ; preds = %88, %85, %82
  %96 = phi ptr [ %83, %82 ], [ %83, %85 ], [ %91, %88 ]
  %97 = phi i32 [ %78, %82 ], [ %78, %85 ], [ %92, %88 ]
  %98 = load i8, ptr %96, align 1, !tbaa !73
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !73
  %102 = icmp eq i8 %101, 99
  br i1 %102, label %133, label %103, !prof !180

103:                                              ; preds = %95, %125
  %104 = phi i8 [ %131, %125 ], [ %101, %95 ]
  %105 = phi i32 [ %126, %125 ], [ %79, %95 ]
  %106 = phi ptr [ %127, %125 ], [ %96, %95 ]
  %107 = icmp sgt i32 %105, -1
  br i1 %107, label %108, label %119, !prof !249

108:                                              ; preds = %103
  %109 = zext i8 %104 to i64
  %110 = and i32 %105, 63
  %111 = zext nneg i32 %110 to i64
  %112 = shl i64 %109, %111
  %113 = lshr i32 %105, 6
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !91
  %117 = or i64 %116, %112
  store i64 %117, ptr %115, align 8, !tbaa !91
  %118 = add nsw i32 %105, -4
  br label %125

119:                                              ; preds = %103
  %120 = icmp eq i8 %104, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !91
  %124 = or i64 %123, 1
  store i64 %124, ptr %122, align 8, !tbaa !91
  br label %125

125:                                              ; preds = %119, %121, %108
  %126 = phi i32 [ %118, %108 ], [ %105, %121 ], [ %105, %119 ]
  %127 = getelementptr inbounds i8, ptr %106, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !73
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !73
  %132 = icmp eq i8 %131, 99
  br i1 %132, label %133, label %103, !prof !250, !llvm.loop !251

133:                                              ; preds = %125, %95, %76
  %134 = phi ptr [ %77, %76 ], [ %96, %95 ], [ %127, %125 ]
  %135 = phi i32 [ %78, %76 ], [ %97, %95 ], [ %97, %125 ]
  %136 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %137 = load i64, ptr %136, align 8, !tbaa !91
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149, !prof !205

139:                                              ; preds = %133, %142
  %140 = phi i32 [ %143, %142 ], [ 2, %133 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %202, label %142, !prof !177, !llvm.loop !207

142:                                              ; preds = %139
  %143 = add nsw i32 %140, -1
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !91
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %139, label %148, !prof !205, !llvm.loop !207

148:                                              ; preds = %142
  br i1 %141, label %202, label %149, !prof !177

149:                                              ; preds = %133, %148
  %150 = load i8, ptr %134, align 1, !tbaa !73
  switch i8 %150, label %198 [
    i8 112, label %151
    i8 80, label %151
  ], !prof !243

151:                                              ; preds = %149, %149
  %152 = getelementptr inbounds i8, ptr %134, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !73
  %154 = icmp eq i8 %153, 45
  %155 = getelementptr inbounds i8, ptr %134, i64 2
  %156 = icmp eq i8 %153, 43
  %157 = or i1 %154, %156
  %158 = select i1 %157, ptr %155, ptr %152, !prof !194
  %159 = load i8, ptr %158, align 1, !tbaa !73
  %160 = sext i8 %159 to i32
  %161 = and i32 %160, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !252
  %165 = and i16 %164, 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %188, label %167, !prof !180

167:                                              ; preds = %151
  %168 = add nsw i32 %160, -48
  br label %169

169:                                              ; preds = %167, %181
  %170 = phi i32 [ %168, %167 ], [ %184, %181 ]
  %171 = phi ptr [ %158, %167 ], [ %172, %181 ]
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !73
  %174 = sext i8 %173 to i32
  %175 = and i32 %174, 255
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !252
  %179 = and i16 %178, 4
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %188, label %181, !prof !253, !llvm.loop !254

181:                                              ; preds = %169
  %182 = mul nsw i32 %170, 10
  %183 = add i32 %182, -48
  %184 = add i32 %183, %174
  %185 = icmp sgt i32 %184, 33554431
  br i1 %185, label %186, label %169, !prof !255, !llvm.loop !254

186:                                              ; preds = %181
  %187 = select i1 %154, i32 13, i32 14
  br label %194

188:                                              ; preds = %169, %151
  %189 = phi i32 [ 0, %151 ], [ %170, %169 ]
  %190 = phi i1 [ %166, %151 ], [ %180, %169 ]
  %191 = sub nsw i32 0, %189
  %192 = select i1 %154, i32 %191, i32 %189, !prof !194
  %193 = add nsw i32 %192, %135
  br label %194

194:                                              ; preds = %186, %188
  %195 = phi i1 [ %190, %188 ], [ %180, %186 ]
  %196 = phi i32 [ %193, %188 ], [ %135, %186 ]
  %197 = phi i32 [ 0, %188 ], [ %187, %186 ]
  br i1 %195, label %198, label %202, !prof !179

198:                                              ; preds = %149, %194
  %199 = phi i32 [ %196, %194 ], [ %135, %149 ]
  %200 = shl i32 %199, 6
  %201 = or disjoint i32 %200, 1
  store i32 %201, ptr %0, align 8
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %202

202:                                              ; preds = %139, %148, %194, %198
  %203 = phi i32 [ 0, %198 ], [ %197, %194 ], [ 10, %148 ], [ 10, %139 ]
  switch i32 %203, label %366 [
    i32 0, label %355
    i32 10, label %359
    i32 13, label %360
    i32 14, label %361
  ], !prof !256

204:                                              ; preds = %28, %25
  %205 = load i32, ptr @ten_to_ptwo.tens, align 16
  %206 = and i32 %205, 3
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  tail call void @real_from_integer(ptr noundef nonnull @ten_to_ptwo.tens, i32 noundef 0, i64 noundef 10, i64 noundef 0, i32 noundef 1) #28
  br label %209

209:                                              ; preds = %204, %208
  br label %210

210:                                              ; preds = %209, %210
  %211 = phi ptr [ %214, %210 ], [ %9, %209 ]
  %212 = load i8, ptr %211, align 1, !tbaa !73
  %213 = icmp eq i8 %212, 48
  %214 = getelementptr inbounds i8, ptr %211, i64 1
  br i1 %213, label %210, label %215, !llvm.loop !257

215:                                              ; preds = %210
  %216 = load i8, ptr %211, align 1, !tbaa !73
  %217 = sext i8 %216 to i32
  %218 = and i32 %217, 255
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !252
  %222 = and i16 %221, 4
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %243, label %224

224:                                              ; preds = %215, %234
  %225 = phi i32 [ %236, %234 ], [ %217, %215 ]
  %226 = phi ptr [ %227, %234 ], [ %211, %215 ]
  %227 = getelementptr inbounds i8, ptr %226, i64 1
  %228 = add nsw i32 %225, -48
  %229 = tail call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @ten_to_ptwo.tens)
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %224
  %232 = tail call fastcc ptr @real_digit(i32 noundef %228)
  %233 = tail call fastcc zeroext i8 @do_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %232, i32 noundef 0), !range !81
  br label %234

234:                                              ; preds = %231, %224
  %235 = load i8, ptr %227, align 1, !tbaa !73
  %236 = sext i8 %235 to i32
  %237 = and i32 %236, 255
  %238 = zext nneg i32 %237 to i64
  %239 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !252
  %241 = and i16 %240, 4
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %243, label %224, !llvm.loop !258

243:                                              ; preds = %234, %215
  %244 = phi ptr [ %211, %215 ], [ %227, %234 ]
  %245 = phi i8 [ %216, %215 ], [ %235, %234 ]
  %246 = icmp eq i8 %245, 46
  br i1 %246, label %247, label %294

247:                                              ; preds = %243
  %248 = getelementptr inbounds i8, ptr %244, i64 1
  %249 = load i32, ptr %0, align 8
  %250 = and i32 %249, 3
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load i8, ptr %248, align 1, !tbaa !73
  %254 = icmp eq i8 %253, 48
  br i1 %254, label %255, label %262

255:                                              ; preds = %252, %255
  %256 = phi i32 [ %259, %255 ], [ 0, %252 ]
  %257 = phi ptr [ %258, %255 ], [ %248, %252 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = add nsw i32 %256, -1
  %260 = load i8, ptr %258, align 1, !tbaa !73
  %261 = icmp eq i8 %260, 48
  br i1 %261, label %255, label %262, !llvm.loop !259

262:                                              ; preds = %255, %252, %247
  %263 = phi ptr [ %248, %247 ], [ %248, %252 ], [ %258, %255 ]
  %264 = phi i32 [ 0, %247 ], [ 0, %252 ], [ %259, %255 ]
  %265 = load i8, ptr %263, align 1, !tbaa !73
  %266 = sext i8 %265 to i32
  %267 = and i32 %266, 255
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !252
  %271 = and i16 %270, 4
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %294, label %273

273:                                              ; preds = %262, %284
  %274 = phi i32 [ %287, %284 ], [ %266, %262 ]
  %275 = phi i32 [ %285, %284 ], [ %264, %262 ]
  %276 = phi ptr [ %277, %284 ], [ %263, %262 ]
  %277 = getelementptr inbounds i8, ptr %276, i64 1
  %278 = add nsw i32 %274, -48
  %279 = tail call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @ten_to_ptwo.tens)
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %273
  %282 = tail call fastcc ptr @real_digit(i32 noundef %278)
  %283 = tail call fastcc zeroext i8 @do_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %282, i32 noundef 0), !range !81
  br label %284

284:                                              ; preds = %281, %273
  %285 = add nsw i32 %275, -1
  %286 = load i8, ptr %277, align 1, !tbaa !73
  %287 = sext i8 %286 to i32
  %288 = and i32 %287, 255
  %289 = zext nneg i32 %288 to i64
  %290 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %289
  %291 = load i16, ptr %290, align 2, !tbaa !252
  %292 = and i16 %291, 4
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %294, label %273, !llvm.loop !260

294:                                              ; preds = %284, %262, %243
  %295 = phi ptr [ %244, %243 ], [ %263, %262 ], [ %277, %284 ]
  %296 = phi i32 [ 0, %243 ], [ %264, %262 ], [ %285, %284 ]
  %297 = load i32, ptr %0, align 8
  %298 = and i32 %297, 3
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %353, label %300

300:                                              ; preds = %294
  %301 = load i8, ptr %295, align 1, !tbaa !73
  switch i8 %301, label %349 [
    i8 101, label %302
    i8 69, label %302
  ]

302:                                              ; preds = %300, %300
  %303 = getelementptr inbounds i8, ptr %295, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !73
  %305 = icmp eq i8 %304, 45
  %306 = getelementptr inbounds i8, ptr %295, i64 2
  %307 = icmp eq i8 %304, 43
  %308 = or i1 %305, %307
  %309 = select i1 %308, ptr %306, ptr %303
  %310 = load i8, ptr %309, align 1, !tbaa !73
  %311 = sext i8 %310 to i32
  %312 = and i32 %311, 255
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !252
  %316 = and i16 %315, 4
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %339, label %318

318:                                              ; preds = %302
  %319 = add nsw i32 %311, -48
  br label %320

320:                                              ; preds = %318, %332
  %321 = phi i32 [ %319, %318 ], [ %335, %332 ]
  %322 = phi ptr [ %309, %318 ], [ %323, %332 ]
  %323 = getelementptr inbounds i8, ptr %322, i64 1
  %324 = load i8, ptr %323, align 1, !tbaa !73
  %325 = sext i8 %324 to i32
  %326 = and i32 %325, 255
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %327
  %329 = load i16, ptr %328, align 2, !tbaa !252
  %330 = and i16 %329, 4
  %331 = icmp eq i16 %330, 0
  br i1 %331, label %339, label %332, !llvm.loop !261

332:                                              ; preds = %320
  %333 = mul nsw i32 %321, 10
  %334 = add i32 %333, -48
  %335 = add i32 %334, %325
  %336 = icmp sgt i32 %335, 33554431
  br i1 %336, label %337, label %320, !llvm.loop !261

337:                                              ; preds = %332
  %338 = select i1 %305, i32 13, i32 14
  br label %345

339:                                              ; preds = %320, %302
  %340 = phi i32 [ 0, %302 ], [ %321, %320 ]
  %341 = phi i1 [ %317, %302 ], [ %331, %320 ]
  %342 = sub nsw i32 0, %340
  %343 = select i1 %305, i32 %342, i32 %340
  %344 = add nsw i32 %343, %296
  br label %345

345:                                              ; preds = %337, %339
  %346 = phi i1 [ %341, %339 ], [ %331, %337 ]
  %347 = phi i32 [ %344, %339 ], [ %296, %337 ]
  %348 = phi i32 [ 0, %339 ], [ %338, %337 ]
  br i1 %346, label %349, label %353

349:                                              ; preds = %300, %345
  %350 = phi i32 [ %347, %345 ], [ %296, %300 ]
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %349
  tail call fastcc void @times_pten(ptr noundef nonnull %0, i32 noundef %350)
  br label %353

353:                                              ; preds = %349, %352, %294, %345
  %354 = phi i32 [ %348, %345 ], [ 10, %294 ], [ 0, %352 ], [ 0, %349 ]
  switch i32 %354, label %366 [
    i32 0, label %355
    i32 10, label %359
    i32 13, label %360
    i32 14, label %361
  ]

355:                                              ; preds = %202, %353
  %356 = load i32, ptr %0, align 8
  %357 = and i32 %356, -9
  %358 = or disjoint i32 %357, %10
  br label %363

359:                                              ; preds = %202, %353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %363

360:                                              ; preds = %202, %353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %363

361:                                              ; preds = %202, %353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %362 = or disjoint i32 %10, 2
  br label %363

363:                                              ; preds = %13, %18, %23, %355, %359, %360, %361
  %364 = phi i32 [ %362, %361 ], [ %10, %360 ], [ %10, %359 ], [ %358, %355 ], [ %24, %23 ], [ %19, %18 ], [ %14, %13 ]
  %365 = phi i32 [ 1, %361 ], [ -1, %360 ], [ 0, %359 ], [ 0, %355 ], [ 0, %23 ], [ 0, %18 ], [ 0, %13 ]
  store i32 %364, ptr %0, align 8
  br label %366

366:                                              ; preds = %363, %353, %202
  %367 = phi i32 [ undef, %202 ], [ undef, %353 ], [ %365, %363 ]
  ret i32 %367
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @normalize(ptr nocapture noundef %0) unnamed_addr #19 !prof !262 !PGOFuncName !263 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %110, !prof !264

5:                                                ; preds = %1, %12
  %6 = phi i32 [ %14, %12 ], [ 2, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !91
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16, !prof !265

12:                                               ; preds = %5
  %13 = add nuw nsw i32 %7, 64
  %14 = add nsw i32 %6, -1
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %16, label %5, !prof !266, !llvm.loop !267

16:                                               ; preds = %5, %12
  %17 = phi i32 [ %7, %5 ], [ 192, %12 ]
  %18 = phi i32 [ %6, %5 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20, !prof !268

20:                                               ; preds = %16
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !91
  br label %26

24:                                               ; preds = %16
  %25 = and i32 %2, 56
  store i32 %25, ptr %0, align 8
  br label %110

26:                                               ; preds = %26, %20
  %27 = phi i64 [ %31, %26 ], [ 0, %20 ]
  %28 = lshr exact i64 -9223372036854775808, %27
  %29 = and i64 %28, %23
  %30 = icmp eq i64 %29, 0
  %31 = add nuw i64 %27, 1
  br i1 %30, label %26, label %32, !prof !269, !llvm.loop !270

32:                                               ; preds = %26
  %33 = trunc i64 %27 to i32
  %34 = add nuw nsw i32 %17, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %110, label %36, !prof !271

36:                                               ; preds = %32
  %37 = ashr i32 %2, 6
  %38 = sub nsw i32 %37, %34
  %39 = icmp sgt i32 %38, 33554431
  br i1 %39, label %40, label %43, !prof !272

40:                                               ; preds = %36
  %41 = and i32 %2, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %42 = or disjoint i32 %41, 2
  store i32 %42, ptr %0, align 8
  br label %110

43:                                               ; preds = %36
  %44 = icmp slt i32 %38, -33554431
  br i1 %44, label %45, label %47, !prof !272

45:                                               ; preds = %43
  %46 = and i32 %2, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %46, ptr %0, align 8
  br label %110

47:                                               ; preds = %43
  %48 = shl i32 %38, 6
  %49 = and i32 %2, 59
  %50 = or disjoint i32 %48, %49
  store i32 %50, ptr %0, align 8
  %51 = lshr i32 %34, 6
  %52 = and i32 %33, 63
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54, !prof !272

54:                                               ; preds = %47
  %55 = and i64 %27, 63
  %56 = sub nuw nsw i32 64, %52
  %57 = zext nneg i32 %56 to i64
  %58 = zext nneg i32 %51 to i64
  br label %85

59:                                               ; preds = %47
  %60 = icmp ult i32 %34, 192
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = xor i32 %51, 3
  %63 = zext nneg i32 %62 to i64
  br label %74

64:                                               ; preds = %74
  %65 = trunc i64 %83 to i32
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ 0, %59 ], [ %65, %64 ]
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %69, label %110

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %0, i64 8
  %71 = shl nuw nsw i32 %67, 3
  %72 = sub nuw nsw i32 24, %71
  %73 = zext nneg i32 %72 to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %73, i1 false), !tbaa !91
  br label %110

74:                                               ; preds = %74, %61
  %75 = phi i64 [ 0, %61 ], [ %83, %74 ]
  %76 = sub nuw nsw i64 2, %75
  %77 = trunc i64 %76 to i32
  %78 = sub i32 %77, %51
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !91
  %82 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %76
  store i64 %81, ptr %82, align 8, !tbaa !91
  %83 = add nuw nsw i64 %75, 1
  %84 = icmp eq i64 %83, %63
  br i1 %84, label %64, label %74, !llvm.loop !273

85:                                               ; preds = %102, %54
  %86 = phi i64 [ 0, %54 ], [ %108, %102 ]
  %87 = add nuw nsw i64 %86, %58
  %88 = icmp ugt i64 %87, 2
  br i1 %88, label %94, label %89, !prof !274

89:                                               ; preds = %85
  %90 = sub nsw i64 2, %87
  %91 = and i64 %90, 4294967295
  %92 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !91
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i64 [ %93, %89 ], [ 0, %85 ]
  %96 = shl i64 %95, %55
  %97 = icmp ugt i64 %87, 1
  br i1 %97, label %102, label %98, !prof !275

98:                                               ; preds = %94
  %99 = xor i64 %87, 1
  %100 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !91
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i64 [ %101, %98 ], [ 0, %94 ]
  %104 = lshr i64 %103, %57
  %105 = or i64 %104, %96
  %106 = sub nuw nsw i64 2, %86
  %107 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %106
  store i64 %105, ptr %107, align 8, !tbaa !91
  %108 = add nuw nsw i64 %86, 1
  %109 = icmp eq i64 %108, 3
  br i1 %109, label %110, label %85, !prof !276, !llvm.loop !277

110:                                              ; preds = %102, %69, %66, %32, %45, %40, %1, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @times_pten(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !61 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %1
  %7 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), align 16
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0, i64 noundef 1, i64 noundef 0, i32 noundef 1)
  br label %11

11:                                               ; preds = %5, %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i64 32, i1 false), !tbaa.struct !82
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi ptr [ %3, %11 ], [ %0, %2 ]
  %14 = phi i32 [ %6, %11 ], [ %1, %2 ]
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12, %24
  %17 = phi i32 [ %25, %24 ], [ 0, %12 ]
  %18 = phi i32 [ %26, %24 ], [ %14, %12 ]
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = call fastcc ptr @ten_to_ptwo(i32 noundef %17)
  %23 = call fastcc zeroext i8 @do_multiply(ptr noundef %13, ptr noundef %13, ptr noundef nonnull %22)
  br label %24

24:                                               ; preds = %16, %21
  %25 = add nuw nsw i32 %17, 1
  %26 = lshr i32 %18, 1
  %27 = icmp ult i32 %18, 2
  br i1 %27, label %28, label %16, !llvm.loop !278

28:                                               ; preds = %24, %12
  br i1 %4, label %31, label %29

29:                                               ; preds = %28
  %30 = call fastcc zeroext i8 @do_divide(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %3), !range !81
  br label %31

31:                                               ; preds = %29, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_from_string2(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = tail call i32 @real_from_string(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %2, ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_from_string3(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !73
  %7 = icmp eq i8 %6, 9
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @decimal_real_from_string(ptr noundef %0, ptr noundef %1) #27
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @real_from_string(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %9, %8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @real_convert(ptr noundef %0, i32 noundef %2, ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %11
  ret void
}

declare void @decimal_real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @real_from_integer(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !279 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = alloca [256 x i8], align 16
  %9 = icmp eq i64 %2, 0
  %10 = or i64 %3, %2
  %11 = icmp eq i64 %10, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br i1 %11, label %30, label %12, !prof !280

12:                                               ; preds = %5
  %13 = icmp slt i64 %3, 0
  %14 = icmp eq i32 %4, 0
  %15 = and i1 %13, %14
  %16 = select i1 %15, i32 8201, i32 8193, !prof !281
  store i32 %16, ptr %0, align 8
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19, !prof !282

19:                                               ; preds = %12
  br i1 %9, label %20, label %22

20:                                               ; preds = %19
  %21 = sub nsw i64 0, %3
  br label %25

22:                                               ; preds = %19
  %23 = xor i64 %3, -1
  %24 = sub i64 0, %2
  br label %25

25:                                               ; preds = %20, %22, %12
  %26 = phi i64 [ %21, %20 ], [ %23, %22 ], [ %3, %12 ]
  %27 = phi i64 [ 0, %20 ], [ %24, %22 ], [ %2, %12 ]
  %28 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  store i64 %26, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 1
  store i64 %27, ptr %29, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %0)
  br label %30

30:                                               ; preds = %5, %25
  %31 = zext i32 %1 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !73
  %34 = icmp eq i8 %33, 9
  br i1 %34, label %35, label %84, !prof !206

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !82
  %36 = load i32, ptr %6, align 8
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %8, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  br label %83

40:                                               ; preds = %35
  %41 = and i32 %36, -9
  store i32 %41, ptr %6, align 8
  %42 = ashr i32 %36, 6
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, 0x3FD34413509F79FF
  %45 = fptosi double %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %45, 252
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2214, ptr noundef nonnull @.str.1) #27
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), align 16
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i32 noundef 0, i64 noundef 1, i64 noundef 0, i32 noundef 1)
  br label %54

54:                                               ; preds = %53, %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 1), i64 32, i1 false), !tbaa.struct !82
  call fastcc void @times_pten(ptr noundef nonnull %7, i32 noundef %45)
  %55 = and i32 %36, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 45, ptr %8, align 16, !tbaa !73
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi ptr [ %58, %57 ], [ %8, %54 ]
  %61 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %62 = trunc i64 %61 to i32
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2224, ptr noundef nonnull @.str.1) #27
  br label %65

65:                                               ; preds = %64, %59
  %66 = trunc i64 %61 to i8
  %67 = add i8 %66, 48
  store i8 %67, ptr %60, align 1, !tbaa !73
  %68 = getelementptr inbounds i8, ptr %60, i64 1
  %69 = icmp sgt i32 %45, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65, %70
  %71 = phi ptr [ %77, %70 ], [ %68, %65 ]
  %72 = phi i32 [ %73, %70 ], [ %46, %65 ]
  %73 = add nsw i32 %72, -1
  call fastcc void @times_pten(ptr noundef nonnull %6, i32 noundef 1)
  %74 = call fastcc i64 @rtd_divmod(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %75 = trunc i64 %74 to i8
  %76 = add i8 %75, 48
  store i8 %76, ptr %71, align 1, !tbaa !73
  %77 = getelementptr inbounds i8, ptr %71, i64 1
  %78 = icmp sgt i32 %72, 2
  br i1 %78, label %70, label %79, !llvm.loop !283

79:                                               ; preds = %70, %65
  %80 = phi ptr [ %60, %65 ], [ %71, %70 ]
  %81 = phi ptr [ %68, %65 ], [ %77, %70 ]
  %82 = getelementptr inbounds i8, ptr %80, i64 2
  store i8 46, ptr %81, align 1, !tbaa !73
  store i8 0, ptr %82, align 1, !tbaa !73
  br label %83

83:                                               ; preds = %39, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @decimal_real_from_string(ptr noundef %0, ptr noundef nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #27
  br label %87

84:                                               ; preds = %30
  %85 = icmp eq i32 %1, 0
  br i1 %85, label %87, label %86, !prof !284

86:                                               ; preds = %84
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0)
  br label %87

87:                                               ; preds = %84, %86, %83
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @dconst_e_ptr() local_unnamed_addr #22 !prof !61 {
  %1 = load i32, ptr @dconst_e_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, ptr @dconst_e_ptr.value, align 8
  store i64 3, ptr getelementptr inbounds (%struct.real_value, ptr @dconst_e_ptr.value, i64 0, i32 1), align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.real_value, ptr @dconst_e_ptr.value, i64 0, i32 1, i64 1), i8 0, i64 16, i1 false), !tbaa !91
  br label %5

5:                                                ; preds = %4, %0
  ret ptr @dconst_e_ptr.value
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @dconst_third_ptr() local_unnamed_addr #9 !prof !61 {
  %1 = load i32, ptr @dconst_third_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 3), align 16
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @real_from_integer(ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 3), i32 noundef 0, i64 noundef 3, i64 noundef 0, i32 noundef 1)
  br label %9

9:                                                ; preds = %4, %8
  %10 = tail call zeroext i8 @real_arithmetic(ptr noundef nonnull @dconst_third_ptr.value, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull getelementptr inbounds ([10 x %struct.real_value], ptr @real_digit.num, i64 0, i64 3))
  br label %11

11:                                               ; preds = %9, %0
  ret ptr @dconst_third_ptr.value
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @dconst_sqrt2_ptr() local_unnamed_addr #22 !prof !61 {
  %1 = load i32, ptr @dconst_sqrt2_ptr.value, align 8
  %2 = and i32 %1, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, ptr @dconst_sqrt2_ptr.value, align 8
  store i64 3, ptr getelementptr inbounds (%struct.real_value, ptr @dconst_sqrt2_ptr.value, i64 0, i32 1), align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.real_value, ptr @dconst_sqrt2_ptr.value, i64 0, i32 1, i64 1), i8 0, i64 16, i1 false), !tbaa !91
  br label %5

5:                                                ; preds = %4, %0
  ret ptr @dconst_sqrt2_ptr.value
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @real_inf(ptr nocapture noundef writeonly %0) local_unnamed_addr #23 !prof !61 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @real_nan(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !61 {
  %5 = alloca %struct.real_value, align 8
  %6 = add i32 %3, -38
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2467, ptr noundef nonnull @.str.1) #27
  br label %12

12:                                               ; preds = %4, %11
  %13 = load i8, ptr %1, align 1, !tbaa !73
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = icmp eq i32 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %17 = select i1 %16, i32 51, i32 35
  br label %185

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 3, ptr %0, align 8
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi ptr [ %1, %18 ], [ %27, %19 ]
  %21 = load i8, ptr %20, align 1, !tbaa !73
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !252
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  br i1 %26, label %28, label %19, !llvm.loop !285

28:                                               ; preds = %19
  switch i8 %21, label %33 [
    i8 45, label %29
    i8 43, label %31
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds i8, ptr %20, i64 1
  br label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %20, i64 1
  br label %33

33:                                               ; preds = %28, %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %20, %28 ]
  %35 = load i8, ptr %34, align 1, !tbaa !73
  %36 = icmp eq i8 %35, 48
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !73
  switch i8 %39, label %42 [
    i8 120, label %40
    i8 88, label %40
  ]

40:                                               ; preds = %37, %37
  %41 = getelementptr inbounds i8, ptr %34, i64 2
  br label %42

42:                                               ; preds = %37, %40, %33
  %43 = phi ptr [ %41, %40 ], [ %34, %33 ], [ %38, %37 ]
  %44 = phi i32 [ 16, %40 ], [ 10, %33 ], [ 8, %37 ]
  %45 = load i8, ptr %43, align 1, !tbaa !73
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !73
  %49 = zext i8 %48 to i32
  %50 = icmp ugt i32 %44, %49
  br i1 %50, label %51, label %170

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %53 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1
  %54 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1
  br label %55

55:                                               ; preds = %51, %162
  %56 = phi i8 [ %48, %51 ], [ %167, %162 ]
  %57 = phi ptr [ %43, %51 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  switch i32 %44, label %139 [
    i32 8, label %58
    i32 16, label %74
    i32 10, label %90
  ]

58:                                               ; preds = %55, %69
  %59 = phi i64 [ %72, %69 ], [ 0, %55 ]
  %60 = sub nuw nsw i64 2, %59
  %61 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !91
  %63 = icmp eq i64 %59, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = and i64 %59, 4294967295
  %66 = xor i64 %65, 1
  %67 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !91
  br label %69

69:                                               ; preds = %64, %58
  %70 = phi i64 [ %68, %64 ], [ 0, %58 ]
  %71 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %70, i64 3)
  store i64 %71, ptr %61, align 8, !tbaa !91
  %72 = add nuw nsw i64 %59, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %140, label %58, !llvm.loop !277

74:                                               ; preds = %55, %85
  %75 = phi i64 [ %88, %85 ], [ 0, %55 ]
  %76 = sub nuw nsw i64 2, %75
  %77 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !91
  %79 = icmp eq i64 %75, 2
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = and i64 %75, 4294967295
  %82 = xor i64 %81, 1
  %83 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !91
  br label %85

85:                                               ; preds = %80, %74
  %86 = phi i64 [ %84, %80 ], [ 0, %74 ]
  %87 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %86, i64 4)
  store i64 %87, ptr %77, align 8, !tbaa !91
  %88 = add nuw nsw i64 %75, 1
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %140, label %74, !llvm.loop !277

90:                                               ; preds = %55, %90
  %91 = phi i64 [ %94, %90 ], [ 2, %55 ]
  %92 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !91
  %94 = add nsw i64 %91, -1
  %95 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !91
  %97 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %96, i64 1)
  %98 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1, i64 %91
  store i64 %97, ptr %98, align 8, !tbaa !91
  %99 = icmp eq i64 %94, 0
  br i1 %99, label %100, label %90, !llvm.loop !128

100:                                              ; preds = %90
  %101 = load i64, ptr %52, align 8, !tbaa !91
  %102 = shl i64 %101, 1
  store i64 %102, ptr %53, align 8, !tbaa !91
  br label %103

103:                                              ; preds = %100, %114
  %104 = phi i64 [ 0, %100 ], [ %117, %114 ]
  %105 = sub nuw nsw i64 2, %104
  %106 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !91
  %108 = icmp eq i64 %104, 2
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = and i64 %104, 4294967295
  %111 = xor i64 %110, 1
  %112 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !91
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i64 [ %113, %109 ], [ 0, %103 ]
  %116 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %115, i64 3)
  store i64 %116, ptr %106, align 8, !tbaa !91
  %117 = add nuw nsw i64 %104, 1
  %118 = icmp eq i64 %117, 3
  br i1 %118, label %119, label %103, !llvm.loop !277

119:                                              ; preds = %114, %133
  %120 = phi i64 [ %137, %133 ], [ 0, %114 ]
  %121 = phi i8 [ %136, %133 ], [ 0, %114 ]
  %122 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %120
  %123 = load i64, ptr %122, align 8, !tbaa !91
  %124 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1, i64 %120
  %125 = load i64, ptr %124, align 8, !tbaa !91
  %126 = add i64 %125, %123
  %127 = icmp eq i8 %121, 0
  %128 = icmp ult i64 %126, %123
  br i1 %127, label %133, label %129

129:                                              ; preds = %119
  %130 = add i64 %126, 1
  %131 = icmp eq i64 %130, 0
  %132 = or i1 %128, %131
  br label %133

133:                                              ; preds = %119, %129
  %134 = phi i1 [ %132, %129 ], [ %128, %119 ]
  %135 = phi i64 [ %130, %129 ], [ %126, %119 ]
  %136 = zext i1 %134 to i8
  store i64 %135, ptr %122, align 8, !tbaa !91
  %137 = add nuw nsw i64 %120, 1
  %138 = icmp eq i64 %137, 3
  br i1 %138, label %140, label %119, !llvm.loop !101

139:                                              ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2521, ptr noundef nonnull @.str.1) #27
  br label %140

140:                                              ; preds = %133, %85, %69, %139
  %141 = zext i8 %56 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i64 %141, ptr %54, align 8, !tbaa !91
  br label %142

142:                                              ; preds = %140, %156
  %143 = phi i64 [ 0, %140 ], [ %160, %156 ]
  %144 = phi i8 [ 0, %140 ], [ %159, %156 ]
  %145 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %143
  %146 = load i64, ptr %145, align 8, !tbaa !91
  %147 = getelementptr inbounds %struct.real_value, ptr %5, i64 0, i32 1, i64 %143
  %148 = load i64, ptr %147, align 8, !tbaa !91
  %149 = add i64 %148, %146
  %150 = icmp eq i8 %144, 0
  %151 = icmp ult i64 %149, %146
  br i1 %150, label %156, label %152

152:                                              ; preds = %142
  %153 = add i64 %149, 1
  %154 = icmp eq i64 %153, 0
  %155 = or i1 %151, %154
  br label %156

156:                                              ; preds = %142, %152
  %157 = phi i1 [ %155, %152 ], [ %151, %142 ]
  %158 = phi i64 [ %153, %152 ], [ %149, %142 ]
  %159 = zext i1 %157 to i8
  store i64 %158, ptr %145, align 8, !tbaa !91
  %160 = add nuw nsw i64 %143, 1
  %161 = icmp eq i64 %160, 3
  br i1 %161, label %162, label %142, !llvm.loop !101

162:                                              ; preds = %156
  %163 = getelementptr inbounds i8, ptr %57, i64 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  %164 = load i8, ptr %163, align 1, !tbaa !73
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !73
  %168 = zext i8 %167 to i32
  %169 = icmp ugt i32 %44, %168
  br i1 %169, label %55, label %170, !llvm.loop !286

170:                                              ; preds = %162, %42
  %171 = phi i8 [ %45, %42 ], [ %164, %162 ]
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 4
  %175 = load i32, ptr %174, align 8, !tbaa !173
  %176 = sub nsw i32 192, %175
  tail call fastcc void @lshift_significand(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %176)
  %177 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  %178 = load i64, ptr %177, align 8, !tbaa !91
  %179 = and i64 %178, 9223372036854775807
  store i64 %179, ptr %177, align 8, !tbaa !91
  %180 = icmp eq i32 %2, 0
  %181 = load i32, ptr %0, align 8
  %182 = select i1 %180, i32 16, i32 0
  %183 = and i32 %181, -17
  %184 = or disjoint i32 %183, %182
  br label %185

185:                                              ; preds = %15, %173
  %186 = phi i32 [ %184, %173 ], [ %17, %15 ]
  store i32 %186, ptr %0, align 8
  br label %187

187:                                              ; preds = %185, %170
  %188 = phi i8 [ 0, %170 ], [ 1, %185 ]
  ret i8 %188
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @lshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #19 !prof !61 !PGOFuncName !287 {
  %4 = lshr i32 %2, 6
  %5 = and i32 %2, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !272

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = sub nuw nsw i32 64, %5
  %10 = zext nneg i32 %9 to i64
  %11 = zext nneg i32 %4 to i64
  br label %41

12:                                               ; preds = %3
  %13 = icmp ult i32 %2, 192
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = xor i32 %4, 3
  %16 = zext nneg i32 %15 to i64
  br label %24

17:                                               ; preds = %24
  %18 = trunc i64 %33 to i32
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %17 ]
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %35

24:                                               ; preds = %14, %24
  %25 = phi i64 [ 0, %14 ], [ %33, %24 ]
  %26 = sub nuw nsw i64 2, %25
  %27 = trunc i64 %26 to i32
  %28 = sub i32 %27, %4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %26
  store i64 %31, ptr %32, align 8, !tbaa !91
  %33 = add nuw nsw i64 %25, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %17, label %24, !llvm.loop !273

35:                                               ; preds = %22, %35
  %36 = phi i64 [ %23, %22 ], [ %39, %35 ]
  %37 = sub nuw nsw i64 2, %36
  %38 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %37
  store i64 0, ptr %38, align 8, !tbaa !91
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %66, label %35, !llvm.loop !288

41:                                               ; preds = %7, %58
  %42 = phi i64 [ 0, %7 ], [ %64, %58 ]
  %43 = add nuw nsw i64 %42, %11
  %44 = icmp ugt i64 %43, 2
  br i1 %44, label %50, label %45, !prof !274

45:                                               ; preds = %41
  %46 = sub nsw i64 2, %43
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %41, %45
  %51 = phi i64 [ %49, %45 ], [ 0, %41 ]
  %52 = shl i64 %51, %8
  %53 = icmp ugt i64 %43, 1
  br i1 %53, label %58, label %54, !prof !275

54:                                               ; preds = %50
  %55 = xor i64 %43, 1
  %56 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !91
  br label %58

58:                                               ; preds = %50, %54
  %59 = phi i64 [ %57, %54 ], [ 0, %50 ]
  %60 = lshr i64 %59, %10
  %61 = or i64 %60, %52
  %62 = sub nuw nsw i64 2, %42
  %63 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %62
  store i64 %61, ptr %63, align 8, !tbaa !91
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %41, !prof !276, !llvm.loop !277

66:                                               ; preds = %58, %35, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_maxval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = add i32 %2, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2559, ptr noundef nonnull @.str.1) #27
  br label %10

10:                                               ; preds = %3, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !162
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @decimal_real_maxval(ptr noundef %0, i32 noundef %1, i32 noundef %2) #27
  br label %62

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, -12
  %18 = shl i32 %1, 3
  %19 = and i32 %18, 8
  %20 = or disjoint i32 %19, %17
  %21 = or disjoint i32 %20, 1
  store i32 %21, ptr %0, align 8
  %22 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !167
  %24 = shl i32 %23, 6
  %25 = and i32 %21, 61
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %0, align 8
  %27 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !165
  %29 = sub nsw i32 192, %28
  %30 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 -1, i64 24, i1 false)
  %31 = lshr i32 %29, 6
  %32 = icmp ult i32 %29, 64
  br i1 %32, label %39, label %33

33:                                               ; preds = %15
  %34 = getelementptr i8, ptr %0, i64 8
  %35 = lshr i32 %29, 6
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 1)
  %37 = shl nuw nsw i32 %36, 3
  %38 = zext nneg i32 %37 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %38, i1 false), !tbaa !91
  br label %39

39:                                               ; preds = %33, %15
  %40 = and i32 %29, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nsw i64 -1, %41
  %43 = zext nneg i32 %31 to i64
  %44 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !91
  %46 = and i64 %45, %42
  store i64 %46, ptr %44, align 8, !tbaa !91
  %47 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !173
  %49 = load i32, ptr %27, align 4, !tbaa !165
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = sub i32 191, %48
  %53 = and i32 %52, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = xor i64 %55, -1
  %57 = lshr i32 %52, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !91
  %61 = and i64 %60, %56
  store i64 %61, ptr %59, align 8, !tbaa !91
  br label %62

62:                                               ; preds = %39, %51, %14
  ret void
}

declare void @decimal_real_maxval(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @real_2expN(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %4 = icmp sgt i32 %1, 33554430
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, -4
  %8 = or disjoint i32 %7, 2
  store i32 %8, ptr %0, align 8
  br label %19

9:                                                ; preds = %3
  %10 = icmp slt i32 %1, -33554432
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 60
  %14 = shl i32 %1, 6
  %15 = add i32 %14, 64
  %16 = or disjoint i32 %13, %15
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %0, align 8
  %18 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 2
  store i64 -9223372036854775808, ptr %18, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %11, %9, %5
  %20 = zext i32 %2 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !73
  %23 = icmp eq i8 %22, 9
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @decimal_real_convert(ptr noundef %0, i32 noundef %2, ptr noundef %0) #27
  br label %25

25:                                               ; preds = %24, %19
  ret void
}

declare void @decimal_real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @round_for_format(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !159 !PGOFuncName !289 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !161

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !162
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @decimal_round_for_format(ptr noundef %0, ptr noundef nonnull %1) #27
  br label %188

12:                                               ; preds = %7
  tail call void @decimal_real_convert(ptr noundef nonnull %1, i32 noundef 39, ptr noundef nonnull %1) #27
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !165
  %16 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !166
  %18 = add nsw i32 %17, -1
  %19 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !167
  %21 = sub i32 192, %15
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 3
  switch i32 %23, label %56 [
    i32 0, label %27
    i32 2, label %188
    i32 3, label %39
    i32 1, label %57
  ], !prof !290

24:                                               ; preds = %68, %66, %167
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  store i32 %26, ptr %1, align 8
  br label %27

27:                                               ; preds = %13, %24
  %28 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %29 = load i8, ptr %28, align 1, !tbaa !172
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %188, !prof !205

31:                                               ; preds = %27
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, -9
  store i32 %33, ptr %1, align 8
  br label %188

34:                                               ; preds = %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %35

35:                                               ; preds = %34, %57
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %38 = or disjoint i32 %37, 2
  store i32 %38, ptr %1, align 8
  br label %188

39:                                               ; preds = %13
  %40 = lshr i32 %21, 6
  %41 = icmp ult i32 %21, 64
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %1, i64 8
  %44 = lshr i32 %21, 6
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 1)
  %46 = shl nuw nsw i32 %45, 3
  %47 = zext nneg i32 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %43, i8 0, i64 %47, i1 false), !tbaa !91
  br label %48

48:                                               ; preds = %42, %39
  %49 = and i32 %21, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nsw i64 -1, %50
  %52 = zext nneg i32 %40 to i64
  %53 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !91
  %55 = and i64 %54, %51
  store i64 %55, ptr %53, align 8, !tbaa !91
  br label %188

56:                                               ; preds = %13
  unreachable

57:                                               ; preds = %13
  %58 = ashr i32 %22, 6
  %59 = icmp sgt i32 %58, %20
  br i1 %59, label %35, label %60, !prof !211

60:                                               ; preds = %57
  %61 = icmp slt i32 %58, %17
  br i1 %61, label %62, label %81, !prof !211

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %64 = load i8, ptr %63, align 8, !tbaa !291
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = icmp slt i32 %58, %18
  br i1 %67, label %24, label %81

68:                                               ; preds = %62
  %69 = sub nsw i32 %18, %58
  %70 = icmp slt i32 %69, %15
  br i1 %70, label %71, label %24

71:                                               ; preds = %68
  %72 = add nsw i32 %69, 1
  %73 = tail call fastcc zeroext i8 @sticky_rshift_significand(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef %72), !range !81
  %74 = zext nneg i8 %73 to i64
  %75 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !91
  %77 = or i64 %76, %74
  store i64 %77, ptr %75, align 8, !tbaa !91
  %78 = load i32, ptr %1, align 8
  %79 = shl i32 %72, 6
  %80 = add i32 %78, %79
  store i32 %80, ptr %1, align 8
  br label %81

81:                                               ; preds = %71, %66, %60
  %82 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 9
  %83 = load i8, ptr %82, align 4, !tbaa !168
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %167, !prof !292

85:                                               ; preds = %81
  %86 = sub i32 191, %15
  %87 = sdiv i32 %86, 64
  %88 = srem i32 %86, 64
  %89 = icmp sgt i32 %86, 63
  br i1 %89, label %90, label %100, !prof !195

90:                                               ; preds = %85
  %91 = zext nneg i32 %87 to i64
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %98, %92 ]
  %94 = phi i64 [ 0, %90 ], [ %97, %92 ]
  %95 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %93
  %96 = load i64, ptr %95, align 8, !tbaa !91
  %97 = or i64 %96, %94
  %98 = add nuw nsw i64 %93, 1
  %99 = icmp eq i64 %98, %91
  br i1 %99, label %100, label %92, !prof !293, !llvm.loop !294

100:                                              ; preds = %92, %85
  %101 = phi i64 [ 0, %85 ], [ %97, %92 ]
  %102 = lshr i32 %86, 6
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !91
  %106 = and i32 %86, 63
  %107 = zext nneg i32 %106 to i64
  %108 = lshr i32 %21, 6
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %107
  %111 = and i64 %105, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %167, label %113, !prof !292

113:                                              ; preds = %100
  %114 = and i32 %21, 63
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %109
  %117 = load i64, ptr %116, align 8, !tbaa !91
  %118 = sext i32 %87 to i64
  %119 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !91
  %121 = zext nneg i32 %88 to i64
  %122 = shl nsw i64 -1, %121
  %123 = xor i64 %122, -1
  %124 = and i64 %120, %123
  %125 = or i64 %124, %101
  %126 = icmp eq i64 %125, 0
  %127 = shl nuw i64 1, %115
  %128 = and i64 %117, %127
  %129 = icmp eq i64 %128, 0
  %130 = select i1 %126, i1 %129, i1 false
  br i1 %130, label %167, label %131

131:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %132 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %133 = load i64, ptr %132, align 8, !tbaa !91
  %134 = or i64 %133, %127
  store i64 %134, ptr %132, align 8, !tbaa !91
  br label %135

135:                                              ; preds = %131, %149
  %136 = phi i64 [ 0, %131 ], [ %153, %149 ]
  %137 = phi i8 [ 0, %131 ], [ %152, %149 ]
  %138 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %136
  %139 = load i64, ptr %138, align 8, !tbaa !91
  %140 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %136
  %141 = load i64, ptr %140, align 8, !tbaa !91
  %142 = add i64 %141, %139
  %143 = icmp eq i8 %137, 0
  %144 = icmp ult i64 %142, %139
  br i1 %143, label %149, label %145

145:                                              ; preds = %135
  %146 = add i64 %142, 1
  %147 = icmp eq i64 %146, 0
  %148 = or i1 %144, %147
  br label %149

149:                                              ; preds = %135, %145
  %150 = phi i1 [ %148, %145 ], [ %144, %135 ]
  %151 = phi i64 [ %146, %145 ], [ %142, %135 ]
  %152 = zext i1 %150 to i8
  store i64 %151, ptr %138, align 8, !tbaa !91
  %153 = add nuw nsw i64 %136, 1
  %154 = icmp eq i64 %153, 3
  br i1 %154, label %155, label %135, !llvm.loop !101

155:                                              ; preds = %149
  br i1 %150, label %156, label %166

156:                                              ; preds = %155
  %157 = load i32, ptr %1, align 8
  %158 = and i32 %157, -64
  %159 = add i32 %158, 64
  %160 = and i32 %157, 63
  %161 = or disjoint i32 %159, %160
  store i32 %161, ptr %1, align 8
  %162 = ashr exact i32 %159, 6
  %163 = icmp sgt i32 %162, %20
  br i1 %163, label %34, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 -9223372036854775808, ptr %165, align 8, !tbaa !91
  br label %166

166:                                              ; preds = %155, %164
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %167

167:                                              ; preds = %166, %81, %100, %113
  %168 = load i32, ptr %1, align 8
  %169 = ashr i32 %168, 6
  %170 = icmp slt i32 %169, %17
  br i1 %170, label %24, label %171, !prof !211

171:                                              ; preds = %167
  %172 = lshr i32 %21, 6
  %173 = icmp ult i32 %21, 64
  br i1 %173, label %180, label %174, !prof !295

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %1, i64 8
  %176 = lshr i32 %21, 6
  %177 = tail call i32 @llvm.umax.i32(i32 %176, i32 1)
  %178 = shl nuw nsw i32 %177, 3
  %179 = zext nneg i32 %178 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %175, i8 0, i64 %179, i1 false), !tbaa !91
  br label %180

180:                                              ; preds = %174, %171
  %181 = and i32 %21, 63
  %182 = zext nneg i32 %181 to i64
  %183 = shl nsw i64 -1, %182
  %184 = zext nneg i32 %172 to i64
  %185 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !91
  %187 = and i64 %186, %183
  store i64 %187, ptr %185, align 8, !tbaa !91
  br label %188

188:                                              ; preds = %27, %35, %13, %31, %180, %48, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_value_truncate(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, i32 noundef %1, ptr noundef byval(%struct.real_value) align 8 %2) local_unnamed_addr #9 !prof !61 {
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @exact_real_truncate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !61 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %4 = add i32 %0, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2775, ptr noundef nonnull @.str.1) #27
  br label %10

10:                                               ; preds = %2, %9
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !166
  %13 = load i32, ptr %1, align 8
  %14 = ashr i32 %13, 6
  %15 = icmp slt i32 %14, %12
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  call void @real_convert(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1)
  %17 = call zeroext i8 @real_identical(ptr noundef nonnull %3, ptr noundef nonnull %1), !range !81
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi i8 [ %17, %16 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret i8 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @real_to_target_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  call fastcc void @round_for_format(ptr noundef %2, ptr noundef nonnull %4)
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr %5, ptr %0
  %8 = load ptr, ptr %2, align 8, !tbaa !296
  call void %8(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %4) #27
  %9 = load i64, ptr %7, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i64 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @real_to_target(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca i64, align 8
  %6 = add i32 %2, -38
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2818, ptr noundef nonnull @.str.1) #27
  br label %12

12:                                               ; preds = %3, %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !82
  call fastcc void @round_for_format(ptr noundef %9, ptr noundef nonnull %4)
  %13 = icmp eq ptr %0, null
  %14 = select i1 %13, ptr %5, ptr %0
  %15 = load ptr, ptr %9, align 8, !tbaa !296
  call void %15(ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %4) #27
  %16 = load i64, ptr %14, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i64 %16
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_from_target_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = getelementptr inbounds %struct.real_format, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !297
  tail call void %5(ptr noundef %2, ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_from_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = add i32 %2, -38
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2842, ptr noundef nonnull @.str.1) #27
  br label %10

10:                                               ; preds = %3, %9
  %11 = getelementptr inbounds %struct.real_format, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !297
  tail call void %12(ptr noundef %7, ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @significand_size(i32 noundef %0) local_unnamed_addr #16 !prof !61 {
  %2 = add i32 %0, -38
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.real_format, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !162
  %10 = icmp eq i32 %9, 10
  %11 = getelementptr inbounds %struct.real_format, ptr %5, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !165
  br i1 %10, label %13, label %17

13:                                               ; preds = %7
  %14 = sitofp i32 %12 to double
  %15 = fmul double %14, 0x400A934F0A294EAE
  %16 = fptosi double %15 to i32
  br label %17

17:                                               ; preds = %7, %1, %13
  %18 = phi i32 [ %16, %13 ], [ 0, %1 ], [ %12, %7 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @real_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #24 !prof !298 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 3
  %4 = lshr i32 %2, 1
  %5 = and i32 %4, 4
  %6 = or disjoint i32 %5, %3
  switch i32 %3, label %19 [
    i32 0, label %32
    i32 2, label %32
    i32 1, label %7
    i32 3, label %13
  ], !prof !299

7:                                                ; preds = %1
  %8 = ashr i32 %2, 3
  %9 = and i32 %8, -8
  %10 = or disjoint i32 %6, %9
  br label %11

11:                                               ; preds = %13, %7
  %12 = phi i32 [ %10, %7 ], [ %16, %13 ]
  br label %20

13:                                               ; preds = %1
  %14 = shl i32 %2, 27
  %15 = ashr i32 %14, 31
  %16 = xor i32 %6, %15
  %17 = and i32 %2, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %32

19:                                               ; preds = %1
  unreachable

20:                                               ; preds = %11, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %11 ]
  %22 = phi i32 [ %29, %20 ], [ %12, %11 ]
  %23 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %21
  %24 = load i64, ptr %23, align 8, !tbaa !91
  %25 = lshr i64 %24, 32
  %26 = zext i32 %22 to i64
  %27 = xor i64 %25, %26
  %28 = xor i64 %27, %24
  %29 = trunc i64 %28 to i32
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %20, !prof !300, !llvm.loop !301

32:                                               ; preds = %20, %1, %13, %1
  %33 = phi i32 [ %6, %1 ], [ %16, %13 ], [ %6, %1 ], [ %29, %20 ]
  ret i32 %33
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_single(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = shl i32 %4, 28
  %8 = and i32 %7, -2147483648
  %9 = zext i32 %8 to i64
  %10 = lshr i64 %6, 40
  %11 = and i64 %10, 8388607
  %12 = and i32 %4, 3
  switch i32 %12, label %59 [
    i32 0, label %60
    i32 2, label %13
    i32 3, label %21
    i32 1, label %50
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %15 = load i8, ptr %14, align 1, !tbaa !171
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = or disjoint i64 %9, 2139095040
  br label %60

19:                                               ; preds = %13
  %20 = or disjoint i64 %9, 2147483647
  br label %60

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 2, !tbaa !170
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = and i32 %4, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 1, !tbaa !302
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i64 0, i64 4194303
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %32, %28 ], [ %11, %25 ]
  %35 = lshr i32 %4, 4
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %38 = load i8, ptr %37, align 2, !tbaa !303
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  %41 = and i64 %34, 4194303
  %42 = or i64 %34, 4194304
  %43 = select i1 %40, i64 %41, i64 %42
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 2097152, i64 %43
  %46 = or disjoint i64 %45, %9
  %47 = or i64 %46, 2139095040
  br label %60

48:                                               ; preds = %21
  %49 = or disjoint i64 %9, 2147483647
  br label %60

50:                                               ; preds = %3
  %51 = ashr i32 %4, 6
  %52 = add nsw i32 %51, 126
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 23
  %55 = icmp slt i64 %6, 0
  %56 = select i1 %55, i64 %54, i64 0
  %57 = or i64 %56, %9
  %58 = or disjoint i64 %57, %11
  br label %60

59:                                               ; preds = %3
  unreachable

60:                                               ; preds = %33, %48, %17, %19, %50, %3
  %61 = phi i64 [ %58, %50 ], [ %47, %33 ], [ %49, %48 ], [ %18, %17 ], [ %20, %19 ], [ %9, %3 ]
  store i64 %61, ptr %1, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_single(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = lshr i64 %4, 31
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %9 = shl i64 %4, 40
  %10 = and i64 %9, 9223370937343148032
  %11 = trunc i32 %8 to i8
  switch i8 %11, label %71 [
    i8 0, label %12
    i8 -1, label %37
  ]

12:                                               ; preds = %3
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !291
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %1, align 8
  %20 = and i32 %19, 52
  %21 = shl i32 %6, 3
  %22 = and i32 %21, 8
  %23 = or disjoint i32 %22, %20
  %24 = or disjoint i32 %23, -8063
  store i32 %24, ptr %1, align 8
  %25 = shl nuw i64 %10, 1
  %26 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %25, ptr %26, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %1)
  br label %84

27:                                               ; preds = %14, %12
  %28 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %29 = load i8, ptr %28, align 1, !tbaa !172
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %1, align 8
  %33 = shl i32 %6, 3
  %34 = and i32 %33, 8
  %35 = and i32 %32, -9
  %36 = or disjoint i32 %35, %34
  store i32 %36, ptr %1, align 8
  br label %84

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %39 = load i8, ptr %38, align 2, !tbaa !170
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %43 = load i8, ptr %42, align 1, !tbaa !171
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %41, %37
  %46 = icmp eq i64 %10, 0
  %47 = load i32, ptr %1, align 8
  br i1 %46, label %65, label %48

48:                                               ; preds = %45
  %49 = shl i32 %6, 3
  %50 = and i32 %49, 8
  %51 = and i32 %47, -12
  %52 = or disjoint i32 %50, %51
  %53 = or disjoint i32 %52, 3
  store i32 %53, ptr %1, align 8
  %54 = lshr i64 %9, 62
  %55 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %56 = load i8, ptr %55, align 2, !tbaa !303
  %57 = zext i8 %56 to i64
  %58 = xor i64 %54, %57
  %59 = trunc i64 %58 to i32
  %60 = shl nuw nsw i32 %59, 4
  %61 = and i32 %60, 16
  %62 = and i32 %53, -17
  %63 = or disjoint i32 %61, %62
  store i32 %63, ptr %1, align 8
  %64 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %10, ptr %64, align 8, !tbaa !91
  br label %84

65:                                               ; preds = %45
  %66 = and i32 %47, -12
  %67 = shl i32 %6, 3
  %68 = and i32 %67, 8
  %69 = or disjoint i32 %68, %66
  %70 = or disjoint i32 %69, 2
  store i32 %70, ptr %1, align 8
  br label %84

71:                                               ; preds = %3, %41
  %72 = load i32, ptr %1, align 8
  %73 = and i32 %72, 52
  %74 = shl i32 %6, 3
  %75 = and i32 %74, 8
  %76 = or disjoint i32 %75, %73
  %77 = shl nuw nsw i32 %8, 6
  %78 = and i32 %77, 16320
  %79 = add nsw i32 %78, -8064
  %80 = or disjoint i32 %76, %79
  %81 = or disjoint i32 %80, 1
  store i32 %81, ptr %1, align 8
  %82 = or i64 %9, -9223372036854775808
  %83 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %82, ptr %83, align 8, !tbaa !91
  br label %84

84:                                               ; preds = %71, %65, %48, %18, %31, %27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_double(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = load i32, ptr %2, align 8
  %7 = shl i32 %6, 28
  %8 = and i32 %7, -2147483648
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %5, 11
  %11 = and i64 %10, 4294967295
  %12 = lshr i64 %5, 43
  %13 = and i64 %12, 1048575
  %14 = and i32 %6, 3
  switch i32 %14, label %65 [
    i32 0, label %66
    i32 2, label %15
    i32 3, label %23
    i32 1, label %56
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 1, !tbaa !171
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = or disjoint i64 %9, 2146435072
  br label %66

21:                                               ; preds = %15
  %22 = or disjoint i64 %9, 2147483647
  br label %66

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !170
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = and i32 %6, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %32 = load i8, ptr %31, align 1, !tbaa !302
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i64 0, i64 4294967295
  %35 = select i1 %33, i64 0, i64 524287
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i64 [ %11, %27 ], [ %34, %30 ]
  %38 = phi i64 [ %13, %27 ], [ %35, %30 ]
  %39 = lshr i32 %6, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %42 = load i8, ptr %41, align 2, !tbaa !303
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %40, %43
  %45 = and i64 %38, 524287
  %46 = or i64 %38, 524288
  %47 = select i1 %44, i64 %45, i64 %46
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %37, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = select i1 %50, i64 262144, i64 %47
  %52 = or disjoint i64 %51, %9
  %53 = or i64 %52, 2146435072
  br label %66

54:                                               ; preds = %23
  %55 = or disjoint i64 %9, 2147483647
  br label %66

56:                                               ; preds = %3
  %57 = ashr i32 %6, 6
  %58 = add nsw i32 %57, 1022
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 20
  %61 = icmp slt i64 %5, 0
  %62 = select i1 %61, i64 %60, i64 0
  %63 = or i64 %62, %9
  %64 = or disjoint i64 %63, %13
  br label %66

65:                                               ; preds = %3
  unreachable

66:                                               ; preds = %36, %54, %19, %21, %56, %3
  %67 = phi i64 [ %64, %56 ], [ %53, %36 ], [ %55, %54 ], [ %20, %19 ], [ %22, %21 ], [ %9, %3 ]
  %68 = phi i64 [ %11, %56 ], [ %37, %36 ], [ 4294967295, %54 ], [ 0, %19 ], [ 4294967295, %21 ], [ 0, %3 ]
  store i64 %68, ptr %1, align 8, !tbaa !91
  %69 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %67, ptr %69, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_double(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = and i64 %4, 4294967295
  %8 = lshr i64 %6, 31
  %9 = trunc i64 %8 to i32
  %10 = trunc i64 %6 to i32
  %11 = lshr i32 %10, 20
  %12 = and i32 %11, 2047
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %13 = shl i64 %6, 11
  %14 = lshr i64 %7, 21
  %15 = and i64 %13, 2147481600
  %16 = or disjoint i64 %15, %14
  %17 = shl nuw nsw i64 %7, 11
  switch i32 %12, label %85 [
    i32 0, label %18
    i32 2047, label %47
  ]

18:                                               ; preds = %3
  %19 = icmp ne i64 %16, 0
  %20 = icmp ne i64 %7, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %24 = load i8, ptr %23, align 8, !tbaa !291
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 52
  %29 = shl i32 %9, 3
  %30 = and i32 %29, 8
  %31 = or disjoint i32 %30, %28
  %32 = or disjoint i32 %31, -65407
  store i32 %32, ptr %1, align 8
  %33 = shl nuw i64 %16, 33
  %34 = shl nuw nsw i64 %7, 12
  %35 = or i64 %33, %34
  %36 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %35, ptr %36, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %1)
  br label %99

37:                                               ; preds = %18, %22
  %38 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %39 = load i8, ptr %38, align 1, !tbaa !172
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %99, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %1, align 8
  %43 = shl i32 %9, 3
  %44 = and i32 %43, 8
  %45 = and i32 %42, -9
  %46 = or disjoint i32 %45, %44
  store i32 %46, ptr %1, align 8
  br label %99

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %49 = load i8, ptr %48, align 2, !tbaa !170
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %53 = load i8, ptr %52, align 1, !tbaa !171
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %51, %47
  %56 = icmp ne i64 %16, 0
  %57 = icmp ne i64 %7, 0
  %58 = select i1 %56, i1 true, i1 %57
  %59 = load i32, ptr %1, align 8
  br i1 %58, label %60, label %79

60:                                               ; preds = %55
  %61 = shl i32 %9, 3
  %62 = and i32 %61, 8
  %63 = and i32 %59, -12
  %64 = or disjoint i32 %62, %63
  %65 = or disjoint i32 %64, 3
  store i32 %65, ptr %1, align 8
  %66 = lshr i64 %13, 30
  %67 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %68 = load i8, ptr %67, align 2, !tbaa !303
  %69 = zext i8 %68 to i64
  %70 = xor i64 %66, %69
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 4
  %73 = and i32 %72, 16
  %74 = and i32 %65, -17
  %75 = or disjoint i32 %73, %74
  store i32 %75, ptr %1, align 8
  %76 = shl nuw nsw i64 %16, 32
  %77 = or i64 %76, %17
  %78 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %77, ptr %78, align 8, !tbaa !91
  br label %99

79:                                               ; preds = %55
  %80 = and i32 %59, -12
  %81 = shl i32 %9, 3
  %82 = and i32 %81, 8
  %83 = or disjoint i32 %82, %80
  %84 = or disjoint i32 %83, 2
  store i32 %84, ptr %1, align 8
  br label %99

85:                                               ; preds = %3, %51
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 52
  %88 = shl i32 %9, 3
  %89 = and i32 %88, 8
  %90 = or disjoint i32 %89, %87
  %91 = shl nuw nsw i32 %12, 6
  %92 = add nsw i32 %91, -65408
  %93 = or disjoint i32 %90, %92
  %94 = or disjoint i32 %93, 1
  store i32 %94, ptr %1, align 8
  %95 = shl nuw nsw i64 %16, 32
  %96 = or i64 %17, %95
  %97 = or disjoint i64 %96, -9223372036854775808
  %98 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %97, ptr %98, align 8, !tbaa !91
  br label %99

99:                                               ; preds = %85, %79, %60, %26, %41, %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_ieee_extended_motorola(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !61 {
  %4 = alloca [3 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  call fastcc void @encode_ieee_extended(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  %5 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  %6 = load i64, ptr %5, align 16, !tbaa !91
  %7 = shl i64 %6, 16
  store i64 %7, ptr %1, align 8, !tbaa !91
  %8 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %9, ptr %10, align 8, !tbaa !91
  %11 = load i64, ptr %4, align 16, !tbaa !91
  %12 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %11, ptr %12, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_motorola(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = alloca [3 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = getelementptr inbounds i64, ptr %2, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !91
  store i64 %6, ptr %4, align 16, !tbaa !91
  %7 = getelementptr inbounds i64, ptr %2, i64 1
  %8 = load i64, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 1
  store i64 %8, ptr %9, align 8, !tbaa !91
  %10 = load i64, ptr %2, align 8, !tbaa !91
  %11 = lshr i64 %10, 16
  %12 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  store i64 %11, ptr %12, align 16, !tbaa !91
  call fastcc void @decode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_ieee_extended_intel_96(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !61 {
  tail call fastcc void @encode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_intel_96(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  tail call fastcc void @decode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_ieee_extended_intel_128(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !61 {
  tail call fastcc void @encode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 0, ptr %4, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_extended_intel_128(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  tail call fastcc void @decode_ieee_extended(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_ibm_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %7 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %8 = load i8, ptr %7, align 2, !tbaa !303
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @mips_double_format, ptr @ieee_double_format
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call fastcc void @normalize(ptr noundef nonnull %5)
  br label %15

15:                                               ; preds = %14, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !82
  call fastcc void @round_for_format(ptr noundef nonnull %10, ptr noundef nonnull %4)
  call void @encode_ieee_double(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %4)
  %16 = load i32, ptr %4, align 8
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 1), !range !81
  call fastcc void @round_for_format(ptr noundef nonnull %10, ptr noundef nonnull %6)
  %21 = getelementptr inbounds i64, ptr %1, i64 2
  call void @encode_ieee_double(ptr noundef nonnull %10, ptr noundef nonnull %21, ptr noundef nonnull %6)
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds i64, ptr %1, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @decode_ibm_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #25 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 2, !tbaa !303
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @mips_double_format, ptr @ieee_double_format
  call void @decode_ieee_double(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef %2)
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 3
  switch i32 %11, label %12 [
    i32 0, label %15
    i32 2, label %15
    i32 3, label %15
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds i64, ptr %2, i64 2
  call void @decode_ieee_double(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %13)
  %14 = call fastcc zeroext i8 @do_add(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0), !range !81
  br label %16

15:                                               ; preds = %3, %3, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !82
  br label %16

16:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @encode_ieee_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %7 = load i32, ptr %2, align 8
  %8 = shl i32 %7, 28
  %9 = and i32 %8, -2147483648
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %12, %17 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp eq i64 %11, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 %12
  %16 = load i64, ptr %15, align 8, !tbaa !91
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i64 [ %16, %14 ], [ 0, %10 ]
  %19 = icmp eq i64 %11, 0
  %20 = select i1 %19, i64 %6, i64 0
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %18, i64 49)
  %22 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 %11
  store i64 %21, ptr %22, align 8, !tbaa !91
  %23 = icmp eq i64 %12, 3
  br i1 %23, label %24, label %10, !llvm.loop !174

24:                                               ; preds = %17
  %25 = sext i32 %9 to i64
  %26 = and i32 %7, 3
  switch i32 %26, label %101 [
    i32 0, label %102
    i32 2, label %27
    i32 3, label %35
    i32 1, label %83
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %29 = load i8, ptr %28, align 1, !tbaa !171
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = or disjoint i64 %25, 2147418112
  br label %102

33:                                               ; preds = %27
  %34 = or disjoint i64 %25, 2147483647
  br label %102

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %37 = load i8, ptr %36, align 2, !tbaa !170
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %35
  %40 = or disjoint i64 %25, 2147418112
  %41 = and i32 %7, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %45 = load i8, ptr %44, align 1, !tbaa !302
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = or disjoint i64 %25, 2147450879
  br label %60

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !91
  %52 = lshr i64 %51, 32
  %53 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %54 = load i64, ptr %53, align 8, !tbaa !91
  %55 = lshr i64 %54, 32
  %56 = and i64 %55, 65535
  %57 = or disjoint i64 %56, %40
  %58 = and i64 %51, 4294967295
  %59 = and i64 %54, 4294967295
  br label %60

60:                                               ; preds = %43, %47, %49
  %61 = phi i64 [ 4294967295, %47 ], [ 0, %43 ], [ %59, %49 ]
  %62 = phi i64 [ 4294967295, %47 ], [ 0, %43 ], [ %52, %49 ]
  %63 = phi i64 [ 4294967295, %47 ], [ 0, %43 ], [ %58, %49 ]
  %64 = phi i64 [ %48, %47 ], [ %40, %43 ], [ %57, %49 ]
  %65 = lshr i32 %7, 4
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %68 = load i8, ptr %67, align 2, !tbaa !303
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %66, %69
  %71 = and i64 %64, -32769
  %72 = select i1 %70, i64 0, i64 32768
  %73 = or disjoint i64 %72, %71
  %74 = and i64 %73, 65535
  %75 = or i64 %61, %74
  %76 = or i64 %75, %62
  %77 = or i64 %76, %63
  %78 = icmp eq i64 %77, 0
  %79 = or i64 %73, 16384
  %80 = select i1 %78, i64 %79, i64 %73
  br label %102

81:                                               ; preds = %35
  %82 = or disjoint i64 %25, 2147483647
  br label %102

83:                                               ; preds = %24
  %84 = ashr i32 %7, 6
  %85 = add nsw i32 %84, 16382
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 16
  %88 = icmp slt i64 %6, 0
  %89 = select i1 %88, i64 %87, i64 0
  %90 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !91
  %92 = lshr i64 %91, 32
  %93 = getelementptr inbounds %struct.real_value, ptr %4, i64 0, i32 1, i64 1
  %94 = load i64, ptr %93, align 8, !tbaa !91
  %95 = lshr i64 %94, 32
  %96 = and i64 %95, 65535
  %97 = or disjoint i64 %89, %96
  %98 = or i64 %97, %25
  %99 = and i64 %91, 4294967295
  %100 = and i64 %94, 4294967295
  br label %102

101:                                              ; preds = %24
  unreachable

102:                                              ; preds = %60, %81, %31, %33, %83, %24
  %103 = phi i64 [ %100, %83 ], [ 4294967295, %81 ], [ 0, %31 ], [ 4294967295, %33 ], [ 0, %24 ], [ %61, %60 ]
  %104 = phi i64 [ %92, %83 ], [ 4294967295, %81 ], [ 0, %31 ], [ 4294967295, %33 ], [ 0, %24 ], [ %62, %60 ]
  %105 = phi i64 [ %99, %83 ], [ 4294967295, %81 ], [ 0, %31 ], [ 4294967295, %33 ], [ 0, %24 ], [ %63, %60 ]
  %106 = phi i64 [ %98, %83 ], [ %82, %81 ], [ %32, %31 ], [ %34, %33 ], [ %25, %24 ], [ %80, %60 ]
  store i64 %105, ptr %1, align 8, !tbaa !91
  %107 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %104, ptr %107, align 8, !tbaa !91
  %108 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %103, ptr %108, align 8, !tbaa !91
  %109 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %106, ptr %109, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds i64, ptr %2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds i64, ptr %2, i64 3
  %10 = load i64, ptr %9, align 8, !tbaa !91
  %11 = and i64 %4, 4294967295
  %12 = and i64 %6, 4294967295
  %13 = and i64 %8, 4294967295
  %14 = lshr i64 %10, 31
  %15 = trunc i64 %14 to i32
  %16 = trunc i64 %10 to i32
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 32767
  %19 = and i64 %10, 65535
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  switch i32 %18, label %114 [
    i32 0, label %20
    i32 32767, label %52
  ]

20:                                               ; preds = %3
  %21 = or i64 %12, %11
  %22 = or i64 %21, %13
  %23 = or i64 %22, %19
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 8, !tbaa !291
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %1, align 8
  %31 = and i32 %30, 52
  %32 = shl i32 %15, 3
  %33 = and i32 %32, 8
  %34 = or disjoint i32 %33, %31
  %35 = or disjoint i32 %34, -1043327
  store i32 %35, ptr %1, align 8
  %36 = shl i64 %6, 32
  %37 = or disjoint i64 %36, %11
  %38 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %37, ptr %38, align 8, !tbaa !91
  %39 = shl nuw nsw i64 %19, 32
  %40 = or disjoint i64 %39, %13
  %41 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %40, ptr %41, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %1)
  br label %154

42:                                               ; preds = %25, %20
  %43 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %44 = load i8, ptr %43, align 1, !tbaa !172
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %154, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %1, align 8
  %48 = shl i32 %15, 3
  %49 = and i32 %48, 8
  %50 = and i32 %47, -9
  %51 = or disjoint i32 %50, %49
  store i32 %51, ptr %1, align 8
  br label %154

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %54 = load i8, ptr %53, align 2, !tbaa !170
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %58 = load i8, ptr %57, align 1, !tbaa !171
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %114, label %60

60:                                               ; preds = %56, %52
  %61 = or i64 %12, %11
  %62 = or i64 %61, %13
  %63 = or i64 %62, %19
  %64 = icmp eq i64 %63, 0
  %65 = load i32, ptr %1, align 8
  br i1 %64, label %108, label %66

66:                                               ; preds = %60
  %67 = shl i32 %15, 3
  %68 = and i32 %67, 8
  %69 = and i32 %65, -12
  %70 = or disjoint i32 %68, %69
  %71 = or disjoint i32 %70, 3
  store i32 %71, ptr %1, align 8
  %72 = lshr i64 %10, 15
  %73 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %74 = load i8, ptr %73, align 2, !tbaa !303
  %75 = zext i8 %74 to i64
  %76 = xor i64 %72, %75
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 4
  %79 = and i32 %78, 16
  %80 = and i32 %71, -17
  %81 = or disjoint i32 %79, %80
  store i32 %81, ptr %1, align 8
  %82 = shl i64 %6, 32
  %83 = or disjoint i64 %82, %11
  %84 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %83, ptr %84, align 8, !tbaa !91
  %85 = shl nuw nsw i64 %19, 32
  %86 = or disjoint i64 %85, %13
  %87 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %86, ptr %87, align 8, !tbaa !91
  br label %88

88:                                               ; preds = %66, %102
  %89 = phi i64 [ 0, %66 ], [ %90, %102 ]
  %90 = add nuw nsw i64 %89, 1
  %91 = icmp eq i64 %89, 2
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = sub nsw i64 1, %89
  %94 = and i64 %93, 4294967295
  %95 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !91
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i64 [ %96, %92 ], [ 0, %88 ]
  %99 = icmp eq i64 %89, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i64, ptr %84, align 8, !tbaa !91
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i64 [ %101, %100 ], [ 0, %97 ]
  %104 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %103, i64 15)
  %105 = sub nuw nsw i64 2, %89
  %106 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %105
  store i64 %104, ptr %106, align 8, !tbaa !91
  %107 = icmp eq i64 %90, 3
  br i1 %107, label %154, label %88, !llvm.loop !277

108:                                              ; preds = %60
  %109 = and i32 %65, -12
  %110 = shl i32 %15, 3
  %111 = and i32 %110, 8
  %112 = or disjoint i32 %111, %109
  %113 = or disjoint i32 %112, 2
  store i32 %113, ptr %1, align 8
  br label %154

114:                                              ; preds = %3, %56
  %115 = load i32, ptr %1, align 8
  %116 = and i32 %115, 52
  %117 = shl i32 %15, 3
  %118 = and i32 %117, 8
  %119 = or disjoint i32 %118, %116
  %120 = shl nuw nsw i32 %18, 6
  %121 = add nsw i32 %120, -1048448
  %122 = or disjoint i32 %119, %121
  %123 = or disjoint i32 %122, 1
  store i32 %123, ptr %1, align 8
  %124 = shl i64 %6, 32
  %125 = or disjoint i64 %124, %11
  %126 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  store i64 %125, ptr %126, align 8, !tbaa !91
  %127 = shl nuw nsw i64 %19, 32
  %128 = or disjoint i64 %127, %13
  %129 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 1
  store i64 %128, ptr %129, align 8, !tbaa !91
  br label %130

130:                                              ; preds = %114, %144
  %131 = phi i64 [ 0, %114 ], [ %132, %144 ]
  %132 = add nuw nsw i64 %131, 1
  %133 = icmp eq i64 %131, 2
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = sub nsw i64 1, %131
  %136 = and i64 %135, 4294967295
  %137 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !91
  br label %139

139:                                              ; preds = %134, %130
  %140 = phi i64 [ %138, %134 ], [ 0, %130 ]
  %141 = icmp eq i64 %131, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i64, ptr %126, align 8, !tbaa !91
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i64 [ %143, %142 ], [ 0, %139 ]
  %146 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %145, i64 15)
  %147 = sub nuw nsw i64 2, %131
  %148 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %147
  store i64 %146, ptr %148, align 8, !tbaa !91
  %149 = icmp eq i64 %132, 3
  br i1 %149, label %150, label %130, !llvm.loop !277

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  %152 = load i64, ptr %151, align 8, !tbaa !91
  %153 = or i64 %152, -9223372036854775808
  store i64 %153, ptr %151, align 8, !tbaa !91
  br label %154

154:                                              ; preds = %102, %150, %108, %29, %46, %42
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_f(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %25 [
    i32 0, label %26
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %26

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = ashr i32 %4, 6
  %15 = add nsw i32 %14, 128
  %16 = sext i32 %15 to i64
  %17 = lshr i64 %13, 24
  %18 = and i64 %17, 4294901760
  %19 = shl nsw i64 %16, 7
  %20 = lshr i64 %13, 56
  %21 = and i64 %20, 127
  %22 = or i64 %19, %18
  %23 = or disjoint i64 %22, %21
  %24 = or i64 %23, %7
  br label %26

25:                                               ; preds = %3
  unreachable

26:                                               ; preds = %3, %11, %9
  %27 = phi i64 [ %24, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %27, ptr %1, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_f(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 52
  %12 = lshr i32 %5, 12
  %13 = and i32 %12, 8
  %14 = or disjoint i32 %13, %11
  %15 = shl nuw nsw i32 %7, 6
  %16 = add nsw i32 %15, -8192
  %17 = or disjoint i32 %14, %16
  %18 = or disjoint i32 %17, 1
  store i32 %18, ptr %1, align 8
  %19 = shl i64 %4, 16
  %20 = and i64 %19, 8323072
  %21 = lshr i64 %4, 16
  %22 = and i64 %21, 65535
  %23 = or disjoint i64 %20, %22
  %24 = shl nuw nsw i64 %23, 40
  %25 = or disjoint i64 %24, -9223372036854775808
  %26 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %25, ptr %26, align 8, !tbaa !91
  br label %27

27:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_d(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %31 [
    i32 0, label %32
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = lshr i64 %13, 8
  %15 = and i64 %14, 4294967295
  %16 = lshr i64 %13, 24
  %17 = and i64 %16, 4294901760
  %18 = lshr i64 %13, 56
  %19 = and i64 %18, 127
  %20 = shl nuw nsw i64 %15, 16
  %21 = lshr i64 %15, 16
  %22 = and i64 %20, 4294901760
  %23 = or disjoint i64 %22, %21
  %24 = shl i32 %4, 1
  %25 = and i32 %24, -128
  %26 = add i32 %25, 16384
  %27 = sext i32 %26 to i64
  %28 = or disjoint i64 %19, %27
  %29 = or i64 %28, %17
  %30 = or i64 %29, %7
  br label %32

31:                                               ; preds = %3
  unreachable

32:                                               ; preds = %3, %11, %9
  %33 = phi i64 [ %23, %11 ], [ 4294967295, %9 ], [ 0, %3 ]
  %34 = phi i64 [ %30, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %34, ptr %1, align 8, !tbaa !91
  %35 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %33, ptr %35, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_d(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 52
  %14 = lshr i32 %7, 12
  %15 = and i32 %14, 8
  %16 = or disjoint i32 %15, %13
  %17 = shl nuw nsw i32 %9, 6
  %18 = add nsw i32 %17, -8192
  %19 = or disjoint i32 %16, %18
  %20 = or disjoint i32 %19, 1
  store i32 %20, ptr %1, align 8
  %21 = shl i64 %4, 16
  %22 = and i64 %21, 8323072
  %23 = lshr i64 %4, 16
  %24 = and i64 %23, 65535
  %25 = or disjoint i64 %22, %24
  %26 = shl i64 %6, 16
  %27 = and i64 %26, 4294901760
  %28 = lshr i64 %6, 16
  %29 = and i64 %28, 65535
  %30 = or disjoint i64 %27, %29
  %31 = shl nuw nsw i64 %25, 40
  %32 = shl nuw nsw i64 %30, 8
  %33 = or disjoint i64 %32, %31
  %34 = or disjoint i64 %33, -9223372036854775808
  %35 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %34, ptr %35, align 8, !tbaa !91
  br label %36

36:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_vax_g(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 32768
  %7 = zext nneg i32 %6 to i64
  %8 = and i32 %4, 3
  switch i32 %8, label %31 [
    i32 0, label %32
    i32 2, label %9
    i32 3, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3, %3
  %10 = or disjoint i64 %7, 4294934527
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = lshr i64 %13, 11
  %15 = and i64 %14, 4294967295
  %16 = lshr i64 %13, 27
  %17 = and i64 %16, 4294901760
  %18 = lshr i64 %13, 59
  %19 = and i64 %18, 15
  %20 = shl nuw nsw i64 %15, 16
  %21 = lshr i64 %15, 16
  %22 = and i64 %20, 4294901760
  %23 = or disjoint i64 %22, %21
  %24 = ashr i32 %4, 2
  %25 = and i32 %24, -16
  %26 = add nsw i32 %25, 16384
  %27 = sext i32 %26 to i64
  %28 = or disjoint i64 %19, %27
  %29 = or i64 %28, %17
  %30 = or i64 %29, %7
  br label %32

31:                                               ; preds = %3
  unreachable

32:                                               ; preds = %3, %11, %9
  %33 = phi i64 [ %23, %11 ], [ 4294967295, %9 ], [ 0, %3 ]
  %34 = phi i64 [ %30, %11 ], [ %10, %9 ], [ 0, %3 ]
  store i64 %34, ptr %1, align 8, !tbaa !91
  %35 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %33, ptr %35, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @decode_vax_g(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 2047
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 52
  %14 = lshr i32 %7, 12
  %15 = and i32 %14, 8
  %16 = or disjoint i32 %15, %13
  %17 = shl nuw nsw i32 %9, 6
  %18 = add nsw i32 %17, -65536
  %19 = or disjoint i32 %16, %18
  %20 = or disjoint i32 %19, 1
  store i32 %20, ptr %1, align 8
  %21 = shl i64 %4, 16
  %22 = and i64 %21, 983040
  %23 = lshr i64 %4, 16
  %24 = and i64 %23, 65535
  %25 = or disjoint i64 %22, %24
  %26 = shl i64 %6, 16
  %27 = and i64 %26, 4294901760
  %28 = lshr i64 %6, 16
  %29 = and i64 %28, 65535
  %30 = or disjoint i64 %27, %29
  %31 = shl nuw nsw i64 %25, 43
  %32 = shl nuw nsw i64 %30, 11
  %33 = or disjoint i64 %32, %31
  %34 = or disjoint i64 %33, -9223372036854775808
  %35 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %34, ptr %35, align 8, !tbaa !91
  br label %36

36:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_decimal_single(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @encode_decimal32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @decode_decimal_single(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @decode_decimal32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_decimal_double(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @encode_decimal64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @decode_decimal_double(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @decode_decimal64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @encode_decimal_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @encode_decimal128(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @decode_decimal_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !61 {
  tail call void @decode_decimal128(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_ieee_half(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = shl i32 %4, 12
  %8 = and i32 %7, 32768
  %9 = zext nneg i32 %8 to i64
  %10 = lshr i64 %6, 53
  %11 = and i64 %10, 1023
  %12 = and i32 %4, 3
  switch i32 %12, label %59 [
    i32 0, label %60
    i32 2, label %13
    i32 3, label %21
    i32 1, label %50
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %15 = load i8, ptr %14, align 1, !tbaa !171
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = or disjoint i64 %9, 31744
  br label %60

19:                                               ; preds = %13
  %20 = or disjoint i64 %9, 32767
  br label %60

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 2, !tbaa !170
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = and i32 %4, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 1, !tbaa !302
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i64 0, i64 511
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %32, %28 ], [ %11, %25 ]
  %35 = lshr i32 %4, 4
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %38 = load i8, ptr %37, align 2, !tbaa !303
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  %41 = and i64 %34, 511
  %42 = or i64 %34, 512
  %43 = select i1 %40, i64 %41, i64 %42
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 256, i64 %43
  %46 = or disjoint i64 %45, %9
  %47 = or i64 %46, 31744
  br label %60

48:                                               ; preds = %21
  %49 = or disjoint i64 %9, 1023
  br label %60

50:                                               ; preds = %3
  %51 = ashr i32 %4, 6
  %52 = add nsw i32 %51, 14
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 10
  %55 = icmp slt i64 %6, 0
  %56 = select i1 %55, i64 %54, i64 0
  %57 = or i64 %56, %9
  %58 = or disjoint i64 %57, %11
  br label %60

59:                                               ; preds = %3
  unreachable

60:                                               ; preds = %33, %48, %17, %19, %50, %3
  %61 = phi i64 [ %58, %50 ], [ %47, %33 ], [ %49, %48 ], [ %18, %17 ], [ %20, %19 ], [ %9, %3 ]
  store i64 %61, ptr %1, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @decode_ieee_half(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #17 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = lshr i64 %4, 15
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 10
  %9 = and i32 %8, 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %10 = shl i64 %4, 53
  %11 = and i64 %10, 9214364837600034816
  switch i32 %9, label %71 [
    i32 0, label %12
    i32 31, label %37
  ]

12:                                               ; preds = %3
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !291
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %1, align 8
  %20 = and i32 %19, 52
  %21 = shl i32 %6, 3
  %22 = and i32 %21, 8
  %23 = or disjoint i32 %22, %20
  %24 = or disjoint i32 %23, -895
  store i32 %24, ptr %1, align 8
  %25 = shl nuw i64 %11, 1
  %26 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %25, ptr %26, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %1)
  br label %83

27:                                               ; preds = %14, %12
  %28 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %29 = load i8, ptr %28, align 1, !tbaa !172
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %1, align 8
  %33 = shl i32 %6, 3
  %34 = and i32 %33, 8
  %35 = and i32 %32, -9
  %36 = or disjoint i32 %35, %34
  store i32 %36, ptr %1, align 8
  br label %83

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %39 = load i8, ptr %38, align 2, !tbaa !170
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %43 = load i8, ptr %42, align 1, !tbaa !171
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %41, %37
  %46 = icmp eq i64 %11, 0
  %47 = load i32, ptr %1, align 8
  br i1 %46, label %65, label %48

48:                                               ; preds = %45
  %49 = shl i32 %6, 3
  %50 = and i32 %49, 8
  %51 = and i32 %47, -12
  %52 = or disjoint i32 %50, %51
  %53 = or disjoint i32 %52, 3
  store i32 %53, ptr %1, align 8
  %54 = lshr i64 %10, 62
  %55 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %56 = load i8, ptr %55, align 2, !tbaa !303
  %57 = zext i8 %56 to i64
  %58 = xor i64 %54, %57
  %59 = trunc i64 %58 to i32
  %60 = shl nuw nsw i32 %59, 4
  %61 = and i32 %60, 16
  %62 = and i32 %53, -17
  %63 = or disjoint i32 %61, %62
  store i32 %63, ptr %1, align 8
  %64 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %11, ptr %64, align 8, !tbaa !91
  br label %83

65:                                               ; preds = %45
  %66 = and i32 %47, -12
  %67 = shl i32 %6, 3
  %68 = and i32 %67, 8
  %69 = or disjoint i32 %68, %66
  %70 = or disjoint i32 %69, 2
  store i32 %70, ptr %1, align 8
  br label %83

71:                                               ; preds = %3, %41
  %72 = load i32, ptr %1, align 8
  %73 = and i32 %72, 52
  %74 = shl i32 %6, 3
  %75 = and i32 %74, 8
  %76 = or disjoint i32 %75, %73
  %77 = shl nuw nsw i32 %9, 6
  %78 = add nsw i32 %77, -896
  %79 = or disjoint i32 %76, %78
  %80 = or disjoint i32 %79, 1
  store i32 %80, ptr %1, align 8
  %81 = or i64 %10, -9223372036854775808
  %82 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %81, ptr %82, align 8, !tbaa !91
  br label %83

83:                                               ; preds = %71, %65, %48, %18, %31, %27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @encode_internal(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @decode_internal(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #14 !prof !61 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @real_sqrt(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 11
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  br label %74

11:                                               ; preds = %3
  %12 = and i32 %7, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 35, ptr %0, align 8
  br label %74

15:                                               ; preds = %11
  %16 = or i32 %7, -4
  %17 = icmp ugt i32 %16, -3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  br label %74

19:                                               ; preds = %15
  %20 = load i1, ptr @real_sqrt.init, align 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call fastcc zeroext i8 @do_add(ptr noundef nonnull @real_sqrt.halfthree, ptr noundef nonnull @dconst1, ptr noundef nonnull @dconsthalf, i32 noundef 0), !range !81
  store i1 true, ptr @real_sqrt.init, align 1
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, ptr %2, align 8
  %25 = and i32 %24, 3
  switch i32 %25, label %30 [
    i32 0, label %31
    i32 2, label %26
    i32 3, label %26
    i32 1, label %27
  ]

26:                                               ; preds = %23, %23
  br label %31

27:                                               ; preds = %23
  %28 = ashr i32 %24, 6
  %29 = sdiv i32 %28, -2
  br label %31

30:                                               ; preds = %23
  unreachable

31:                                               ; preds = %23, %26, %27
  %32 = phi i32 [ %29, %27 ], [ -1073741823, %26 ], [ %25, %23 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !82
  %33 = load i32, ptr %6, align 8
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i32, ptr @dconst1, align 8
  %38 = ashr i32 %37, 6
  %39 = add nsw i32 %38, %32
  %40 = icmp sgt i32 %39, 33554431
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = and i32 %33, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %43 = or disjoint i32 %42, 2
  store i32 %43, ptr %6, align 8
  br label %52

44:                                               ; preds = %36
  %45 = icmp slt i32 %39, -33554431
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = and i32 %33, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i32 %47, ptr %6, align 8
  br label %52

48:                                               ; preds = %44
  %49 = shl i32 %39, 6
  %50 = and i32 %33, 61
  %51 = or disjoint i32 %49, %50
  store i32 %51, ptr %6, align 8
  br label %52

52:                                               ; preds = %31, %41, %46, %48
  br label %53

53:                                               ; preds = %52, %64
  %54 = phi i32 [ %65, %64 ], [ 0, %52 ]
  %55 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6)
  %56 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %57 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull @dconsthalf)
  %58 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull @real_sqrt.halfthree, ptr noundef nonnull %5, i32 noundef 1), !range !81
  %59 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4)
  %60 = icmp ugt i32 %54, 5
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = call zeroext i8 @real_identical(ptr noundef nonnull %6, ptr noundef nonnull %5), !range !81
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !82
  %65 = add nuw nsw i32 %54, 1
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %53, !llvm.loop !304

67:                                               ; preds = %61, %64
  %68 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6)
  %69 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %70 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %6, ptr noundef nonnull @dconst1, ptr noundef nonnull %4, i32 noundef 1), !range !81
  %71 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %72 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %6, ptr noundef nonnull @dconsthalf, ptr noundef nonnull %4)
  %73 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0), !range !81
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %74

74:                                               ; preds = %67, %18, %14, %10
  %75 = phi i8 [ 0, %10 ], [ 0, %14 ], [ 1, %67 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i8 %75
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @real_powi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #9 !prof !61 {
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !82
  br label %41

8:                                                ; preds = %4
  %9 = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !82
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i32 [ 0, %8 ], [ %32, %28 ]
  %12 = phi i8 [ 0, %8 ], [ %30, %28 ]
  %13 = phi i8 [ 0, %8 ], [ %29, %28 ]
  %14 = phi i64 [ -9223372036854775808, %8 ], [ %31, %28 ]
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5)
  %18 = or i8 %17, %13
  %19 = and i64 %14, %9
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = call fastcc zeroext i8 @do_multiply(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %2)
  %23 = or i8 %22, %18
  br label %28

24:                                               ; preds = %10
  %25 = and i64 %14, %9
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %16, %21
  %29 = phi i8 [ %23, %21 ], [ %18, %16 ], [ %13, %24 ]
  %30 = phi i8 [ 1, %21 ], [ 1, %16 ], [ %27, %24 ]
  %31 = lshr i64 %14, 1
  %32 = add nuw nsw i32 %11, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %10, !llvm.loop !305

34:                                               ; preds = %28
  %35 = icmp sgt i64 %3, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = call fastcc zeroext i8 @do_divide(ptr noundef nonnull %5, ptr noundef nonnull @dconst1, ptr noundef nonnull %5), !range !81
  %38 = or i8 %37, %29
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i8 [ %38, %36 ], [ %29, %34 ]
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  br label %41

41:                                               ; preds = %39, %7
  %42 = phi i8 [ 0, %7 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret i8 %42
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_trunc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %2)
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_floor(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call fastcc void @do_fix_trunc(ptr noundef nonnull %4, ptr noundef %2)
  %5 = call zeroext i8 @real_identical(ptr noundef nonnull %4, ptr noundef %2), !range !81
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @dconstm1, i32 noundef 0), !range !81
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !82
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_ceil(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call fastcc void @do_fix_trunc(ptr noundef nonnull %4, ptr noundef %2)
  %5 = call zeroext i8 @real_identical(ptr noundef nonnull %4, ptr noundef %2), !range !81
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call fastcc zeroext i8 @do_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @dconst1, i32 noundef 0), !range !81
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  br label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !82
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @real_round(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !61 {
  %4 = load i32, ptr %2, align 8
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 1
  %7 = tail call fastcc zeroext i8 @do_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @dconsthalf, i32 noundef %6), !range !81
  tail call fastcc void @do_fix_trunc(ptr noundef %0, ptr noundef %0)
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @real_copysign(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !61 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 8
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, -9
  %7 = or disjoint i32 %6, %4
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @real_isinteger(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !61 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call fastcc void @do_fix_trunc(ptr noundef nonnull %3, ptr noundef %0)
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @real_convert(ptr noundef nonnull %3, i32 noundef %1, ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %2, %5
  %7 = call zeroext i8 @real_identical(ptr noundef %0, ptr noundef nonnull %3), !range !81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @get_max_float(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !prof !159 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) @.str.14, i64 5, i1 false)
  %4 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !165
  %6 = getelementptr i8, ptr %1, i64 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %19, !prof !306

8:                                                ; preds = %3
  %9 = add nsw i32 %5, -4
  %10 = lshr i32 %9, 2
  %11 = add nuw nsw i32 %10, 1
  %12 = zext nneg i32 %11 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 102, i64 %12, i1 false), !tbaa !73
  %13 = and i32 %9, -4
  %14 = lshr i32 %9, 2
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr i8, ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 5
  %18 = add i32 %13, 4
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %8 ]
  %21 = phi ptr [ %6, %3 ], [ %17, %8 ]
  %22 = icmp slt i32 %20, %5
  br i1 %22, label %23, label %29, !prof !307

23:                                               ; preds = %19
  %24 = sub nsw i32 %5, %20
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i8], ptr @.str.15, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !73
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %27, ptr %21, align 1, !tbaa !73
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %31 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !167
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %32)
  %34 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !173
  %36 = load i32, ptr %4, align 4, !tbaa !165
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47, !prof !160

38:                                               ; preds = %29
  %39 = srem i32 %35, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x i8], ptr @.str.17, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !73
  %43 = sdiv i32 %35, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, ptr %1, i64 %44
  %46 = getelementptr i8, ptr %45, i64 4
  store i8 %42, ptr %46, align 1, !tbaa !73
  br label %47

47:                                               ; preds = %38, %29
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %49 = icmp ult i64 %48, %2
  br i1 %49, label %51, label %50, !prof !161

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5174, ptr noundef nonnull @.str.1) #27
  br label %51

51:                                               ; preds = %47, %50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @sticky_rshift_significand(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #19 !prof !61 !PGOFuncName !308 {
  %4 = icmp ugt i32 %2, 63
  br i1 %4, label %5, label %18, !prof !90

5:                                                ; preds = %3
  %6 = lshr i32 %2, 6
  %7 = zext nneg i32 %6 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %14, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %11 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %9
  %12 = load i64, ptr %11, align 8, !tbaa !91
  %13 = or i64 %12, %10
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !92

16:                                               ; preds = %8
  %17 = and i32 %2, 63
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ %2, %3 ]
  %20 = phi i64 [ %13, %16 ], [ 0, %3 ]
  %21 = phi i32 [ %6, %16 ], [ 0, %3 ]
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %29, !prof !90

23:                                               ; preds = %18
  %24 = icmp ult i32 %21, 3
  br i1 %24, label %25, label %64

25:                                               ; preds = %23
  %26 = zext nneg i32 %21 to i64
  %27 = xor i32 %21, 3
  %28 = zext nneg i32 %27 to i64
  br label %76

29:                                               ; preds = %18
  %30 = zext nneg i32 %21 to i64
  %31 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !91
  %33 = zext nneg i32 %19 to i64
  %34 = shl nsw i64 -1, %33
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  %37 = sub nuw nsw i32 64, %19
  %38 = zext nneg i32 %37 to i64
  %39 = zext nneg i32 %21 to i64
  br label %40

40:                                               ; preds = %29, %55
  %41 = phi i64 [ 0, %29 ], [ %60, %55 ]
  %42 = add nuw nsw i64 %41, %39
  %43 = icmp ugt i64 %42, 2
  br i1 %43, label %47, label %44, !prof !93

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !91
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi i64 [ %46, %44 ], [ 0, %40 ]
  %49 = lshr i64 %48, %33
  %50 = icmp ugt i64 %42, 1
  br i1 %50, label %55, label %51, !prof !94

51:                                               ; preds = %47
  %52 = add nuw nsw i64 %42, 1
  %53 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !91
  br label %55

55:                                               ; preds = %47, %51
  %56 = phi i64 [ %54, %51 ], [ 0, %47 ]
  %57 = shl i64 %56, %38
  %58 = or i64 %57, %49
  %59 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %41
  store i64 %58, ptr %59, align 8, !tbaa !91
  %60 = add nuw nsw i64 %41, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %85, label %40, !prof !94, !llvm.loop !95

62:                                               ; preds = %76
  %63 = trunc i64 %82 to i32
  br label %64

64:                                               ; preds = %62, %23
  %65 = phi i32 [ 0, %23 ], [ %63, %62 ]
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = shl nuw nsw i32 %65, 3
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr i8, ptr %0, i64 %69
  %71 = getelementptr i8, ptr %70, i64 8
  %72 = sub nsw i32 2, %65
  %73 = zext i32 %72 to i64
  %74 = shl nuw nsw i64 %73, 3
  %75 = add nuw nsw i64 %74, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, i8 0, i64 %75, i1 false), !tbaa !91
  br label %87

76:                                               ; preds = %25, %76
  %77 = phi i64 [ 0, %25 ], [ %82, %76 ]
  %78 = phi i64 [ %26, %25 ], [ %83, %76 ]
  %79 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !91
  %81 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1, i64 %77
  store i64 %80, ptr %81, align 8, !tbaa !91
  %82 = add nuw nsw i64 %77, 1
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %82, %28
  br i1 %84, label %62, label %76, !llvm.loop !309

85:                                               ; preds = %55
  %86 = or i64 %36, %20
  br label %87

87:                                               ; preds = %85, %67, %64
  %88 = phi i64 [ %20, %64 ], [ %20, %67 ], [ %86, %85 ]
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i8
  ret i8 %90
}

declare i32 @decimal_do_compare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @decimal_do_fix_trunc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decimal_round_for_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @encode_ieee_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !61 {
  %4 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1, i64 2
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = load i32, ptr %2, align 8
  %7 = shl i32 %6, 12
  %8 = and i32 %7, 32768
  %9 = zext nneg i32 %8 to i64
  %10 = and i32 %6, 3
  switch i32 %10, label %67 [
    i32 0, label %68
    i32 2, label %11
    i32 3, label %18
    i32 1, label %53
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %13 = load i8, ptr %12, align 1, !tbaa !171
  %14 = icmp eq i8 %13, 0
  %15 = or disjoint i64 %9, 32767
  %16 = select i1 %14, i64 4294967295, i64 2147483648
  %17 = select i1 %14, i64 4294967295, i64 0
  br label %68

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %20 = load i8, ptr %19, align 2, !tbaa !170
  %21 = icmp eq i8 %20, 0
  %22 = or disjoint i64 %9, 32767
  br i1 %21, label %68, label %23

23:                                               ; preds = %18
  %24 = and i32 %6, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 16
  %28 = load i8, ptr %27, align 1, !tbaa !302
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i64 0, i64 1073741823
  %31 = select i1 %29, i64 0, i64 4294967295
  br label %35

32:                                               ; preds = %23
  %33 = lshr i64 %5, 32
  %34 = and i64 %5, 4294967295
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi i64 [ %33, %32 ], [ %30, %26 ]
  %37 = phi i64 [ %34, %32 ], [ %31, %26 ]
  %38 = lshr i32 %6, 4
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %41 = load i8, ptr %40, align 2, !tbaa !303
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %39, %42
  %44 = and i64 %36, 3221225471
  %45 = or i64 %36, 1073741824
  %46 = select i1 %43, i64 %44, i64 %45
  %47 = and i64 %46, 2147483647
  %48 = icmp eq i64 %47, 0
  %49 = icmp eq i64 %37, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = or i64 %46, 2147483648
  %52 = select i1 %50, i64 2684354560, i64 %51
  br label %68

53:                                               ; preds = %3
  %54 = icmp sgt i64 %5, -1
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = ashr i32 %6, 6
  %57 = add nsw i32 %56, 16382
  %58 = icmp sgt i32 %56, -16383
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1) #27
  br label %60

60:                                               ; preds = %53, %59, %55
  %61 = phi i32 [ %57, %55 ], [ %57, %59 ], [ 0, %53 ]
  %62 = sext i32 %61 to i64
  %63 = or i64 %62, %9
  %64 = load i64, ptr %4, align 8, !tbaa !91
  %65 = lshr i64 %64, 32
  %66 = and i64 %64, 4294967295
  br label %68

67:                                               ; preds = %3
  unreachable

68:                                               ; preds = %18, %11, %35, %60, %3
  %69 = phi i64 [ %65, %60 ], [ %52, %35 ], [ 0, %3 ], [ %16, %11 ], [ 4294967295, %18 ]
  %70 = phi i64 [ %66, %60 ], [ %37, %35 ], [ 0, %3 ], [ %17, %11 ], [ 4294967295, %18 ]
  %71 = phi i64 [ %63, %60 ], [ %22, %35 ], [ %9, %3 ], [ %15, %11 ], [ %22, %18 ]
  store i64 %70, ptr %1, align 8, !tbaa !91
  %72 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %69, ptr %72, align 8, !tbaa !91
  %73 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %71, ptr %73, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decode_ieee_extended(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #17 !prof !61 {
  %4 = load i64, ptr %2, align 8, !tbaa !91
  %5 = getelementptr inbounds i64, ptr %2, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds i64, ptr %2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !91
  %9 = and i64 %4, 4294967295
  %10 = lshr i64 %8, 15
  %11 = trunc i64 %10 to i32
  %12 = trunc i64 %8 to i32
  %13 = and i32 %12, 32767
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  switch i32 %13, label %87 [
    i32 0, label %14
    i32 32767, label %48
  ]

14:                                               ; preds = %3
  %15 = and i64 %6, 4294967295
  %16 = icmp ne i64 %15, 0
  %17 = icmp ne i64 %9, 0
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 13
  %21 = load i8, ptr %20, align 8, !tbaa !291
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, -12
  %26 = shl i32 %11, 3
  %27 = and i32 %26, 8
  %28 = or disjoint i32 %27, %25
  %29 = or disjoint i32 %28, 1
  store i32 %29, ptr %1, align 8
  %30 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !166
  %32 = shl i32 %31, 6
  %33 = and i32 %29, 61
  %34 = or disjoint i32 %33, %32
  store i32 %34, ptr %1, align 8
  %35 = shl i64 %6, 32
  %36 = or disjoint i64 %35, %9
  %37 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %36, ptr %37, align 8, !tbaa !91
  tail call fastcc void @normalize(ptr noundef nonnull %1)
  br label %100

38:                                               ; preds = %14, %19
  %39 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 14
  %40 = load i8, ptr %39, align 1, !tbaa !172
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %100, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %1, align 8
  %44 = shl i32 %11, 3
  %45 = and i32 %44, 8
  %46 = and i32 %43, -9
  %47 = or disjoint i32 %46, %45
  store i32 %47, ptr %1, align 8
  br label %100

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 11
  %50 = load i8, ptr %49, align 2, !tbaa !170
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 12
  %54 = load i8, ptr %53, align 1, !tbaa !171
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %52, %48
  %57 = and i64 %6, 2147483647
  %58 = icmp ne i64 %57, 0
  %59 = icmp ne i64 %9, 0
  %60 = select i1 %58, i1 true, i1 %59
  %61 = load i32, ptr %1, align 8
  br i1 %60, label %62, label %81

62:                                               ; preds = %56
  %63 = shl i32 %11, 3
  %64 = and i32 %63, 8
  %65 = and i32 %61, -12
  %66 = or disjoint i32 %64, %65
  %67 = or disjoint i32 %66, 3
  store i32 %67, ptr %1, align 8
  %68 = lshr i64 %6, 30
  %69 = getelementptr inbounds %struct.real_format, ptr %0, i64 0, i32 15
  %70 = load i8, ptr %69, align 2, !tbaa !303
  %71 = zext i8 %70 to i64
  %72 = xor i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %73, 4
  %75 = and i32 %74, 16
  %76 = and i32 %67, -17
  %77 = or disjoint i32 %75, %76
  store i32 %77, ptr %1, align 8
  %78 = shl nuw nsw i64 %57, 32
  %79 = or disjoint i64 %78, %9
  %80 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %79, ptr %80, align 8, !tbaa !91
  br label %100

81:                                               ; preds = %56
  %82 = and i32 %61, -12
  %83 = shl i32 %11, 3
  %84 = and i32 %83, 8
  %85 = or disjoint i32 %84, %82
  %86 = or disjoint i32 %85, 2
  store i32 %86, ptr %1, align 8
  br label %100

87:                                               ; preds = %3, %52
  %88 = load i32, ptr %1, align 8
  %89 = and i32 %88, 52
  %90 = shl i32 %11, 3
  %91 = and i32 %90, 8
  %92 = or disjoint i32 %91, %89
  %93 = shl nuw nsw i32 %13, 6
  %94 = add nsw i32 %93, -1048448
  %95 = or disjoint i32 %92, %94
  %96 = or disjoint i32 %95, 1
  store i32 %96, ptr %1, align 8
  %97 = shl i64 %6, 32
  %98 = or disjoint i64 %97, %9
  %99 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1, i64 2
  store i64 %98, ptr %99, align 8, !tbaa !91
  br label %100

100:                                              ; preds = %87, %81, %62, %23, %42, %38
  ret void
}

declare void @encode_decimal32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_decimal32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @encode_decimal64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_decimal64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @encode_decimal128(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_decimal128(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @do_add, ptr @normalize, i64 2213}
!36 = !{ptr @do_multiply, ptr @normalize, i64 5466}
!37 = !{ptr @do_multiply, ptr @do_add, i64 5466}
!38 = !{ptr @do_divide, ptr @normalize, i64 54}
!39 = !{ptr @real_convert, ptr @round_for_format, i64 3}
!40 = !{ptr @real_convert, ptr @normalize, i64 2}
!41 = !{ptr @real_to_decimal_for_mode, ptr @real_from_integer, i64 2}
!42 = !{ptr @real_to_decimal_for_mode, ptr @do_compare, i64 94}
!43 = !{ptr @real_to_decimal_for_mode, ptr @floor_log2, i64 15}
!44 = !{ptr @real_to_decimal_for_mode, ptr @ten_to_ptwo, i64 114}
!45 = !{ptr @real_to_decimal_for_mode, ptr @do_divide, i64 54}
!46 = !{ptr @real_to_decimal_for_mode, ptr @do_fix_trunc, i64 18}
!47 = !{ptr @real_to_decimal_for_mode, ptr @do_multiply, i64 767}
!48 = !{ptr @real_to_decimal_for_mode, ptr @rtd_divmod, i64 273}
!49 = !{ptr @real_to_decimal_for_mode, ptr @sprintf, i64 12}
!50 = !{ptr @ten_to_ptwo, ptr @real_from_integer, i64 4}
!51 = !{ptr @ten_to_ptwo, ptr @ten_to_ptwo, i64 9}
!52 = !{ptr @ten_to_ptwo, ptr @do_multiply, i64 9}
!53 = !{ptr @rtd_divmod, ptr @normalize, i64 234}
!54 = !{ptr @real_from_string, ptr @strncmp, i64 36}
!55 = !{ptr @real_from_string, ptr @normalize, i64 12}
!56 = !{ptr @real_from_integer, ptr @normalize, i64 8}
!57 = !{ptr @real_from_integer, ptr @real_convert, i64 3}
!58 = !{ptr @get_max_float, ptr @sprintf, i64 3}
!59 = !{ptr @get_max_float, ptr @strlen, i64 3}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{i8 0, i8 2}
!82 = !{i64 0, i64 4, !77, i64 0, i64 4, !77, i64 0, i64 4, !77, i64 0, i64 4, !77, i64 0, i64 4, !77, i64 0, i64 4, !77, i64 8, i64 24, !73}
!83 = !{!"function_entry_count", i64 5466}
!84 = !{!"real.c;do_add"}
!85 = !{!"branch_weights", i32 0, i32 722, i32 771, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1760, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2213}
!86 = !{!"branch_weights", i32 722, i32 0}
!87 = !{!"branch_weights", i32 2067, i32 146}
!88 = !{!"branch_weights", i32 2163, i32 50}
!89 = !{!"branch_weights", i32 0, i32 2163}
!90 = !{!"branch_weights", i32 0, i32 2266}
!91 = !{!69, !69, i64 0}
!92 = distinct !{!92, !79, !80}
!93 = !{!"branch_weights", i32 0, i32 6798}
!94 = !{!"branch_weights", i32 2266, i32 4532}
!95 = distinct !{!95, !79, !80}
!96 = !{!"branch_weights", i32 2213, i32 0}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = !{!"branch_weights", i32 6392, i32 247}
!100 = !{!"branch_weights", i32 2213, i32 4426}
!101 = distinct !{!101, !79, !80}
!102 = !{!"branch_weights", i32 103, i32 2110}
!103 = !{!"branch_weights", i32 0, i32 103}
!104 = !{!"branch_weights", i32 0, i32 2213}
!105 = !{!"function_entry_count", i64 776}
!106 = !{!"real.c;do_multiply"}
!107 = !{!"branch_weights", i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 771}
!108 = !{!"branch_weights", i32 309, i32 462}
!109 = !{!"branch_weights", i32 2313, i32 2313}
!110 = !{!"branch_weights", i32 1893, i32 2733}
!111 = !{!"branch_weights", i32 0, i32 5466}
!112 = !{!"branch_weights", i32 8199, i32 8199}
!113 = !{!"branch_weights", i32 10933, i32 5465}
!114 = distinct !{!114, !79, !80}
!115 = !{!"branch_weights", i32 0, i32 5466, i32 0}
!116 = !{!"branch_weights", i32 2733, i32 2733}
!117 = distinct !{!117, !79, !80}
!118 = !{!"branch_weights", i32 0, i32 2733, i32 1893}
!119 = !{!"branch_weights", i32 771, i32 3855}
!120 = distinct !{!120, !79, !80}
!121 = !{!"branch_weights", i32 462, i32 309}
!122 = !{!"function_entry_count", i64 54}
!123 = !{!"real.c;do_divide"}
!124 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54}
!125 = !{!"branch_weights", i32 22, i32 32}
!126 = !{!"branch_weights", i32 0, i32 54}
!127 = !{!"branch_weights", i32 10314, i32 10314}
!128 = distinct !{!128, !79, !80}
!129 = !{!"branch_weights", i32 8289, i32 2079}
!130 = !{!"branch_weights", i32 7, i32 8296}
!131 = distinct !{!131, !79, !80}
!132 = !{!"branch_weights", i32 5824, i32 2479}
!133 = !{!"branch_weights", i32 2458, i32 5845}
!134 = !{!"branch_weights", i32 21, i32 8282}
!135 = !{!"branch_weights", i32 2465, i32 5824}
!136 = !{!"branch_weights", i32 11513, i32 2119}
!137 = !{!"branch_weights", i32 4544, i32 9088}
!138 = !{!"branch_weights", i32 54, i32 10314}
!139 = distinct !{!139, !79, !80}
!140 = !{!"branch_weights", i32 54, i32 108}
!141 = distinct !{!141, !79, !80}
!142 = !{!"branch_weights", i32 32, i32 22}
!143 = !{!"function_entry_count", i64 94}
!144 = !{!"real.c;do_compare"}
!145 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 94}
!146 = !{!"branch_weights", i32 94, i32 0}
!147 = !{!"branch_weights", i32 43, i32 51}
!148 = !{!"branch_weights", i32 47, i32 4}
!149 = !{!"branch_weights", i32 0, i32 4}
!150 = !{!"branch_weights", i32 4, i32 0}
!151 = !{!"function_entry_count", i64 18}
!152 = !{!"real.c;do_fix_trunc"}
!153 = !{!"branch_weights", i32 18, i32 0}
!154 = !{!"branch_weights", i32 0, i32 18}
!155 = !{!"branch_weights", i32 15, i32 3}
!156 = distinct !{!156, !79, !80}
!157 = distinct !{!157, !79, !80}
!158 = distinct !{!158, !79, !80}
!159 = !{!"function_entry_count", i64 3}
!160 = !{!"branch_weights", i32 0, i32 3}
!161 = !{!"branch_weights", i32 3, i32 0}
!162 = !{!163, !68, i64 16}
!163 = !{!"real_format", !63, i64 0, !63, i64 8, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !68, i64 40, !64, i64 44, !64, i64 45, !64, i64 46, !64, i64 47, !64, i64 48, !64, i64 49, !64, i64 50, !64, i64 51}
!164 = !{!"branch_weights", i32 2, i32 1}
!165 = !{!163, !68, i64 20}
!166 = !{!163, !68, i64 28}
!167 = !{!163, !68, i64 32}
!168 = !{!163, !64, i64 44}
!169 = !{!163, !64, i64 45}
!170 = !{!163, !64, i64 46}
!171 = !{!163, !64, i64 47}
!172 = !{!163, !64, i64 49}
!173 = !{!163, !68, i64 24}
!174 = distinct !{!174, !79, !80}
!175 = distinct !{!175, !79, !80}
!176 = !{!"function_entry_count", i64 12}
!177 = !{!"branch_weights", i32 0, i32 12}
!178 = !{!"branch_weights", i32 0, i32 0, i32 12, i32 0, i32 0}
!179 = !{!"branch_weights", i32 12, i32 0}
!180 = !{!"branch_weights", i32 1, i32 191}
!181 = !{!"branch_weights", i32 191, i32 321}
!182 = distinct !{!182, !79, !80}
!183 = !{!"branch_weights", i32 1, i32 11}
!184 = !{!"branch_weights", i32 3, i32 9}
!185 = !{!"branch_weights", i32 2, i32 49}
!186 = !{!"branch_weights", i32 16, i32 35}
!187 = !{!"branch_weights", i32 0, i32 51}
!188 = !{!"branch_weights", i32 35, i32 16}
!189 = !{!"branch_weights", i32 2, i32 16}
!190 = distinct !{!190, !79, !80}
!191 = !{!"branch_weights", i32 13, i32 18}
!192 = !{!"branch_weights", i32 28, i32 3}
!193 = distinct !{!193, !79, !80}
!194 = !{!"branch_weights", i32 9, i32 3}
!195 = !{!"branch_weights", i32 127, i32 1}
!196 = !{!"branch_weights", i32 5, i32 448}
!197 = !{!"branch_weights", i32 14369, i32 127}
!198 = distinct !{!198, !80}
!199 = !{!"branch_weights", i32 51, i32 0}
!200 = !{!"branch_weights", i32 14, i32 37}
!201 = !{!"branch_weights", i32 0, i32 14}
!202 = !{!"branch_weights", i32 20, i32 31}
!203 = !{!"branch_weights", i32 42, i32 9}
!204 = distinct !{!204, !79, !80}
!205 = !{!"branch_weights", i32 0, i32 1}
!206 = !{!"branch_weights", i32 0, i32 9}
!207 = distinct !{!207, !79, !80}
!208 = !{!"branch_weights", i32 191, i32 3649}
!209 = distinct !{!209, !79, !80}
!210 = !{!"branch_weights", i32 2, i32 10}
!211 = !{!"branch_weights", i32 0, i32 2}
!212 = !{!"branch_weights", i32 7, i32 5}
!213 = !{!"branch_weights", i32 1, i32 0}
!214 = !{!"branch_weights", i32 0, i32 7}
!215 = !{!"branch_weights", i32 7, i32 0}
!216 = distinct !{!216, !79, !80}
!217 = distinct !{!217, !79, !80}
!218 = !{!"function_entry_count", i64 123}
!219 = !{!"real.c;ten_to_ptwo"}
!220 = !{!"branch_weights", i32 123, i32 0}
!221 = !{!"branch_weights", i32 13, i32 110}
!222 = !{!"branch_weights", i32 4, i32 9}
!223 = !{!"branch_weights", i32 127, i32 193}
!224 = distinct !{!224, !79, !80}
!225 = !{!"function_entry_count", i64 273}
!226 = !{!"real.c;rtd_divmod"}
!227 = !{!"branch_weights", i32 39, i32 234}
!228 = !{!"branch_weights", i32 461, i32 461}
!229 = !{!"branch_weights", i32 564, i32 131}
!230 = !{!"branch_weights", i32 1, i32 565}
!231 = !{!"branch_weights", i32 339, i32 227}
!232 = !{!"branch_weights", i32 224, i32 342}
!233 = !{!"branch_weights", i32 3, i32 563}
!234 = !{!"branch_weights", i32 225, i32 339}
!235 = !{!"branch_weights", i32 855, i32 213}
!236 = !{!"branch_weights", i32 356, i32 712}
!237 = !{!"branch_weights", i32 461, i32 234}
!238 = distinct !{!238, !79, !80}
!239 = distinct !{!239, !79, !80}
!240 = distinct !{!240, !79, !80}
!241 = distinct !{!241, !79, !80}
!242 = !{!"branch_weights", i32 12, i32 0, i32 0}
!243 = !{!"branch_weights", i32 0, i32 12, i32 0}
!244 = !{!"branch_weights", i32 3, i32 12}
!245 = distinct !{!245, !79, !80}
!246 = !{!"branch_weights", i32 9, i32 0}
!247 = distinct !{!247, !80}
!248 = distinct !{!248, !79, !80}
!249 = !{!"branch_weights", i32 36, i32 0}
!250 = !{!"branch_weights", i32 191, i32 2113}
!251 = distinct !{!251, !80}
!252 = !{!70, !70, i64 0}
!253 = !{!"branch_weights", i32 191, i32 481}
!254 = distinct !{!254, !79, !80}
!255 = !{!"branch_weights", i32 0, i32 42}
!256 = !{!"branch_weights", i32 0, i32 12, i32 0, i32 0, i32 0}
!257 = distinct !{!257, !79, !80}
!258 = distinct !{!258, !79, !80}
!259 = distinct !{!259, !79, !80}
!260 = distinct !{!260, !79, !80}
!261 = distinct !{!261, !79, !80}
!262 = !{!"function_entry_count", i64 7989}
!263 = !{!"real.c;normalize"}
!264 = !{!"branch_weights", i32 7989, i32 0}
!265 = !{!"branch_weights", i32 7457, i32 5506}
!266 = !{!"branch_weights", i32 2483, i32 10480}
!267 = distinct !{!267, !79, !80}
!268 = !{!"branch_weights", i32 2483, i32 5506}
!269 = !{!"branch_weights", i32 5082, i32 5506}
!270 = distinct !{!270, !80}
!271 = !{!"branch_weights", i32 2965, i32 2541}
!272 = !{!"branch_weights", i32 0, i32 2541}
!273 = distinct !{!273, !79, !80}
!274 = !{!"branch_weights", i32 8, i32 7615}
!275 = !{!"branch_weights", i32 2549, i32 5074}
!276 = !{!"branch_weights", i32 2541, i32 5082}
!277 = distinct !{!277, !79, !80}
!278 = distinct !{!278, !79, !80}
!279 = !{!"function_entry_count", i64 9}
!280 = !{!"branch_weights", i32 1, i32 8}
!281 = !{!"branch_weights", i32 0, i32 8}
!282 = !{!"branch_weights", i32 8, i32 0}
!283 = distinct !{!283, !79, !80}
!284 = !{!"branch_weights", i32 6, i32 3}
!285 = distinct !{!285, !79, !80}
!286 = distinct !{!286, !79, !80}
!287 = !{!"real.c;lshift_significand"}
!288 = distinct !{!288, !79, !80}
!289 = !{!"real.c;round_for_format"}
!290 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0, i32 2}
!291 = !{!163, !64, i64 48}
!292 = !{!"branch_weights", i32 2, i32 0}
!293 = !{!"branch_weights", i32 127, i32 129}
!294 = distinct !{!294, !79, !80}
!295 = !{!"branch_weights", i32 1, i32 127}
!296 = !{!163, !63, i64 0}
!297 = !{!163, !63, i64 8}
!298 = !{!"function_entry_count", i64 21}
!299 = !{!"branch_weights", i32 0, i32 7, i32 0, i32 14, i32 0}
!300 = !{!"branch_weights", i32 14, i32 28}
!301 = distinct !{!301, !79, !80}
!302 = !{!163, !64, i64 51}
!303 = !{!163, !64, i64 50}
!304 = distinct !{!304, !79, !80}
!305 = distinct !{!305, !79, !80}
!306 = !{!"branch_weights", i32 191, i32 1}
!307 = !{!"branch_weights", i32 1, i32 2}
!308 = !{!"real.c;sticky_rshift_significand"}
!309 = distinct !{!309, !79, !80}
