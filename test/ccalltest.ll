; ModuleID = 'ccalltest.c'
target datalayout = "e-m:w-p:32:32-i64:64-f80:32-n8:16:32-S32"
target triple = "i686-w64-windows-gnu"

%struct.struct1 = type { float, double }
%struct.complex_t = type { i32, i32 }
%struct.anon = type { i8*, i8* }
%struct.jl_asciistring_t = type { %struct.anon* }
%struct.struct2a = type { %struct.anon.0, %struct.anon.1 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.struct2b = type { i32, i32 }
%struct.struct3a = type { %struct.anon.2, %struct.anon.3 }
%struct.anon.2 = type { i64 }
%struct.anon.3 = type { i64 }
%struct.struct3b = type { i64, i64 }
%struct.struct4 = type { i32, i32, i32 }
%struct.struct5 = type { i32, i32, i32, i32 }
%struct.struct6 = type { i64, i64, i64 }
%struct.struct7 = type { i64, i8 }
%struct.struct8 = type { i32, i8 }
%struct.struct9 = type { i32, i16 }
%struct.struct10 = type { i8, i8, i8, i8 }
%struct.struct14 = type { float, float }
%struct.struct15 = type { double, double }
%struct.struct_big = type { i32, i32, i8 }

@verbose = global i32 1, align 4
@xs = global [300 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@.str = private unnamed_addr constant [11 x i8] c"%g + %g i\0A\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"%lld + %lld i\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"%d + %d i\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"(%d,%d,%d)\0A\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"(%d,%d,%d,%d)\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"(%lld,%lld,%lld)\0A\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"(%lld,%d)\0A\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"(%d,%d)\0A\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"0x%016llx%016llx\0A\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"%lld %lld %c\0A\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"all of the following should be 1 except xs[259] = 0\0A\00", align 1
@a = common global i32 0, align 4
@b = common global i32 0, align 4
@fptr = common global i32 (i8)* null, align 4
@.str12 = private unnamed_addr constant [112 x i8] c"compiled with: '%s'\0Axs[3] = %d\0Axs[259] = %d\0AtestUcharX(3) = %d\0AtestUcharX(%d) = %d\0Afptr(3) = %d\0Afptr(259) = %d\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"misc tests:\0A\00", align 1
@main.a = private unnamed_addr constant %struct.struct1 { float 0x453D263CE0000000, double 0x4033499EA57214F0 }, align 8

; Function Attrs: noinline nounwind
define i32 @testUcharX(i8 zeroext %x) #0 {
  %1 = alloca i8, align 1
  store i8 %x, i8* %1, align 1
  %2 = load i8* %1, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds [300 x i32]* @xs, i32 0, i32 %3
  %5 = load i32* %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind
define i64 @ctest(i32 %a.0, i32 %a.1) #1 {
  %1 = alloca %struct.complex_t, align 4
  %a = alloca %struct.complex_t, align 4
  %2 = getelementptr inbounds %struct.complex_t* %a, i32 0, i32 0
  store i32 %a.0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.complex_t* %a, i32 0, i32 1
  store i32 %a.1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.complex_t* %a, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = getelementptr inbounds %struct.complex_t* %a, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = sub nsw i32 %8, 2
  store i32 %9, i32* %7, align 4
  %10 = bitcast %struct.complex_t* %1 to i8*
  %11 = bitcast %struct.complex_t* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %12 = bitcast %struct.complex_t* %1 to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define void @cgtest({ double, double }* noalias sret %agg.result, { double, double }* byval align 4) #1 {
  %a = alloca { double, double }, align 8
  %2 = bitcast { double, double }* %a to i8*
  %3 = bitcast { double, double }* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 16, i32 4, i1 false)
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds { double, double }* %a, i32 0, i32 0
  %8 = load double* %7, align 8
  %9 = getelementptr inbounds { double, double }* %a, i32 0, i32 1
  %10 = load double* %9, align 8
  %11 = getelementptr inbounds { double, double }* %a, i32 0, i32 0
  %12 = load double* %11, align 8
  %13 = getelementptr inbounds { double, double }* %a, i32 0, i32 1
  %14 = load double* %13, align 8
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %8, double %14)
  br label %16

; <label>:16                                      ; preds = %6, %1
  %17 = getelementptr inbounds { double, double }* %a, i32 0, i32 0
  %18 = load double* %17, align 8
  %19 = getelementptr inbounds { double, double }* %a, i32 0, i32 1
  %20 = load double* %19, align 8
  %21 = fadd double %18, 1.000000e+00
  %22 = fadd double %20, -2.000000e+00
  %23 = getelementptr inbounds { double, double }* %a, i32 0, i32 0
  %24 = getelementptr inbounds { double, double }* %a, i32 0, i32 1
  store double %21, double* %23, align 8
  store double %22, double* %24, align 8
  %25 = getelementptr inbounds { double, double }* %a, i32 0, i32 0
  %26 = load double* %25, align 8
  %27 = getelementptr inbounds { double, double }* %a, i32 0, i32 1
  %28 = load double* %27, align 8
  %29 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 0
  %30 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 1
  store double %26, double* %29, align 8
  store double %28, double* %30, align 8
  %31 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 0
  %32 = load double* %31, align 8
  %33 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 1
  %34 = load double* %33, align 8
  %35 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 0
  %36 = getelementptr inbounds { double, double }* %agg.result, i32 0, i32 1
  store double %32, double* %35, align 8
  store double %34, double* %36, align 8
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
define { double, double }* @cgptest({ double, double }* %a) #1 {
  %1 = alloca { double, double }*, align 4
  store { double, double }* %a, { double, double }** %1, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %0
  %5 = load { double, double }** %1, align 4
  %6 = getelementptr inbounds { double, double }* %5, i32 0, i32 0
  %7 = load double* %6, align 8
  %8 = getelementptr inbounds { double, double }* %5, i32 0, i32 1
  %9 = load double* %8, align 8
  %10 = load { double, double }** %1, align 4
  %11 = getelementptr inbounds { double, double }* %10, i32 0, i32 0
  %12 = load double* %11, align 8
  %13 = getelementptr inbounds { double, double }* %10, i32 0, i32 1
  %14 = load double* %13, align 8
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %7, double %14)
  br label %16

; <label>:16                                      ; preds = %4, %0
  %17 = load { double, double }** %1, align 4
  %18 = getelementptr inbounds { double, double }* %17, i32 0, i32 0
  %19 = load double* %18, align 8
  %20 = getelementptr inbounds { double, double }* %17, i32 0, i32 1
  %21 = load double* %20, align 8
  %22 = fadd double %19, 1.000000e+00
  %23 = fadd double %21, -2.000000e+00
  %24 = getelementptr inbounds { double, double }* %17, i32 0, i32 0
  %25 = getelementptr inbounds { double, double }* %17, i32 0, i32 1
  store double %22, double* %24, align 8
  store double %23, double* %25, align 8
  %26 = load { double, double }** %1, align 4
  ret { double, double }* %26
}

; Function Attrs: nounwind
define i64 @cftest({ float, float }* byval align 4 %a) #1 {
  %1 = alloca { float, float }, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %8 = load float* %7, align 4
  %9 = fpext float %6 to double
  %10 = fpext float %8 to double
  %11 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fpext float %12 to double
  %16 = fpext float %14 to double
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %9, double %16)
  br label %18

; <label>:18                                      ; preds = %4, %0
  %19 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %20 = load float* %19, align 4
  %21 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %22 = load float* %21, align 4
  %23 = fadd float %20, 1.000000e+00
  %24 = fadd float %22, -2.000000e+00
  %25 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %26 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  store float %23, float* %25, align 4
  store float %24, float* %26, align 4
  %27 = getelementptr inbounds { float, float }* %a, i32 0, i32 0
  %28 = load float* %27, align 4
  %29 = getelementptr inbounds { float, float }* %a, i32 0, i32 1
  %30 = load float* %29, align 4
  %31 = getelementptr inbounds { float, float }* %1, i32 0, i32 0
  %32 = getelementptr inbounds { float, float }* %1, i32 0, i32 1
  store float %28, float* %31, align 4
  store float %30, float* %32, align 4
  %33 = bitcast { float, float }* %1 to i64*
  %34 = load i64* %33, align 1
  ret i64 %34
}

; Function Attrs: nounwind
define { float, float }* @cfptest({ float, float }* %a) #1 {
  %1 = alloca { float, float }*, align 4
  store { float, float }* %a, { float, float }** %1, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %20

; <label>:4                                       ; preds = %0
  %5 = load { float, float }** %1, align 4
  %6 = getelementptr inbounds { float, float }* %5, i32 0, i32 0
  %7 = load float* %6, align 4
  %8 = getelementptr inbounds { float, float }* %5, i32 0, i32 1
  %9 = load float* %8, align 4
  %10 = fpext float %7 to double
  %11 = fpext float %9 to double
  %12 = load { float, float }** %1, align 4
  %13 = getelementptr inbounds { float, float }* %12, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = getelementptr inbounds { float, float }* %12, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = fpext float %14 to double
  %18 = fpext float %16 to double
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %10, double %18)
  br label %20

; <label>:20                                      ; preds = %4, %0
  %21 = load { float, float }** %1, align 4
  %22 = getelementptr inbounds { float, float }* %21, i32 0, i32 0
  %23 = load float* %22, align 4
  %24 = getelementptr inbounds { float, float }* %21, i32 0, i32 1
  %25 = load float* %24, align 4
  %26 = fadd float %23, 1.000000e+00
  %27 = fadd float %25, -2.000000e+00
  %28 = getelementptr inbounds { float, float }* %21, i32 0, i32 0
  %29 = getelementptr inbounds { float, float }* %21, i32 0, i32 1
  store float %26, float* %28, align 4
  store float %27, float* %29, align 4
  %30 = load { float, float }** %1, align 4
  ret { float, float }* %30
}

; Function Attrs: nounwind
define %struct.complex_t* @cptest(%struct.complex_t* %a) #1 {
  %1 = alloca %struct.complex_t*, align 4
  store %struct.complex_t* %a, %struct.complex_t** %1, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %0
  %5 = load %struct.complex_t** %1, align 4
  %6 = getelementptr inbounds %struct.complex_t* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.complex_t** %1, align 4
  %10 = getelementptr inbounds %struct.complex_t* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i64 %8, i64 %12)
  br label %14

; <label>:14                                      ; preds = %4, %0
  %15 = load %struct.complex_t** %1, align 4
  %16 = getelementptr inbounds %struct.complex_t* %15, i32 0, i32 0
  %17 = load i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.complex_t** %1, align 4
  %20 = getelementptr inbounds %struct.complex_t* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %20, align 4
  %23 = load %struct.complex_t** %1, align 4
  ret %struct.complex_t* %23
}

; Function Attrs: nounwind
define i8* @stest(i8* %x) #1 {
  %1 = alloca i8*, align 4
  store i8* %x, i8** %1, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i8** %1, align 4
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* %5)
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = load i8** %1, align 4
  ret i8* %8
}

; Function Attrs: nounwind
define i8* @sptest(%struct.anon* %str.0) #1 {
  %str = alloca %struct.jl_asciistring_t, align 4
  %1 = getelementptr inbounds %struct.jl_asciistring_t* %str, i32 0, i32 0
  store %struct.anon* %str.0, %struct.anon** %1, align 4
  %2 = getelementptr inbounds %struct.jl_asciistring_t* %str, i32 0, i32 0
  %3 = load %struct.anon** %2, align 4
  %4 = getelementptr inbounds %struct.anon* %3, i32 0, i32 1
  %5 = load i8** %4, align 4
  %6 = call i8* @stest(i8* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define void @test_1(%struct.struct1* noalias sret %agg.result, %struct.struct1* byval align 4) #1 {
  %a = alloca %struct.struct1, align 8
  %2 = bitcast %struct.struct1* %a to i8*
  %3 = bitcast %struct.struct1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 16, i32 4, i1 false)
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 1
  %11 = load double* %10, align 8
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %9, double %11)
  br label %13

; <label>:13                                      ; preds = %6, %1
  %14 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 0
  %15 = load float* %14, align 4
  %16 = fadd float %15, 1.000000e+00
  store float %16, float* %14, align 4
  %17 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 1
  %18 = load double* %17, align 8
  %19 = fsub double %18, 2.000000e+00
  store double %19, double* %17, align 8
  %20 = bitcast %struct.struct1* %agg.result to i8*
  %21 = bitcast %struct.struct1* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @add_1(%struct.struct1* noalias sret %agg.result, %struct.struct1* byval align 4, %struct.struct1* byval align 4) #1 {
  %a = alloca %struct.struct1, align 8
  %b = alloca %struct.struct1, align 8
  %c = alloca %struct.struct1, align 8
  %3 = bitcast %struct.struct1* %a to i8*
  %4 = bitcast %struct.struct1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 16, i32 4, i1 false)
  %5 = bitcast %struct.struct1* %b to i8*
  %6 = bitcast %struct.struct1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 16, i32 4, i1 false)
  %7 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = getelementptr inbounds %struct.struct1* %b, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds %struct.struct1* %c, i32 0, i32 0
  store float %11, float* %12, align 4
  %13 = getelementptr inbounds %struct.struct1* %a, i32 0, i32 1
  %14 = load double* %13, align 8
  %15 = getelementptr inbounds %struct.struct1* %b, i32 0, i32 1
  %16 = load double* %15, align 8
  %17 = fadd double %14, %16
  %18 = getelementptr inbounds %struct.struct1* %c, i32 0, i32 1
  store double %17, double* %18, align 8
  %19 = bitcast %struct.struct1* %agg.result to i8*
  %20 = bitcast %struct.struct1* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define i64 @test_2a(%struct.struct2a* byval align 4 %a) #1 {
  %1 = alloca %struct.struct2a, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.struct2a* %a, i32 0, i32 0
  %6 = getelementptr inbounds %struct.anon.0* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = getelementptr inbounds %struct.struct2a* %a, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.1* %8, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %7, i32 %10)
  br label %12

; <label>:12                                      ; preds = %4, %0
  %13 = getelementptr inbounds %struct.struct2a* %a, i32 0, i32 0
  %14 = getelementptr inbounds %struct.anon.0* %13, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.struct2a* %a, i32 0, i32 1
  %18 = getelementptr inbounds %struct.anon.1* %17, i32 0, i32 0
  %19 = load i32* %18, align 4
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  %21 = bitcast %struct.struct2a* %1 to i8*
  %22 = bitcast %struct.struct2a* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  %23 = bitcast %struct.struct2a* %1 to i64*
  %24 = load i64* %23, align 1
  ret i64 %24
}

; Function Attrs: nounwind
define i64 @test_2b(i32 %a.0, i32 %a.1) #1 {
  %1 = alloca %struct.struct2b, align 4
  %a = alloca %struct.struct2b, align 4
  %2 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 0
  store i32 %a.0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 1
  store i32 %a.1, i32* %3, align 4
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %8, i32 %10)
  br label %12

; <label>:12                                      ; preds = %6, %0
  %13 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.struct2b* %a, i32 0, i32 1
  %17 = load i32* %16, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %16, align 4
  %19 = bitcast %struct.struct2b* %1 to i8*
  %20 = bitcast %struct.struct2b* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = bitcast %struct.struct2b* %1 to i64*
  %22 = load i64* %21, align 1
  ret i64 %22
}

; Function Attrs: nounwind
define void @test_3a(%struct.struct3a* noalias sret %agg.result, %struct.struct3a* byval align 4) #1 {
  %a = alloca %struct.struct3a, align 8
  %2 = bitcast %struct.struct3a* %a to i8*
  %3 = bitcast %struct.struct3a* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 16, i32 4, i1 false)
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds %struct.struct3a* %a, i32 0, i32 0
  %8 = getelementptr inbounds %struct.anon.2* %7, i32 0, i32 0
  %9 = load i64* %8, align 8
  %10 = getelementptr inbounds %struct.struct3a* %a, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.3* %10, i32 0, i32 0
  %12 = load i64* %11, align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i64 %9, i64 %12)
  br label %14

; <label>:14                                      ; preds = %6, %1
  %15 = getelementptr inbounds %struct.struct3a* %a, i32 0, i32 0
  %16 = getelementptr inbounds %struct.anon.2* %15, i32 0, i32 0
  %17 = load i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.struct3a* %a, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon.3* %19, i32 0, i32 0
  %21 = load i64* %20, align 8
  %22 = sub nsw i64 %21, 2
  store i64 %22, i64* %20, align 8
  %23 = bitcast %struct.struct3a* %agg.result to i8*
  %24 = bitcast %struct.struct3a* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_3b(%struct.struct3b* noalias sret %agg.result, i64 %a.0, i64 %a.1) #1 {
  %a = alloca %struct.struct3b, align 8
  %1 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  store i64 %a.0, i64* %1, align 8
  %2 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  store i64 %a.1, i64* %2, align 8
  %3 = load i32* @verbose, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  %7 = load i64* %6, align 8
  %8 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i64 %7, i64 %9)
  br label %11

; <label>:11                                      ; preds = %5, %0
  %12 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  %13 = load i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = sub nsw i64 %16, 2
  store i64 %17, i64* %15, align 8
  %18 = bitcast %struct.struct3b* %agg.result to i8*
  %19 = bitcast %struct.struct3b* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_4(%struct.struct4* noalias sret %agg.result, i32 %a.0, i32 %a.1, i32 %a.2) #1 {
  %a = alloca %struct.struct4, align 4
  %1 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 0
  store i32 %a.0, i32* %1, align 4
  %2 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 1
  store i32 %a.1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 2
  store i32 %a.2, i32* %3, align 4
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 2
  %12 = load i32* %11, align 4
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i32 %8, i32 %10, i32 %12)
  br label %14

; <label>:14                                      ; preds = %6, %0
  %15 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 0
  %16 = load i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 1
  %19 = load i32* %18, align 4
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.struct4* %a, i32 0, i32 2
  %22 = load i32* %21, align 4
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %21, align 4
  %24 = bitcast %struct.struct4* %agg.result to i8*
  %25 = bitcast %struct.struct4* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 12, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_5(%struct.struct5* noalias sret %agg.result, i32 %a.0, i32 %a.1, i32 %a.2, i32 %a.3) #1 {
  %a = alloca %struct.struct5, align 4
  %1 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 0
  store i32 %a.0, i32* %1, align 4
  %2 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 1
  store i32 %a.1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 2
  store i32 %a.2, i32* %3, align 4
  %4 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 3
  store i32 %a.3, i32* %4, align 4
  %5 = load i32* @verbose, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 0
  %9 = load i32* %8, align 4
  %10 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 2
  %13 = load i32* %12, align 4
  %14 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 3
  %15 = load i32* %14, align 4
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0), i32 %9, i32 %11, i32 %13, i32 %15)
  br label %17

; <label>:17                                      ; preds = %7, %0
  %18 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 0
  %19 = load i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 1
  %22 = load i32* %21, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 2
  %25 = load i32* %24, align 4
  %26 = add nsw i32 %25, 3
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.struct5* %a, i32 0, i32 3
  %28 = load i32* %27, align 4
  %29 = sub nsw i32 %28, 4
  store i32 %29, i32* %27, align 4
  %30 = bitcast %struct.struct5* %agg.result to i8*
  %31 = bitcast %struct.struct5* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 16, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_6(%struct.struct6* noalias sret %agg.result, %struct.struct6* byval align 4) #1 {
  %a = alloca %struct.struct6, align 8
  %2 = bitcast %struct.struct6* %a to i8*
  %3 = bitcast %struct.struct6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 24, i32 4, i1 false)
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 0
  %8 = load i64* %7, align 8
  %9 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 2
  %12 = load i64* %11, align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i64 %8, i64 %10, i64 %12)
  br label %14

; <label>:14                                      ; preds = %6, %1
  %15 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 0
  %16 = load i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = sub nsw i64 %19, 2
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds %struct.struct6* %a, i32 0, i32 2
  %22 = load i64* %21, align 8
  %23 = add nsw i64 %22, 3
  store i64 %23, i64* %21, align 8
  %24 = bitcast %struct.struct6* %agg.result to i8*
  %25 = bitcast %struct.struct6* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_7(%struct.struct7* noalias sret %agg.result, %struct.struct7* byval align 4) #1 {
  %a = alloca %struct.struct7, align 8
  %2 = bitcast %struct.struct7* %a to i8*
  %3 = bitcast %struct.struct7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 16, i32 4, i1 false)
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds %struct.struct7* %a, i32 0, i32 0
  %8 = load i64* %7, align 8
  %9 = getelementptr inbounds %struct.struct7* %a, i32 0, i32 1
  %10 = load i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i64 %8, i32 %11)
  br label %13

; <label>:13                                      ; preds = %6, %1
  %14 = getelementptr inbounds %struct.struct7* %a, i32 0, i32 0
  %15 = load i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.struct7* %a, i32 0, i32 1
  %18 = load i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 2
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  %22 = bitcast %struct.struct7* %agg.result to i8*
  %23 = bitcast %struct.struct7* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define i64 @test_8(%struct.struct8* byval align 4 %a) #1 {
  %1 = alloca %struct.struct8, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.struct8* %a, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds %struct.struct8* %a, i32 0, i32 1
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 %6, i32 %9)
  br label %11

; <label>:11                                      ; preds = %4, %0
  %12 = getelementptr inbounds %struct.struct8* %a, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.struct8* %a, i32 0, i32 1
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = sub nsw i32 %17, 2
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %15, align 1
  %20 = bitcast %struct.struct8* %1 to i8*
  %21 = bitcast %struct.struct8* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = bitcast %struct.struct8* %1 to i64*
  %23 = load i64* %22, align 1
  ret i64 %23
}

; Function Attrs: nounwind
define i64 @test_9(%struct.struct9* byval align 4 %a) #1 {
  %1 = alloca %struct.struct9, align 4
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.struct9* %a, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds %struct.struct9* %a, i32 0, i32 1
  %8 = load i16* %7, align 2
  %9 = sext i16 %8 to i32
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 %6, i32 %9)
  br label %11

; <label>:11                                      ; preds = %4, %0
  %12 = getelementptr inbounds %struct.struct9* %a, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.struct9* %a, i32 0, i32 1
  %16 = load i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = sub nsw i32 %17, 2
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %15, align 2
  %20 = bitcast %struct.struct9* %1 to i8*
  %21 = bitcast %struct.struct9* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = bitcast %struct.struct9* %1 to i64*
  %23 = load i64* %22, align 1
  ret i64 %23
}

; Function Attrs: nounwind
define i32 @test_10(%struct.struct10* byval align 4 %a) #1 {
  %1 = alloca %struct.struct10, align 1
  %2 = load i32* @verbose, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 0
  %6 = load i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 1
  %9 = load i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 2
  %12 = load i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 3
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0), i32 %7, i32 %10, i32 %13, i32 %16)
  br label %18

; <label>:18                                      ; preds = %4, %0
  %19 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 0
  %20 = load i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 1
  %25 = load i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 2
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  %29 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 2
  %30 = load i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, 3
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = getelementptr inbounds %struct.struct10* %a, i32 0, i32 3
  %35 = load i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = bitcast %struct.struct10* %1 to i8*
  %40 = bitcast %struct.struct10* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 4, i32 1, i1 false)
  %41 = bitcast %struct.struct10* %1 to i32*
  %42 = load i32* %41, align 1
  ret i32 %42
}

; Function Attrs: nounwind
define i64 @test_14(float %a.0, float %a.1) #1 {
  %1 = alloca %struct.struct14, align 4
  %a = alloca %struct.struct14, align 4
  %2 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 0
  store float %a.0, float* %2, align 4
  %3 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 1
  store float %a.1, float* %3, align 4
  %4 = load i32* @verbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fpext float %11 to double
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %9, double %12)
  br label %14

; <label>:14                                      ; preds = %6, %0
  %15 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 0
  %16 = load float* %15, align 4
  %17 = fadd float %16, 1.000000e+00
  store float %17, float* %15, align 4
  %18 = getelementptr inbounds %struct.struct14* %a, i32 0, i32 1
  %19 = load float* %18, align 4
  %20 = fsub float %19, 2.000000e+00
  store float %20, float* %18, align 4
  %21 = bitcast %struct.struct14* %1 to i8*
  %22 = bitcast %struct.struct14* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  %23 = bitcast %struct.struct14* %1 to i64*
  %24 = load i64* %23, align 1
  ret i64 %24
}

; Function Attrs: nounwind
define void @test_15(%struct.struct15* noalias sret %agg.result, double %a.0, double %a.1) #1 {
  %a = alloca %struct.struct15, align 8
  %1 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 0
  store double %a.0, double* %1, align 8
  %2 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 1
  store double %a.1, double* %2, align 8
  %3 = load i32* @verbose, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 0
  %7 = load double* %6, align 8
  %8 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 1
  %9 = load double* %8, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), double %7, double %9)
  br label %11

; <label>:11                                      ; preds = %5, %0
  %12 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 0
  %13 = load double* %12, align 8
  %14 = fadd double %13, 1.000000e+00
  store double %14, double* %12, align 8
  %15 = getelementptr inbounds %struct.struct15* %a, i32 0, i32 1
  %16 = load double* %15, align 8
  %17 = fsub double %16, 2.000000e+00
  store double %17, double* %15, align 8
  %18 = bitcast %struct.struct15* %agg.result to i8*
  %19 = bitcast %struct.struct15* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_128(%struct.struct3b* noalias sret %agg.result, i64 %a.0, i64 %a.1) #1 {
  %a = alloca %struct.struct3b, align 8
  %1 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  store i64 %a.0, i64* %1, align 8
  %2 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  store i64 %a.1, i64* %2, align 8
  %3 = load i32* @verbose, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  %7 = load i64* %6, align 8
  %8 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  %9 = load i64* %8, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str9, i32 0, i32 0), i64 %7, i64 %9)
  br label %11

; <label>:11                                      ; preds = %5, %0
  %12 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  %13 = load i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 0
  %16 = load i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %11
  %19 = getelementptr inbounds %struct.struct3b* %a, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

; <label>:22                                      ; preds = %18, %11
  %23 = bitcast %struct.struct3b* %agg.result to i8*
  %24 = bitcast %struct.struct3b* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
define void @test_big(%struct.struct_big* noalias sret %agg.result, %struct.struct_big* byval align 4 %a) #1 {
  %1 = load i32* @verbose, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %14

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 2
  %11 = load i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str10, i32 0, i32 0), i64 %6, i64 %9, i32 %12)
  br label %14

; <label>:14                                      ; preds = %3, %0
  %15 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 0
  %16 = load i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 1
  %19 = load i32* %18, align 4
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.struct_big* %a, i32 0, i32 2
  %22 = load i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = sub nsw i32 %23, 65
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = bitcast %struct.struct_big* %agg.result to i8*
  %27 = bitcast %struct.struct_big* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 12, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
define i32 @main() #1 {
  %1 = alloca i32, align 4
  %a = alloca %struct.struct1, align 8
  %2 = alloca %struct.struct1, align 8
  store i32 0, i32* %1
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str11, i32 0, i32 0))
  store volatile i32 3, i32* @a, align 4
  store volatile i32 259, i32* @b, align 4
  store i32 (i8)* @testUcharX, i32 (i8)** @fptr, align 4
  %4 = load i32 (i8)** @fptr, align 4
  %5 = ptrtoint i32 (i8)* %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i32 (i8)* null, i32 (i8)** @fptr, align 4
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load volatile i32* @a, align 4
  %11 = getelementptr inbounds [300 x i32]* @xs, i32 0, i32 %10
  %12 = load i32* %11, align 4
  %13 = load volatile i32* @b, align 4
  %14 = getelementptr inbounds [300 x i32]* @xs, i32 0, i32 %13
  %15 = load i32* %14, align 4
  %16 = load volatile i32* @a, align 4
  %17 = trunc i32 %16 to i8
  %18 = call i32 @testUcharX(i8 zeroext %17)
  %19 = load volatile i32* @b, align 4
  %20 = load volatile i32* @b, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i32 @testUcharX(i8 zeroext %21)
  %23 = load i32 (i8)** @fptr, align 4
  %24 = load volatile i32* @a, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i32 %23(i8 zeroext %25)
  %27 = load i32 (i8)** @fptr, align 4
  %28 = load volatile i32* @b, align 4
  %29 = trunc i32 %28 to i8
  %30 = call i32 %27(i8 zeroext %29)
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([112 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i32 %12, i32 %15, i32 %18, i32 %19, i32 %22, i32 %26, i32 %30)
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str14, i32 0, i32 0))
  %33 = bitcast %struct.struct1* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* bitcast (%struct.struct1* @main.a to i8*), i32 16, i32 8, i1 false)
  call void @test_1(%struct.struct1* sret %2, %struct.struct1* byval align 4 %a)
  %34 = bitcast %struct.struct1* %a to i8*
  %35 = bitcast %struct.struct1* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 16, i32 8, i1 false)
  %36 = load i32* %1
  ret i32 %36
}

; Function Attrs: nounwind
define void @set_verbose(i32 %level) #1 {
  %1 = alloca i32, align 4
  store i32 %level, i32* %1, align 4
  %2 = load i32* %1, align 4
  store i32 %2, i32* @verbose, align 4
  ret void
}

; Function Attrs: nounwind
define i8* @test_echo_p(i8* %p) #1 {
  %1 = alloca i8*, align 4
  store i8* %p, i8** %1, align 4
  %2 = load i8** %1, align 4
  ret i8* %2
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
